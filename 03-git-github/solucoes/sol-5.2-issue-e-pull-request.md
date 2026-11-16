# Solução 5.2 · Uma Issue e um Pull Request nas receitas

A receita, o nome do branch e o número da Issue são os vossos. O que interessa é o caminho: **Issue → branch → push → Pull Request → merge → pull**, e a Issue fechada sozinha pelo `Closes #1`.

**1 · No GitHub:** no repositório `receitas`, separador **Issues** › **New issue** › *Title*: `Acrescentar a receita de gaspacho` › uma frase na descrição › **Create** (fica a `#1`).

```bash
# 2 · começar do que está no GitHub, num branch novo
git switch main
git pull
git switch -c feat/receita-gaspacho

# 3 · a receita (a página nova precisa do git add)
# … criar receitas/gaspacho.html e acrescentá-la à lista do index.html …
git add receitas/gaspacho.html index.html
git commit -m "feat: acrescenta a receita de gaspacho"

# 4 · enviar o branch
git push -u origin feat/receita-gaspacho
```

**5 · O Pull Request:** no GitHub aparece a faixa amarela **Compare & pull request** (ou: **Pull requests › New pull request**, *base*: `main`, *compare*: `feat/receita-gaspacho`). Na descrição, `Closes #1` › **Create pull request**.

**6 · A revisão e o merge:** separador **Files changed** › passar o rato numa linha › **+** › um comentário. Depois, no separador **Conversation**: **Merge pull request** › **Confirm merge** › **Delete branch**.

```bash
# 7 · trazer o merge para o computador e arrumar
git switch main
git pull                            # Fast-forward: a receita chegou
git branch -d feat/receita-gaspacho
git log --oneline --graph
```

O desenho, mais ou menos assim:

```text
*   b7c8d9e (HEAD -> main, origin/main) Merge pull request #2 from <username>/feat/receita-gaspacho
|\
| * a6b7c8d feat: acrescenta a receita de gaspacho
|/
* 5f6a7b8 Muda o texto do rodapé
```

(O Pull Request recebe o número a seguir ao da Issue: a Issue é a `#1`, o PR a `#2`. Issues e PRs partilham a mesma contagem.)

**Os erros mais comuns:**

- O PR não aparece: o branch não foi enviado (`git push -u origin feat/…`) ou fizeram o commit no `main` (o `git branch` diz onde estão).
- A Issue não fechou: o `Closes #1` tem de estar na **descrição** do PR (ou numa mensagem de commit) e o PR tem de ser juntado ao `main`.
- O `git pull` no fim diz *There is no tracking information*: estão num branch que não existe no GitHub. Primeiro `git switch main`.
