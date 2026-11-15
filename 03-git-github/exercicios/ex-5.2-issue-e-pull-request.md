# Exercício 5.2 · Uma Issue e um Pull Request nas receitas

**Sessão 3 do módulo 3 · sozinhos · cerca de 12 minutos**

Vão trabalhar no vosso repositório das receitas como se trabalha numa equipa: primeiro a tarefa (uma **Issue**), depois um branch, e no fim um **Pull Request** que fecha a tarefa sozinho.

## O ponto de partida

O vosso repositório `receitas` no GitHub, do exercício 5.1, e a pasta das receitas no vosso computador, no `main` e com o `git status` limpo.

## O que fazer

1. No GitHub, no vosso repositório `receitas`, abram uma **Issue** nova: o título *"Acrescentar a receita de …"* (escolham uma receita) e, na descrição, uma frase a dizer o que falta. Reparem no número que ela recebe (`#1`, se for a primeira).
2. No vosso computador: `git pull` (para começar sempre do que está no GitHub) e criem o branch **`feat/`** com o nome da receita (por exemplo `feat/receita-gaspacho`).
3. Criem a página da receita na pasta `receitas/` e acrescentem-na à lista do `index.html`. Um ou dois commits, com mensagens à **Conventional Commits** (`feat: acrescenta a receita de gaspacho`).
4. Enviem o branch: `git push -u origin feat/…`.
5. No GitHub, carreguem em **Compare & pull request**. Na descrição do Pull Request escrevam **`Closes #1`** (com o número da vossa Issue) e criem-no.
6. Façam a vossa própria revisão: no separador **Files changed**, deixem um comentário numa linha. Depois, **Merge pull request** e **Delete branch**.
7. Vejam a Issue: fechou-se sozinha. No vosso computador: `git switch main`, `git pull` e `git branch -d feat/…`.
8. Daqui a um minuto, a receita nova está no vosso site do GitHub Pages. Colem no chat o `git log --oneline --graph`.

## Se acabarem cedo

- Ponham a Issue num **Project**: no repositório, **Projects › Link a project › New project**, o modelo *Board*, e arrastem a Issue para *Done*.
- Experimentem um *label* (`enhancement`) e um *assignee* (vocês) numa Issue nova.
