# S1 · 4.ª 11 nov · Git: o controlo de versões (módulo 3, 1 de 3)

- `M3-S1-Controlo-versoes-git.pdf`: os slides da sessão: a apresentação do módulo, o controlo de versões (o problema dos "final-v2", o que é, as filosofias local, centralizada e distribuída, o Git e o GitHub), o terminal em 5 comandos, instalar e configurar o Git, as três áreas e os comandos `init`, `status`, `add`, `commit` e `log`, ver e desfazer (`diff`, `restore`, `rm`, `mv`), as boas mensagens de commit, o exercício 3.1 e o resumo
- `sessao-01-snippets.txt` (e `.md`, com os comandos a cores): todos os comandos da sessão, os textos do livro, a solução do 3.1 e os links
- links da sessão (também nos snippets): [Git · downloads](https://git-scm.com/downloads), [Pro Git, o livro oficial (gratuito, em português do Brasil)](https://git-scm.com/book/pt-br/v2), [a cábula oficial do GitHub (PDF)](https://education.github.com/git-cheat-sheet-education.pdf), [Learn Git Branching](https://learngitbranching.js.org/?locale=pt_BR), [GitHub Docs · configurar o Git](https://docs.github.com/pt/get-started/getting-started-with-git/set-up-git), [VS Code · o Git no editor (Source Control)](https://code.visualstudio.com/docs/sourcecontrol/overview) e [Oh Shit, Git!?!](https://ohshitgit.com/), para quando as coisas correm mal
- o código está em [`../s01/`](../s01/): o livro como ficou na aula ([`livro/`](../s01/livro/)) e o seu histórico, os 7 commits, em [`livro-git-log.txt`](../s01/livro-git-log.txt); e o ponto de partida do 3.1 ([`receitas/`](../s01/receitas/))

> O livro vai **sem** a pasta `.git`: um repositório não pode ir dentro de outro (este, o do curso). O histórico fica no `livro-git-log.txt`, tirado com `git log --stat`. O vosso livro, com o vosso histórico, está no vosso computador: **guardem-no**, porque continuamos nele na 6.ª.

**Para casa (opcional):** o 3.2, a galeria no Git ([enunciado](../exercicios/ex-3.2-galeria-no-git.md)), com um commit por passo. Quem não acabou o 3.1 ([enunciado](../exercicios/ex-3.1-receitas-no-git.md)), acaba-o.

**Solução publicada:** [3.1 o site das receitas no Git](../solucoes/sol-3.1-receitas-no-git.md).

**Próxima sessão:** 6.ª, 13 nov, 9:30 · branches, merge e conflitos, o `.gitignore` e voltar atrás. Para treinar: os primeiros níveis do [Learn Git Branching](https://learngitbranching.js.org/?locale=pt_BR).
