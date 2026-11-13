# Solução 4.1 · Branches no site das receitas

Não há uma solução única: as vossas receitas e cores são outras. O que interessa é o **desenho** do `git log --oneline --graph`: a receita entra em linha reta (fast-forward) e as cores fazem um losango (merge commit).

```bash
# 1 · onde estou
git status
git branch
git log --oneline

# 2 · a receita nova, num branch
git switch -c nova-receita
# … criar receitas/arroz-doce.html …
git add receitas/arroz-doce.html
git commit -m "Acrescenta a página do arroz-doce"
# … acrescentar o arroz-doce à lista do index.html …
git commit -am "Acrescenta o arroz-doce à lista"

# 3 · no main, a receita não está lá
git switch main

# 4 · as cores, noutro branch, a partir do main
git switch -c cores
# … mudar a cor do cabeçalho em css/estilos.css …
git commit -am "Muda a cor do cabeçalho"

# 5 · juntar os dois ao main
git switch main
git merge nova-receita              # Fast-forward
git merge cores                     # Merge made by the 'ort' strategy (gravar e fechar a mensagem)

# 7 · arrumar e ver
git branch -d nova-receita cores
git log --oneline --graph
```

O desenho, mais ou menos assim:

```text
*   d4e5f60 (HEAD -> main) Merge branch 'cores'
|\
| * c3d4e5f Muda a cor do cabeçalho
* | b2c3d4e Acrescenta o arroz-doce à lista
* | a1b2c3d Acrescenta a página do arroz-doce
|/
* 9f8e7d6 Apaga as notas de rascunho
```

**Os erros mais comuns:** o commit no branch errado (o `git branch` diz onde estão); o merge feito ao contrário (o merge faz-se a partir de quem recebe: o `main`); a página nova esquecida (o `-am` só apanha ficheiros que o Git já conhece: um ficheiro novo precisa do `git add`).
