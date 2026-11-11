# Solução 3.1 · O site das receitas no Git

Não há uma solução única: os vossos ficheiros, mudanças e mensagens são outros. O que interessa é o **ritmo** (mudar → `git status` → `git add` → `git commit`), ver o **diff antes do restore** e escrever **mensagens que dizem o que mudou**.

```bash
# 0 · a pasta nova, com uma cópia do site, dentro da pasta de hoje (flag-frontend/03-git-github/s01)
mkdir receitas
# (copiar para aqui o vosso site, ou o ponto de partida 03-git-github/s01/receitas,
#  pelo explorador de ficheiros ou com: cp -r caminho/do/site/. receitas/)
cd receitas

# 1 · o repositório e o primeiro commit
git init
git status                         # tudo Untracked
git add .
git commit -m "Primeira versão do site das receitas"

# 2 · três mudanças pequenas, um commit cada
git status                         # modified: css/estilos.css
git add css/estilos.css
git commit -m "Muda a cor do cabeçalho"

git add index.html
git commit -m "Acrescenta a receita de bacalhau à lista"

git add receitas/posset-de-limao.html
git commit -m "Corrige o tempo de preparação do posset"

# 3 · estragar o index.html, ver e desfazer
git status                         # modified: index.html
git diff index.html                # muitas linhas com -
git restore index.html             # voltou como estava no último commit
git status                         # nothing to commit, working tree clean

# 4 · apagar um ficheiro (ou mudar o nome)
git rm notas.txt                   # ou: git mv css/estilos.css css/main.css
git commit -m "Apaga as notas de rascunho"

# 5 · o histórico
git log --oneline
```

Um histórico possível:

```text
9f2c1ab (HEAD -> main) Apaga as notas de rascunho
4e88d07 Corrige o tempo de preparação do posset
b31a9c2 Acrescenta a receita de bacalhau à lista
77d0e15 Muda a cor do cabeçalho
1c5f3a0 Primeira versão do site das receitas
```

**Os erros mais comuns:**
- O `git init` na pasta errada. Confirmem com `pwd` antes. Se o fizeram na pasta errada, apaguem a pasta `.git` que foi criada lá (é uma pasta escondida).
- `nothing added to commit`: esqueceram o `git add`.
- Um `git restore` sem querer, antes do commit: essas mudanças perdem-se. Por isso se fazem commits pequenos e frequentes.
