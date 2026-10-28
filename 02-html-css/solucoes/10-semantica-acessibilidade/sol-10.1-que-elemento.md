# Solução 10.1 · Que elemento?

| # | Zona | Elemento | Porquê |
|---|---|---|---|
| 1 | O nome do site e o menu, no topo | `<header>` com o `<nav>` lá dentro | é o que se repete no topo de todas as páginas |
| 2 | O conteúdo próprio da página | `<main>` | um só por página |
| 3 | Uma receita que faria sentido sozinha | `<article>` | faz sentido fora da página (num feed, partilhada) |
| 4 | O © e o email de contacto, em baixo | `<footer>` com `<address>` | `address`: contactos de quem escreve |
| 5 | A caixa "Receitas mais vistas", ao lado | `<aside>` | está à parte do conteúdo principal |
| 6 | A data em que a receita foi publicada | `<time datetime="2026-10-26">` | uma data que a máquina percebe |
