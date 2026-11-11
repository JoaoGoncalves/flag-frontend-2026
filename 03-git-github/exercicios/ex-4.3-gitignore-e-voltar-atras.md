# Exercício 4.3 · .gitignore e voltar atrás nas receitas

**Sessão 2 do módulo 3 · para casa · antes da 2.ª, 16 nov**

Junta tudo o que vimos na sessão 2, no repositório das receitas, como se trabalhassem numa equipa: um `.gitignore`, branches com nome, mensagens Conventional Commits, e corrigir e desfazer commits.

## O que fazer

1. **O `.gitignore`.** Criem um `notas-privadas.txt` e um `teste.log` na pasta das receitas. Depois, um `.gitignore` com `.DS_Store`, `notas-privadas.txt` e `*.log`. Confirmem com o `git status` que os dois ficheiros desapareceram e façam o commit do `.gitignore` com a mensagem `chore: acrescenta o .gitignore`.
2. **Um branch à equipa.** Criem o branch `feat/receita-do-mes`. Nele, uma receita nova (a página e a entrada na lista), em dois commits com mensagens `feat: …`. Juntem-no ao `main` e apaguem o branch.
3. **Um erro, e o revert.** "Por engano", apaguem com o Git a página de uma receita (`git rm`) e façam o commit. Desfaçam o erro com `git revert`. A página volta, e o histórico guarda o erro e a correção.
4. **O amend.** Façam uma mudança pequena (por exemplo, `style: …` na cor de um link) com uma mensagem mal escrita, e corrijam a mensagem com `git commit --amend -m "…"`.
5. Publiquem o vosso `git log --oneline --graph` no Moodle, no fórum do módulo.

## Para treinar

O Learn Git Branching (https://learngitbranching.js.org/?locale=pt_BR): os níveis "Introduction Sequence" (commit, branch, merge) e "Ramping Up" (o HEAD, o reset e o revert).
