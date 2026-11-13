# Sessão 2 · Branches e merge

**Git e GitHub · joaogoncalves.net** · os comandos para seguir a sessão

Hoje continuamos no livro da 4.ª e no site das receitas (o repositório do 3.1). Tudo no nosso computador. Escrevam vocês os comandos, porque copiar não conta. Usem esta folha só se encravarem.
Os números dos slides são os da versão FLAG (entre parênteses, os da versão própria).

**Como ler esta folha.** Cada secção diz o que fazemos com ela:

- 📖 **TEORIA**: os comandos para consulta. **Não é para escrever ainda.**
- ✍️ **STOP · ESCREVER JUNTOS**: aqui escrevemos todos, passo a passo. Eu partilho o ecrã.
- 📋 **RESUMO**: o que acabámos de escrever.
- 🧑‍💻 **SOZINHOS**: o vosso exercício. ✅ **SOLUÇÃO**: faço-a convosco a seguir.

A ordem é sempre: teoria → escrever juntos → resumo → (às vezes) exercício sozinhos → solução.
- Parte 1 · Branches: teoria 6 e 7 → **juntos 8** → resumo 9
- Parte 2 · Merge: teoria 11 → **juntos 12** → resumo 13 → **4.1 sozinhos 14** → solução 15
- Parte 3 · Conflitos: teoria 17 → **juntos 18** → resumo 19 → **4.2 sozinhos 20** → solução 21
- Parte 4 · .gitignore e voltar atrás: teoria 23 e 24 → **juntos 25** → boas práticas 26 → **4.3 para casa 27**


---

## Antes de começar · slide 4 (própria 2)

No terminal, na pasta do **livro** da 4.ª (a pasta onde fizeram o `git init`):

```bash
cd …/livro              # o vosso caminho: pode ser a s01 ou a s01/livro
git status              # nothing to commit, working tree clean
git log --oneline       # os commits da 4.ª
```

- O `git status` não está limpo? `git add .` e `git commit -m "Acaba o livro da 4.ª"`.
- Não têm o livro? Descarreguem o **`03-git-github/s01/livro-s01.zip`**. No GitHub, abram o ficheiro e carreguem em **Download raw file** (também vem no Download ZIP do repositório). Descompactem-no na vossa `flag-frontend/03-git-github/s01/`: a pasta `livro` já traz o repositório e o histórico da 4.ª (os 7 commits, com o meu nome).

```bash
cd livro
git log --oneline       # os 7 commits da 4.ª
```

---

## Parte 1 · Branches

### 📖 TEORIA · O que é um branch · slide 6 (própria 4)

> Só para consulta: **não é para escrever agora**. Escrevemos juntos no slide 8.

- Um **branch** é uma linha paralela do projeto: parte de um commit e segue o seu caminho. O `main` fica como estava.
- Por dentro, é só uma **etiqueta** que aponta para um commit. Criar um é instantâneo.
- O **HEAD** é o "estou aqui": aponta para o branch atual. Os commits novos entram nesse branch.

### 📖 TEORIA · Os comandos · slide 7 (própria 5)

> Só para consulta: **não é para escrever agora**. Os comandos ficam aqui para os terem à mão; escrevemos juntos no slide 8.

```bash
git branch                          # lista os branches (o * marca onde estou)
git switch -c rodape                # cria o branch rodape e muda para ele
git switch main                     # muda de branch (os ficheiros da pasta mudam também!)
git log --oneline --graph --all     # o histórico de todos os branches, com o desenho
git branch -d rodape                # apaga um branch (depois de o juntar ao main)
```

Nos tutoriais antigos: `git checkout -b rodape` = `git switch -c rodape`, e `git checkout main` = `git switch main`.

⚠️ **Commit antes de mudar de branch.** O `git status` tem de estar limpo.

### ✍️ STOP · ESCREVER JUNTOS · O rodapé, juntos · slide 8 (própria 6)

> **Agora escrevemos todos**, passo a passo, no livro. Eu partilho o ecrã.

```bash
# 1 · onde estou
git status
git branch                          # * main

# 2 · o branch novo
git switch -c rodape
git branch                          #   main
                                    # * rodape
```

**3 ·** No fim do `livro.txt`, uma linha nova, e gravar:

```text
© 2026 · o vosso nome
```

```bash
git add livro.txt
git commit -m "Acrescenta o rodapé"

# 4 · o desenho: o rodape vai à frente do main (a linha é direita: o main não andou)
git log --oneline --graph --all

# 5 · a magia: o rodapé desaparece e volta (olhem para o livro.txt no VS Code)
git switch main
git switch rodape

# 6 · de volta ao main
git switch main
git log --oneline --graph --all
```

### 📋 RESUMO · Resumo · slide 9 (própria 7)

> O que acabámos de escrever no slide 8.

```bash
git switch -c rodape
git add livro.txt
git commit -m "Acrescenta o rodapé"
git log --oneline --graph --all
git switch main
```

---

## Parte 2 · Merge

### 📖 TEORIA · Os dois casos · slide 11 (própria 9)

> Só para consulta: **não é para escrever agora**. Escrevemos juntos no slide 12.

O merge faz-se **a partir de quem recebe**:

```bash
git switch main          # ir para quem recebe
git merge rodape         # trazer o rodapé para aqui
```

- **Fast-forward:** o main não mudou desde que o branch saiu. A etiqueta `main` só avança. Não há commit novo.
- **Merge commit:** os dois andaram. O Git cria um commit novo, com dois "pais", e abre o VS Code com a mensagem (`Merge branch '…'`): **gravar e fechar o separador**. No desenho, um losango.

### ✍️ STOP · ESCREVER JUNTOS · Merge, juntos · slide 12 (própria 10)

> **Agora escrevemos todos**, passo a passo, no livro. Eu partilho o ecrã.

```bash
# 1 · o rodapé: fast-forward
git switch main
git merge rodape                    # Fast-forward
git branch -d rodape

# 2 · o título, num branch
git switch -c titulo
```

Mudar o título no `livro.txt` (a primeira linha), gravar:

```bash
git add livro.txt
git commit -m "Muda o título"

# 3 · entretanto, no main
git switch main
```

Uma frase nova no fim do `capitulos/capitulo1.txt`, gravar:

```bash
git add capitulos/capitulo1.txt
git commit -m "Continua o capítulo 1"

# 4 · o merge commit (abre o VS Code: gravar e fechar o separador)
git merge titulo

# 5 · o losango
git log --oneline --graph --all
git branch -d titulo
```

Se abrir o **vim** em vez do VS Code (quem não configurou o `core.editor` na 4.ª): `Esc`, depois `:wq` e `Enter`.

### 📋 RESUMO · Resumo · slide 13 (própria 11)

> O que acabámos de escrever no slide 12.

```bash
git switch main
git merge rodape                    # Fast-forward
git branch -d rodape

git switch -c titulo
git commit -am "Muda o título"      # -am: add + commit, só para ficheiros que o Git já conhece
git switch main
git commit -am "Continua o capítulo 1"
git merge titulo                    # Merge made by the 'ort' strategy.
git log --oneline --graph --all
```

### 🧑‍💻 SOZINHOS · Exercício 4.1 · branches no site das receitas · sozinhos · slide 14 (própria 12)

> **Agora vocês, sozinhos**, no repositório das receitas. Os slides de resumo só se encravarem.

O enunciado está em `03-git-github/exercicios/ex-4.1-branches-nas-receitas.md`. Em resumo: no repositório das receitas, um branch `nova-receita` (uma receita nova na lista e a página dela), um branch `cores` (a cor do cabeçalho), os dois juntados ao `main` e o `git log --oneline --graph` no chat.

Sem o repositório das receitas (o do 3.1)? Descarreguem o **`03-git-github/s01/receitas-s01.zip`**. No GitHub, abram o ficheiro e carreguem em **Download raw file** (também vem no Download ZIP do repositório). Descompactem-no na vossa `flag-frontend/03-git-github/s01/`: a pasta `receitas` já traz o repositório e o primeiro commit.

```bash
cd receitas
git log --oneline       # Primeira versão do site das receitas
```

### ✅ SOLUÇÃO · Solução 4.1 · slide 15 (própria 13)

> Faço-a convosco depois da pausa. Os vossos nomes e cores são outros: interessa o desenho do `--graph`.

```bash
# a receita nova, num branch
git switch -c nova-receita
# … criar receitas/arroz-doce.html …
git add receitas/arroz-doce.html
git commit -m "Acrescenta a página do arroz-doce"
# … acrescentar o arroz-doce à lista do index.html …
git commit -am "Acrescenta o arroz-doce à lista"

# as cores, noutro branch, a partir do main
git switch main
git switch -c cores
# … mudar a cor do cabeçalho em css/estilos.css …
git commit -am "Muda a cor do cabeçalho"

# juntar os dois ao main
git switch main
git merge nova-receita              # fast-forward
git merge cores                     # merge commit (gravar e fechar a mensagem)
q
git log --oneline --graph
```

---

## Parte 3 · Conflitos

### 📖 TEORIA · Conflitos · slide 17 (própria 15)

> Só para consulta: **não é para escrever agora**. Escrevemos juntos no slide 18.

Um **conflito** acontece quando os dois branches mudaram a **mesma linha** do mesmo ficheiro. O Git escreve as duas versões no ficheiro e pergunta qual fica:

```text
<<<<<<< HEAD
Este livro é um diário de bordo do Git.
=======
Este livro ensina Git a quem nunca o usou.
>>>>>>> prefacio-novo
```

- Entre `<<<<<<< HEAD` e `=======`: o que está no branch onde estou (o main).
- Entre `=======` e `>>>>>>> prefacio-novo`: o que vem do outro branch.

Resolver:

```bash
git status                          # both modified: prefacio.txt
# escolher no ficheiro (uma, outra, as duas) e APAGAR as três linhas de marcadores
git add prefacio.txt                # "este já está resolvido"
git commit                          # a mensagem já vem preparada: gravar e fechar
```

Desistir: `git merge --abort` (volta tudo a como estava antes do merge).

No VS Code, por cima do conflito: **Accept Current Change** (o nosso), **Accept Incoming Change** (o do branch), **Accept Both Changes** (os dois).

### ✍️ STOP · ESCREVER JUNTOS · O conflito, juntos · slide 18 (própria 16)

> **Agora escrevemos todos**, passo a passo, no livro. Eu partilho o ecrã.

```bash
# 1 · num branch
git switch -c prefacio-novo
```

A primeira linha do `prefacio.txt` passa a ser esta (gravar):

```text
Este livro ensina Git a quem nunca o usou.
```

```bash
git commit -am "Reescreve o prefácio"

# 2 · no main, a MESMA linha de outra maneira
git switch main
```

A primeira linha do `prefacio.txt` passa a ser esta (gravar):

```text
Este livro é um diário de bordo do Git.
```

```bash
git commit -am "Muda o prefácio"

# 3 · o conflito
git merge prefacio-novo             # CONFLICT (content): Merge conflict in prefacio.txt
git status                          # both modified: prefacio.txt

# (para perder o medo: desistir e voltar a tentar)
git merge --abort
git merge prefacio-novo

```

**4 ·** Resolver no VS Code. Não há comando: é no editor. Abrir o `prefacio.txt` (no explorador está a vermelho, com um **!**; no Source Control aparece em **Merge Changes**). A primeira linha está assim:

```text
<<<<<<< HEAD
Este livro é um diário de bordo do Git.
=======
Este livro ensina Git a quem nunca o usou.
>>>>>>> prefacio-novo
```

- Por cima do `<<<<<<< HEAD` aparecem os botões: **Accept Current Change** (fica a do main) · **Accept Incoming Change** (fica a do `prefacio-novo`) · **Accept Both Changes** (ficam as duas).
- Clicar em **Accept Both Changes**: os marcadores desaparecem e ficam as duas frases.
- Arrumar à mão numa só frase, por exemplo:

```text
Este livro é um diário de bordo do Git, para quem nunca o usou.
```

- **Gravar** (`Cmd+S` / `Ctrl+S`). Confirmar que **não sobrou nenhum** `<<<<<<<`, `=======` ou `>>>>>>>`.
- Sem os botões? Apagar à mão as três linhas de marcadores e a frase que não fica.

```bash

# 5 · fechar o merge
git add prefacio.txt
git commit

# 6 · o desenho
git log --oneline --graph --all
git branch -d prefacio-novo
```

### 📋 RESUMO · Resumo · slide 19 (própria 17)

> O que acabámos de escrever no slide 18.

```bash
git switch -c prefacio-novo
git commit -am "Reescreve o prefácio"
git switch main
git commit -am "Muda o prefácio"
git merge prefacio-novo             # CONFLICT
git status                          # both modified
# escolher, apagar os marcadores, gravar
git add prefacio.txt
git commit
git branch -d prefacio-novo
```

### 🧑‍💻 SOZINHOS · Exercício 4.2 · um conflito nas receitas · sozinhos · slide 20 (própria 18)

> **Agora vocês, sozinhos**, no repositório das receitas. Os slides de resumo só se encravarem.

O enunciado está em `03-git-github/exercicios/ex-4.2-conflito-nas-receitas.md`. Em resumo: o mesmo `<h1>` mudado de duas maneiras, em dois branches; o conflito, resolvido; depois um conflito na cor do cabeçalho, desta vez com `git merge --abort`.

### ✅ SOLUÇÃO · Solução 4.2 · slide 21 (própria 19)

> Faço-a convosco, a seguir ao exercício.

```bash
# o título, num branch
git switch -c titulo-verao
# <h1>Receitas de verão</h1> no index.html
git commit -am "Muda o título para Receitas de verão"

# o mesmo título, no main
git switch main
# <h1>As receitas da avó</h1> no index.html
git commit -am "Muda o título para As receitas da avó"

# o conflito
git merge titulo-verao              # CONFLICT (content): Merge conflict in index.html
# escolher o <h1>, apagar os marcadores, gravar, ver no browser
git add index.html
git commit

# a cor: o conflito e desistir
git switch -c cores-novas
git commit -am "Cabeçalho verde"
git switch main
git commit -am "Cabeçalho azul"
git merge cores-novas               # CONFLICT
git merge --abort                   # volta a antes do merge

# arrumar: o -D apaga mesmo um branch nunca juntado
git branch -d titulo-verao
git branch -D cores-novas
git log --oneline --graph
```

---

## Parte 4 · .gitignore e voltar atrás

### 📖 TEORIA · .gitignore · slide 23 (própria 21)

> Só para consulta: **não é para escrever agora**. Escrevemos juntos no slide 25.

Um ficheiro `.gitignore` na raiz do repositório, com um padrão por linha:

```gitignore
# o sistema operativo
.DS_Store
Thumbs.db

# segredos: nunca no Git!
.env

# o que se instala ou se gera
node_modules/
dist/

# rascunhos meus
notas-privadas.txt
*.log
```

- O `.gitignore` também entra no Git (add e commit): assim vale para toda a equipa.
- Só vale para ficheiros que o Git ainda não segue. Para deixar de seguir um que já entrou (fica na pasta):

```bash
git rm --cached ficheiro
git commit -m "Deixa de seguir o ficheiro"
```

- Modelos prontos por tecnologia: https://github.com/github/gitignore

**Extra (Mac):** um `.gitignore` global, para todos os repositórios do computador:

```bash
echo ".DS_Store" >> ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
```

### 📖 TEORIA · Voltar atrás · slide 24 (própria 22)

> Só para consulta: **não é para escrever agora**. Escrevemos juntos no slide 25.

```bash
# amend: corrigir o último commit (a mensagem, ou um ficheiro esquecido)
git commit --amend -m "A mensagem certa"
git add esquecido.txt
git commit --amend --no-edit

# revert: desfazer um commit com um commit novo (o seguro)
git revert HEAD                     # o último
git revert 8b2e7d4                  # um commit qualquer, pelo hash

# reset: andar com o branch para trás (o perigoso)
git reset --soft HEAD~1             # apaga o último commit; as mudanças ficam na caixa
git reset --hard HEAD~1             # apaga o último commit E as mudanças: sem volta!

# o salva-vidas: o diário de tudo o que o HEAD fez
git reflog
```

**A regra de ouro:** no que já foi partilhado (no GitHub, na 2.ª), só `revert`. O `amend` e o `reset` reescrevem o histórico.

### ✍️ STOP · ESCREVER JUNTOS · No livro, juntos · slide 25 (própria 23)

> **Agora escrevemos todos**, passo a passo, no livro. Eu partilho o ecrã.

```bash
# 1 · um ficheiro que não é para o Git
echo "as minhas notas" > notas-privadas.txt
git status                          # Untracked: notas-privadas.txt
```

**2 ·** Criar o ficheiro `.gitignore` (na pasta do livro), gravar:

```gitignore
notas-privadas.txt
.DS_Store
```

```bash
git status                          # o notas-privadas.txt desapareceu; aparece o .gitignore

# 3 · uma má mensagem, e corrigi-la
git add .gitignore
git commit -m "gitignore"
git log --oneline
git commit --amend -m "Acrescenta o .gitignore"
git log --oneline                   # o hash mudou

# 4 · um erro "por engano"
git rm capitulos/capitulo1.txt
git commit -m "Apaga o capítulo 1"

# 5 · desfazê-lo (gravar e fechar a mensagem do revert)
git revert HEAD

# 6 · o erro e a correção, os dois no histórico
git log --oneline
```

### 📖 TEORIA · Boas práticas · slide 26 (própria 24)

> Só para consulta: vão usá-las no exercício 4.3.

**Nomes de branches:** um tipo e uma descrição curta, com hífenes: `feat/nova-receita`, `fix/link-do-menu`, `docs/readme`.

**Conventional Commits** (`tipo: descrição`, no presente):

```text
feat: acrescenta a receita do arroz-doce
fix: corrige o link do menu para as sobremesas
style: muda a cor do cabeçalho
docs: acrescenta o README
refactor: reorganiza as pastas das imagens
chore: acrescenta o .gitignore
```

### 🧑‍💻 SOZINHOS · Exercício 4.3 · para casa · slide 27 (própria 25)

> **Para casa, sozinhos**, no repositório das receitas.

O enunciado está em `03-git-github/exercicios/ex-4.3-gitignore-e-voltar-atras.md`: um `.gitignore` nas receitas, um branch `feat/…` com mensagens Conventional Commits, um `revert` e um `amend`. O `git log --oneline --graph` vai para o Moodle (fórum do módulo).

---

## Resumo · slide 28 (própria 26)

| Para… | Comando |
|---|---|
| criar um branch e ir para ele | `git switch -c nome` |
| mudar de branch | `git switch nome` |
| ver os branches | `git branch` · `git log --oneline --graph --all` |
| juntar um branch (a partir de quem recebe) | `git switch main` · `git merge nome` |
| apagar um branch | `git branch -d nome` (`-D` força) |
| resolver um conflito | editar, apagar os marcadores · `git add` · `git commit` |
| desistir de um merge | `git merge --abort` |
| ignorar ficheiros | `.gitignore` |
| corrigir o último commit | `git commit --amend` |
| desfazer um commit (seguro) | `git revert <hash>` |
| apagar commits (perigoso) | `git reset --hard HEAD~1` |

## Até 2.ª feira · slide 29 (própria 27)

- **Sessão 3 (2.ª, 16 nov):** o GitHub. Push, pull e clone, trabalhar em equipa com Pull Requests e publicar um site.
- **Tragam uma conta no GitHub** (https://github.com/), com o mesmo email do `git config` (ou mudem o config para o email da conta). E o livro e as receitas de hoje.
- **Para casa:** o 4.3 e o Learn Git Branching (os níveis "Introduction Sequence" e "Ramping Up").

---

## Links

- Pro Git, o livro oficial (capítulo 3, os branches; em português do Brasil): https://git-scm.com/book/pt-br/v2
- Learn Git Branching: https://learngitbranching.js.org/?locale=pt_BR
- VS Code, resolver conflitos: https://code.visualstudio.com/docs/sourcecontrol/merge-conflicts
- Modelos de `.gitignore`: https://github.com/github/gitignore
- Git, a documentação do `.gitignore`: https://git-scm.com/docs/gitignore
- Conventional Commits (em português): https://www.conventionalcommits.org/pt-br/v1.0.0/
- Oh Shit, Git!?!, para quando as coisas correm mal: https://ohshitgit.com/
- Cábula oficial do GitHub (PDF): https://education.github.com/git-cheat-sheet-education.pdf
- Visualizing Git, escrever comandos e ver o desenho dos branches a mudar: https://git-school.github.io/visualizing-git/
- GitHub Docs, resolver um conflito de merge na linha de comandos: https://docs.github.com/pt/pull-requests/collaborating-with-pull-requests/addressing-merge-conflicts/resolving-a-merge-conflict-using-the-command-line
- Git, a documentação do `git switch`: https://git-scm.com/docs/git-switch
