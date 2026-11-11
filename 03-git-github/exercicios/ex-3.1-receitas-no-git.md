# Exercício 3.1 · O site das receitas no Git

**Sessão 1 do módulo 3 · sozinhos · cerca de 25 minutos**

Vão pôr no Git o site das receitas que fizeram no módulo 2, e depois trabalhar nele como um developer: com commits pequenos, mensagens que dizem o que mudou e sem medo de estragar.

## O ponto de partida

O vosso site das receitas, o último que tiverem, com tudo o que fizeram. Se não o encontrarem, usem o ponto de partida que está no GitHub: **`03-git-github/s01/receitas/`**. É o site da sessão 10, com um `notas.txt` de rascunho para apagarem no passo 4.

⚠️ **Copiem-no para a vossa pasta da sessão**, `flag-frontend/03-git-github/s01/receitas`, fora da pasta dos materiais do curso. Se os materiais vieram de um `git clone`, essa pasta já é um repositório, e um `git init` lá dentro baralha tudo.

## O que fazer

1. Criem o repositório na pasta `receitas` e façam o primeiro commit, com o site todo.
2. Façam **3 mudanças pequenas** no site, por exemplo mudar uma cor, acrescentar uma receita à lista ou corrigir um texto. Cada mudança vai **no seu commit**, com uma **boa mensagem** (curta, no presente, a dizer o que mudou).
3. **Estraguem o `index.html` de propósito**: apaguem metade e gravem. Vejam o estrago com o `git diff` e **desfaçam-no** com o Git.
4. **Apaguem um ficheiro** que já não seja preciso **com o Git**, e façam o commit. Pode ser o `notas.txt` do ponto de partida (quem usar o seu site, crie um `notas.txt` e faça o commit dele antes). Ou mudem o nome a um ficheiro com o Git.
5. No fim, colem o vosso `git log --oneline` no chat do Teams. Têm de ter pelo menos 5 commits.

Na dúvida, `git status`. Usem o resumo dos slides e os snippets só se encravarem.

## Se acabarem cedo

- `git log -p`: o histórico com o diff de cada commit (sair com `q`).
- `git show` seguido do hash de um commit: o que esse commit mudou.
- Comecem o 3.2, a galeria no Git.
