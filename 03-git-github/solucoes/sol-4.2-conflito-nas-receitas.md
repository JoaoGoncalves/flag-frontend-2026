# Solução 4.2 · Um conflito nas receitas

```bash
# 1 · o título, num branch
git switch -c titulo-verao
# <h1>Receitas de verão</h1> no index.html
git commit -am "Muda o título para Receitas de verão"

# 2 · o mesmo título, no main
git switch main
# <h1>As receitas da avó</h1> no index.html
git commit -am "Muda o título para As receitas da avó"

# 3 · o conflito
git merge titulo-verao              # CONFLICT (content): Merge conflict in index.html
git status                          # both modified: index.html
```

No `index.html`, o Git deixou as duas versões:

```html
<<<<<<< HEAD
<h1>As receitas da avó</h1>
=======
<h1>Receitas de verão</h1>
>>>>>>> titulo-verao
```

Resolver é deixar o HTML como deve ficar, sem os marcadores. Por exemplo, juntando os dois:

```html
<h1>As receitas de verão da avó</h1>
```

```bash
# 5 · fechar o merge
git add index.html
git commit                          # a mensagem já vem preparada: gravar e fechar

# 6 · a cor: o conflito e desistir
git switch -c cores-novas
# … uma cor no cabeçalho …
git commit -am "Cabeçalho verde"
git switch main
# … outra cor, na mesma linha …
git commit -am "Cabeçalho azul"
git merge cores-novas               # CONFLICT
git merge --abort                   # volta tudo a antes do merge
git status                          # nothing to commit, working tree clean

# 7 · arrumar
git branch -d titulo-verao
git branch -D cores-novas           # nunca foi juntado: o -d recusa, o -D força
git log --oneline --graph
```

**Os erros mais comuns:** o commit com os marcadores ainda no ficheiro (o Git deixa! vejam sempre o ficheiro, e o browser, antes do `git add`); mudar linhas diferentes nos dois branches (aí não há conflito: o Git junta sozinho).
