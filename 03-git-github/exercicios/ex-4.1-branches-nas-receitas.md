# Exercício 4.1 · Branches no site das receitas

**Sessão 2 do módulo 3 · sozinhos · cerca de 16 minutos**

Vão fazer no site das receitas o que fizemos no livro: duas mudanças, cada uma no seu branch, juntadas ao `main` no fim. Uma vai entrar em **fast-forward** e a outra com um **merge commit**.

## O ponto de partida

O repositório das receitas do exercício 3.1 (a vossa `flag-frontend/03-git-github/s01/receitas`). O `git status` tem de estar limpo.

Não o têm? Copiem `03-git-github/s01/receitas` do GitHub para a vossa `s01/receitas` e, lá dentro: `git init`, `git add .` e `git commit -m "Primeira versão do site das receitas"`.

## O que fazer

1. Vejam onde estão: `git status`, `git branch` e `git log --oneline`.
2. Criem o branch **`nova-receita`** e, nele:
   - criem a página de uma receita nova na pasta `receitas/` (pode ser curta: o título, os ingredientes numa lista e um parágrafo) e façam o commit;
   - acrescentem essa receita à lista do `index.html`, com o link para a página, e façam outro commit.
3. Voltem ao `main` e confirmem, no VS Code e no browser, que a receita nova **não está lá**.
4. A partir do `main`, criem o branch **`cores`** e mudem a cor do cabeçalho no CSS. Um commit.
5. No `main`, juntem os dois branches, por esta ordem:
   - a `nova-receita` (vai ser um **fast-forward**: o `main` não mexeu desde que o branch saiu);
   - as `cores` (vai ser um **merge commit**: abre o VS Code com a mensagem; gravem e fechem o separador).
6. Abram o site no browser: a receita nova e a cor nova, as duas no `main`.
7. Apaguem os dois branches e colem o vosso `git log --oneline --graph` no chat do Teams.

Na dúvida, `git status` e `git log --oneline --graph --all`.

## Se acabarem cedo

- Mais um branch, `sobre`, que muda o texto da página `sobre.html`, juntado ao `main`.
- O Learn Git Branching (https://learngitbranching.js.org/?locale=pt_BR): os níveis "Introduction Sequence".
