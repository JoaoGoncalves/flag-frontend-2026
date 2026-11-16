# Solução 4.3 · .gitignore e voltar atrás nas receitas

```bash
# 1 · o .gitignore
echo "as minhas notas" > notas-privadas.txt
echo "erro" > teste.log
git status                          # os dois aparecem como Untracked
printf ".DS_Store\nnotas-privadas.txt\n*.log\n" > .gitignore
git status                          # só aparece o .gitignore
git add .gitignore
git commit -m "chore: acrescenta o .gitignore"

# 2 · um branch à equipa
git switch -c feat/receita-do-mes
# … criar receitas/caldo-verde.html …
git add receitas/caldo-verde.html
git commit -m "feat: acrescenta a página do caldo verde"
# … acrescentar o caldo verde à lista do index.html …
git commit -am "feat: acrescenta o caldo verde à lista"
git switch main
git merge feat/receita-do-mes
git branch -d feat/receita-do-mes

# 3 · um erro, e o revert
git rm receitas/doces/pudim.html
git commit -m "Apaga o pudim"
git revert HEAD                     # gravar e fechar a mensagem: o pudim volta

# 4 · o amend
# … mudar a cor de um link no CSS …
git commit -am "cor"
git commit --amend -m "style: muda a cor dos links"

# 5 · o desenho
git log --oneline --graph
```
