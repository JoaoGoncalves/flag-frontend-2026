# Tutorial · Ligar o Git ao GitHub com SSH

> Módulo 3 · Git e GitHub · extra da sessão 3. Uns 10 minutos, uma vez por computador.

Na sessão 3 entrámos no GitHub com **HTTPS**: no primeiro `push`, o VS Code (ou o Git Credential Manager) abre o browser e pede autorização. Funciona, e chega para o curso.

O **SSH** é a alternativa que a maior parte dos programadores usa no dia a dia: geram-se **duas chaves** no vosso computador, uma **privada** (fica no computador, nunca sai de lá) e uma **pública** (vai para o GitHub). Daí em diante, o GitHub reconhece o computador sozinho: sem browser, sem tokens, sem passwords.

| | HTTPS (o que usámos) | SSH |
|---|---|---|
| O endereço do repositório | `https://github.com/<username>/livro.git` | `git@github.com:<username>/livro.git` |
| Como entra | o browser autoriza, o computador guarda | a chave privada do computador |
| Configurar | nada (o primeiro push trata disso) | uma vez, com os passos abaixo |

Os dois podem conviver: cada repositório usa o do seu endereço (`git remote -v` mostra-o).

**Onde escrever os comandos:** no **Mac**, no Terminal (ou no terminal do VS Code). No **Windows**, no **Git Bash** (instalado com o Git), não no PowerShell nem na Linha de comandos.

---

## 1 · Já tenho chaves?

```bash
ls -al ~/.ssh
```

Se aparecer um `id_ed25519` e um `id_ed25519.pub`, **já têm um par de chaves**: saltem para o passo 3. Se a pasta não existir ou estiver vazia, sigam para o passo 2.

## 2 · Gerar o par de chaves

Com o email da vossa conta do GitHub:

```bash
ssh-keygen -t ed25519 -C "o.vosso@email.pt"
```

O `ssh-keygen` faz três perguntas:

1. **Onde guardar** (`Enter file in which to save the key`): Enter, para aceitar `~/.ssh/id_ed25519`.
2. **A passphrase** (`Enter passphrase`): uma frase que protege a chave privada. É opcional (Enter deixa sem), mas é recomendada: se alguém copiar o ficheiro, não o consegue usar sem ela. No passo 3, o computador passa a lembrar-se dela.
3. **Repetir a passphrase**.

Ficam dois ficheiros em `~/.ssh/`:

- `id_ed25519` · a **privada**. **Nunca** se partilha, envia ou põe num repositório.
- `id_ed25519.pub` · a **pública**. É esta que vai para o GitHub.

## 3 · Guardar a chave no agente (para não escrever a passphrase sempre)

O `ssh-agent` guarda a chave em memória, já desbloqueada.

**Mac:**

```bash
eval "$(ssh-agent -s)"
```

Criem (ou abram) o ficheiro `~/.ssh/config` e ponham lá isto:

```text
Host github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
```

(Para abrir o ficheiro: `touch ~/.ssh/config` e `open -e ~/.ssh/config`.) Depois:

```bash
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
```

A passphrase fica guardada no Porta-chaves (Keychain) do Mac.

**Windows (Git Bash):**

```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

Se não puseram passphrase no passo 2, podem saltar este passo.

## 4 · Dar a chave pública ao GitHub

Copiem a chave **pública** (o `.pub`!):

```bash
# Mac
pbcopy < ~/.ssh/id_ed25519.pub

# Windows (Git Bash)
clip < ~/.ssh/id_ed25519.pub
```

No GitHub: a vossa foto (canto de cima, à direita) › **Settings** › **SSH and GPG keys** › **New SSH key**.

- **Title:** o nome do computador (ex.: `MacBook do curso`). Uma chave por computador.
- **Key type:** Authentication Key.
- **Key:** colar (Ctrl+V / Cmd+V). Começa por `ssh-ed25519`.
- **Add SSH key** (o GitHub pode pedir a password ou o 2FA).

## 5 · Testar

```bash
ssh -T git@github.com
```

Da primeira vez, o computador pergunta se confia no GitHub:

```text
The authenticity of host 'github.com' can't be established.
ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
Are you sure you want to continue connecting (yes/no/[fingerprint])?
```

Escrevam **`yes`** (por extenso) e Enter. A resposta certa é:

```text
Hi <username>! You've successfully authenticated, but GitHub does not provide shell access.
```

O "does not provide shell access" é normal: quer dizer que está tudo bem.

## 6 · Usar o SSH nos repositórios

**Num repositório que já tem um remoto HTTPS** (o livro e as receitas da sessão 3):

```bash
git remote -v                                                   # https://github.com/…
git remote set-url origin git@github.com:<username>/livro.git   # trocar para SSH
git remote -v                                                   # git@github.com:…
git push                                                        # já não abre o browser
```

**Para clonar com SSH:** no GitHub, botão verde **Code** › separador **SSH** › copiar o endereço:

```bash
git clone git@github.com:<username>/receitas.git
```

O repositório do curso (`flag-frontend-2026`) pode continuar em HTTPS: só fazem `git pull`, e um repositório público não precisa de autenticação para isso.

---

## Problemas comuns

| A mensagem | O que quer dizer | O que fazer |
|---|---|---|
| `Permission denied (publickey)` | O GitHub não reconhece a chave | Confirmar o passo 4 (foi o `.pub`?) e o passo 3 (`ssh-add -l` lista as chaves no agente) |
| `Could not open a connection to your authentication agent` | O agente não está a correr | `eval "$(ssh-agent -s)"` e repetir o `ssh-add` |
| `ssh: connect to host github.com port 22: Connection timed out` | A rede (empresa, hotel) bloqueia a porta 22 | Usar a porta 443: `ssh -T -p 443 git@ssh.github.com`. Se funcionar, ponham no `~/.ssh/config`: `Hostname ssh.github.com` e `Port 443` dentro do bloco `Host github.com` |
| `Host key verification failed` | Responderam `no` (ou só Enter) à pergunta do passo 5 | Repetir o `ssh -T git@github.com` e escrever `yes` |
| O `git push` ainda abre o browser | O remoto ainda é HTTPS | `git remote -v` e o `set-url` do passo 6 |

## Regras de segurança

- A chave **privada** (`id_ed25519`, sem `.pub`) **nunca** sai do computador: nem por email, nem no Teams, nem num repositório.
- Uma chave por computador. Se perderem ou venderem o computador: GitHub › Settings › SSH and GPG keys › **Delete** dessa chave.
- Usem passphrase: com o agente (passo 3), só a escrevem uma vez.

## Para saber mais

- GitHub Docs · Connecting to GitHub with SSH: https://docs.github.com/en/authentication/connecting-to-github-with-ssh
- GitHub Docs · Generating a new SSH key and adding it to the ssh-agent: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
- GitHub Docs · Using SSH over the HTTPS port: https://docs.github.com/en/authentication/troubleshooting-ssh/using-ssh-over-the-https-port
