# Tutorial · Duas contas do GitHub no mesmo computador

> Módulo 3 · Git e GitHub · sessão 3. Para quem tem uma conta **pessoal** (a do curso) e outra **do trabalho**. Uns 5 minutos, uma vez por computador.

Há dois problemas diferentes, e cada um tem a sua solução:

1. **Quem assina os commits** (o `user.name` e o `user.email`): se o `--global` tem o email do trabalho, os commits do curso aparecem no GitHub sem a vossa cara.
2. **Quem faz o push** (a credencial): se o computador já guardou a conta do trabalho, o `git push` para o vosso repositório pessoal falha com **403**.

## 1 · Os commits: o email pessoal só na pasta do curso

Não mexam no `--global` (fica o do trabalho). Com um `includeIf`, o Git usa outra configuração **só dentro de uma pasta**:

```bash
git config --global includeIf."gitdir:~/Documents/flag-frontend/".path ~/.gitconfig-flag
git config --file ~/.gitconfig-flag user.name "O Vosso Nome"
git config --file ~/.gitconfig-flag user.email "o.email@da.conta.pessoal"
```

- O caminho é o da **vossa** `flag-frontend` e tem de **acabar em `/`**: assim vale para todos os repositórios lá dentro (o livro, as receitas, o `flag-git-2026`…).
- **Windows** (Git Bash): usem `gitdir/i:` em vez de `gitdir:` (o Windows não distingue maiúsculas de minúsculas nos caminhos).

**Confirmar**, dentro de um repositório do curso (o livro, por exemplo):

```bash
cd ~/Documents/flag-frontend/03-git-github/s02/livro
git config --show-origin user.email
# file:/Users/vocês/.gitconfig-flag    o.email@da.conta.pessoal
```

Fora de um repositório aparece o global: é normal, o `includeIf` só funciona **dentro** de um repositório.

> O email tem de estar na vossa conta: GitHub › Settings › **Emails**. Se não o quiserem público, usem o `…@users.noreply.github.com` que lá aparece.

## 2 · O push: a conta certa

### No browser, antes do *Authorize*

No primeiro push, o VS Code (ou o Git Credential Manager) abre o browser. O GitHub autoriza **a conta que estiver ativa** nesse momento. Antes de carregar em **Authorize**, confirmem a conta no canto superior direito. Se for a do trabalho, mudem de conta (o avatar › *Switch account*) e só depois autorizem.

### O erro

```
remote: Permission to <username>/livro.git denied to <conta-do-trabalho>.
fatal: unable to access 'https://github.com/<username>/livro.git/': The requested URL returned error: 403
```

O computador enviou a credencial da outra conta.

### A solução: o username no endereço

```bash
git remote set-url origin https://<username>@github.com/<username>/livro.git
git push -u origin main
```

Com o username no endereço, a credencial fica guardada **por conta**, e não só por `github.com`: o Git pede a conta certa uma vez e daí em diante usa-a sempre para este repositório. Nos repositórios novos, já podem fazer o `remote add` assim:

```bash
git remote add origin https://<username>@github.com/<username>/receitas.git
```

### Se ainda assim insistir na conta errada

- **Mac:** abram o **Porta-chaves** (Keychain Access), procurem `github.com` e apaguem as entradas de tipo "palavra-passe da Internet". No próximo push volta a pedir.
- **Windows:** Painel de Controlo › **Gestor de Credenciais** › Credenciais do Windows › apaguem as `git:https://github.com`. O Git Credential Manager também deixa escolher a conta quando há mais do que uma.
- **No VS Code:** o ícone de contas (em baixo, à esquerda) mostra com que conta do GitHub está ligado; *Sign out* e voltar a entrar com a certa.

## A alternativa: SSH

Quem já usa SSH no trabalho pode ter uma chave para cada conta: está no [tutorial do SSH](tutorial-ssh-github.md). Para o curso, o HTTPS com o username no endereço chega.

## Para saber mais

- Git · `includeIf` (conditional includes): https://git-scm.com/docs/git-config#_conditional_includes
- GitHub Docs · Managing multiple accounts: https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-your-personal-account/managing-multiple-accounts
- GitHub Docs · Setting your commit email address: https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-email-preferences/setting-your-commit-email-address
