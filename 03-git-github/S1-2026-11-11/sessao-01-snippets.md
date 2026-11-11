# Sessão 1 · Git: o controlo de versões

**Git e GitHub · joaogoncalves.net** · os comandos para seguir a sessão

Hoje trabalhamos só no nosso computador: não há nada para descarregar do GitHub. Escrevam vocês os comandos, porque copiar não conta. Usem esta folha só se encravarem.
Os números dos slides são os da versão FLAG (entre parênteses, os da versão própria).

---

## Antes de começar · slide 10 (própria 8)

Abram o terminal e escrevam:

```bash
git --version
# git version 2.51.0   (qualquer 2.x serve)
```

- **Mac:** a aplicação **Terminal**.
- **Windows:** o **Git Bash**, que vem com o Git. Se ainda não instalaram o Git, instalamos na parte 2.
- **No VS Code:** **Ctrl+`** (ou o menu Terminal › New Terminal).

---

## Parte 1 · Controlo de versões

### O problema · slide 12 (própria 10)

`receitas-final.html`, `receitas-final-v2.html`, `receitas-final-AGORA-SIM.html`… Qual é a boa? O que mudou? E se forem três pessoas a trabalhar no mesmo site?

### O que é · slide 13 (própria 11)

Um **controlo de versões** (VCS, *version control system*) guarda o **histórico** do projeto. Em vez de só a última cópia, guarda cada versão. Cada versão guardada é um **commit**: um ponto de gravação, como nos jogos.

Para que serve:
- guardar cada versão de todos os ficheiros, com quem a fez, quando e porquê;
- voltar atrás;
- comparar versões;
- trabalhar em equipa.

### As filosofias · slide 14 (própria 12)

| | Onde está o histórico | Exemplos |
|---|---|---|
| **Local** | só no meu computador | RCS |
| **Centralizado** | num servidor (cada um tem só a última versão; sem servidor, não há commits) | CVS, Subversion (SVN) |
| **Distribuído** | **em todos os computadores**, completo (o servidor é só mais uma cópia) | **Git**, Mercurial |

### O Git · slide 15 (própria 13)

- Criado em **2005** por **Linus Torvalds**, o criador do Linux.
- **Distribuído** (rápido e offline), **seguro** (cada commit tem um *hash*), **branches** baratos e **gratuito**.
- **Git ≠ GitHub.** O Git é o programa, no vosso computador. O GitHub é um site que guarda cópias de repositórios Git na nuvem e tem as ferramentas para trabalhar em equipa (é a sessão 3).

---

## Parte 2 · Instalar e configurar

### O terminal em 5 comandos · slide 17 (própria 15)

```bash
pwd              # onde estou?
ls               # o que há aqui? (no cmd do Windows é dir; no Git Bash é ls)
cd flag-frontend # entrar numa pasta
cd ..            # voltar à pasta de cima
mkdir s01        # criar uma pasta
clear            # limpar o ecrã
```

Dicas: a tecla **Tab** completa os nomes, a seta **↑** repete o último comando e **Ctrl+C** cancela.

**A pasta de hoje:** a vossa pasta de trabalho do curso, `flag-frontend`, com uma subpasta por sessão. Toda a gente escreve o mesmo:

```bash
cd ~/Documents                              # no Windows, de preferência fora do OneDrive
mkdir -p flag-frontend/03-git-github/s01    # -p: cria as pastas que faltarem (e não estraga as que já existem)
cd flag-frontend/03-git-github/s01
pwd                                         # .../flag-frontend/03-git-github/s01
```

Não confundam com a pasta dos materiais que descarregam do GitHub (`flag-frontend-2026`): essa é só para ler e copiar.

⚠️ A `flag-frontend` e a `s01` são só pastas para arrumar: **nunca levam `git init`**. Cada projeto lá dentro (o livro, as receitas) é que é um repositório.

### Instalar · slide 18 (própria 16)

- **Windows:** https://git-scm.com/downloads › Windows. No instalador, deixem tudo como está, **exceto**:
  - *Choosing the default editor* → **Use Visual Studio Code as Git's default editor**;
  - *Adjusting the name of the initial branch* → **Override… → `main`**.
- **Mac:** escrevam `git --version`. Se o Git não estiver instalado, o Mac propõe instalar as *Command Line Tools*: aceitem. Ou, com o Homebrew: `brew install git`.
- **Linux:** `sudo apt install git`.

Depois de instalar, **fechem e voltem a abrir o terminal e o VS Code**. Para confirmar: `git --version`.

### Configurar · slides 19–20 (própria 17–18)

Uma vez por computador, cada um com os seus dados:

```bash
git config --global user.name "Ana Silva"
git config --global user.email "ana@exemplo.pt"
git config --global init.defaultBranch main
git config --global core.editor "code --wait"

git config --list          # para confirmar
```

- O nome e o email ficam em **todos** os commits. Usem o email que vão usar no GitHub.
- `--global` vale para todos os repositórios deste computador.
- Se aparecer `code: command not found` (Mac): no VS Code, **Cmd+Shift+P** › *Shell Command: Install 'code' command in PATH*.

---

## Parte 3 · O primeiro repositório

### As três áreas · slide 22 (própria 20)

```text
 working directory   ──git add──▶   staging area   ──git commit──▶   repositório (.git)
 (os ficheiros)                     (a "caixa" do                    (o histórico:
                                     próximo commit)                  os commits)
```

Os três estados de um ficheiro: **modificado** → **preparado** (*staged*) → **guardado** (*committed*).

### Os comandos · slide 23 (própria 21)

```bash
git init                     # uma vez, na pasta do projeto: cria a pasta .git
git status                   # o que mudou? o que está na caixa?  (na dúvida, git status)
git add livro.txt            # pôr um ficheiro na caixa
git add .                    # pôr tudo o que mudou
git commit -m "Cria o livro" # fechar a caixa: um commit com uma mensagem
git log                      # o histórico completo (sair com q)
git log --oneline            # um commit por linha
```

⚠️ **Nunca façam `git init` dentro de uma pasta que já é um repositório** (nem na pasta pessoal inteira).

### O livro, juntos · slide 24 (própria 22)

```bash
# 1 · o repositório
# na pasta de hoje: flag-frontend/03-git-github/s01
mkdir livro
cd livro
git init
code .
```

**`livro.txt`**
```text
O MEU PRIMEIRO LIVRO
--------------------

Era uma vez alguém que queria ser developer...
```

```bash
# 2 · o primeiro commit
git status                     # Untracked files: livro.txt
git add livro.txt
git status                     # Changes to be committed
git commit -m "Cria o livro"
```

**`prefacio.txt`**
```text
Este livro conta como se aprende Git, um commit de cada vez.
```

```bash
# 3 · o prefácio
git status
git add prefacio.txt
git commit -m "Acrescenta o prefácio"
```

**`capitulos/capitulo1.txt`**
```text
CAPÍTULO 1

Era uma vez alguém.
```

```bash
# 4 · o capítulo 1 (uma pasta vazia não entra no Git: só aparece quando tem um ficheiro)
git add .
git commit -m "Acrescenta o capítulo 1"
```

**5 · mudar um ficheiro que o Git já guardou.** No VS Code, abram o `livro.txt`, mudem a primeira linha e gravem (Cmd+S / Ctrl+S):

```text
O MEU PRIMEIRO LIVRO DE GIT
```

O `git status` já não diz *Untracked* (ficheiro novo): diz **modified** (o Git conhece-o e viu que mudou). No VS Code, o U passa a M.

```bash
# 5 · guardar a mudança
git status                     # modified: livro.txt
git add livro.txt
git commit -m "Muda o título do livro"

# 6 · o histórico
git log                        # o hash inteiro, o autor, a data (sair com q)
git log --oneline
```

### Resumo · slide 25 (própria 23)

```text
b4739da (HEAD -> main) Muda o título do livro
823da09 Acrescenta o capítulo 1
6402be1 Acrescenta o prefácio
5c23e8e Cria o livro
```

Os vossos hashes vão ser outros, e é normal: dependem do conteúdo, do autor e da hora. O ritmo é sempre o mesmo: **mudar → `git status` → `git add` → `git commit`**.

---

## Parte 4 · Ver e desfazer

### Ver e desfazer · slide 27 (própria 25)

```bash
git diff                         # o que mudou e ainda NÃO está na caixa
git diff --staged                # o que está na caixa (o próximo commit)

git restore ficheiro             # deitar fora as mudanças: o ficheiro volta ao último commit (cuidado: não há Ctrl+Z)
git restore --staged ficheiro    # tirar da caixa (as mudanças ficam no ficheiro)

git rm ficheiro                  # apagar o ficheiro e dizer ao Git
git mv antigo novo               # mudar o nome e dizer ao Git
```

Ler um diff: as linhas com **`-`** saíram e as linhas com **`+`** entraram.

### Boas mensagens · slide 28 (própria 26)

| Assim não | Assim sim |
|---|---|
| alteração | Acrescenta o prefácio |
| teste | Corrige o link do menu para as sobremesas |
| ultima | Muda as cores do cabeçalho |
| mudanças várias no site todo | Apaga as notas de rascunho |

- A mensagem é curta e no presente: completa a frase "este commit…".
- Cada commit é uma ideia.
- Escrevam a pensar em quem vem depois (que é quase sempre o próprio).

### No livro: ver, desfazer, apagar · slide 29 (própria 27)

```bash
# 1 · mudar uma frase no capitulos/capitulo1.txt e ver
git diff
#  -Era uma vez alguém.
#  +Era uma vez alguém que queria ser developer.

# 2 · na caixa, o diff fica vazio: é o --staged que mostra
git add .
git diff
git diff --staged
git commit -m "Continua o capítulo 1"

# 3 · estragar o prefacio.txt (apagar tudo e gravar) e desfazer
git status                       # modified: prefacio.txt
git restore prefacio.txt         # voltou!

# 4 · um ficheiro de notas, e apagá-lo
#     (criar notas.txt com uma linha qualquer)
git add notas.txt
git commit -m "Acrescenta as notas"
git rm notas.txt
git commit -m "Apaga as notas"

git log --oneline                # sete commits
```

### Exercício 3.1 · o site das receitas no Git · sozinhos · slide 30 (própria 28)

O enunciado está em `03-git-github/exercicios/ex-3.1-receitas-no-git.md`. Em resumo:

1. Copiem o vosso site das receitas (o do módulo 2) para a pasta de hoje, `flag-frontend/03-git-github/s01/receitas`. Se não o tiverem, usem o ponto de partida do GitHub: `03-git-github/s01/receitas/`.
2. Ponham o site no Git: o repositório e o primeiro commit, com o site todo.
3. Façam 3 mudanças pequenas, cada uma no seu commit e com uma boa mensagem.
4. Estraguem o `index.html` de propósito, vejam o estrago com o diff e desfaçam-no.
5. Apaguem um ficheiro que já não seja preciso com o Git, por exemplo o `notas.txt` do ponto de partida, e façam o commit. Também podem mudar o nome a um ficheiro com o Git.
6. No fim, colem o vosso `git log --oneline` no chat (pelo menos 5 commits).

### Solução 3.1 · slide 31 (própria 29)

```bash
cd receitas                  # dentro da s01
git init
git add .
git commit -m "Primeira versão do site das receitas"

# 3 mudanças, um commit cada (por exemplo)
git add css/estilos.css
git commit -m "Muda a cor do cabeçalho"
git add index.html
git commit -m "Acrescenta a receita de bacalhau à lista"
git add receitas/posset-de-limao.html
git commit -m "Corrige o tempo de preparação do posset"

# o estrago: ver e desfazer
git diff index.html
git restore index.html

# apagar (ou mudar o nome: git mv antigo.css novo.css)
git rm notas.txt
git commit -m "Apaga as notas de rascunho"

git log --oneline
```

Os nomes dos ficheiros e as mensagens são só exemplos: os vossos são outros. O que interessa é o ritmo status → add → commit, ver o diff antes do restore e escrever mensagens que dizem o que mudou.

---

## Resumo · slide 32 (própria 30)

| Quando | Comando |
|---|---|
| uma vez por computador | `git config --global user.name / user.email / init.defaultBranch / core.editor` |
| uma vez por projeto | `git init` |
| sempre | mudar → `git status` → `git add` → `git commit -m "…"` |
| ver | `git log --oneline` · `git diff` · `git diff --staged` |
| desfazer (antes do commit) | `git restore` · `git restore --staged` |
| apagar / mudar o nome | `git rm` · `git mv` |

---

## Até 6.ª feira · slide 33 (própria 31)

- **Sessão 2 (6.ª, 13 nov):** branches, merge, conflitos e o `.gitignore`. Guardem a pasta do livro, porque continuamos nele.
- **Para casa (opcional):** o **3.2**, a galeria responsiva (19.1) no Git, com um commit por passo (`03-git-github/exercicios/ex-3.2-galeria-no-git.md`). Quem não fez o módulo 2 usa a galeria feita (`02-html-css/solucoes/19-responsive/sol-19.1-galeria-responsiva/`), como explica o enunciado. Quem não acabou o 3.1, acaba-o.
- **Para treinar:** Learn Git Branching, https://learngitbranching.js.org/?locale=pt_BR

---

## Links

- Git, downloads: https://git-scm.com/downloads
- Pro Git, o livro oficial (gratuito, também em português do Brasil): https://git-scm.com/book/pt-br/v2
- Cábula oficial do GitHub (PDF): https://education.github.com/git-cheat-sheet-education.pdf
- Learn Git Branching: https://learngitbranching.js.org/?locale=pt_BR
- GitHub Docs, configurar o Git: https://docs.github.com/pt/get-started/getting-started-with-git/set-up-git
- VS Code, o Git no editor (Source Control): https://code.visualstudio.com/docs/sourcecontrol/overview
- Oh Shit, Git!?!, para quando as coisas correm mal: https://ohshitgit.com/
