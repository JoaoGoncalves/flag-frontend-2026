# Solução 3.2 · Link ou botão?

| # | Ação | Elemento | Porquê |
|---|---|---|---|
| 1 | Ver a receita do posset | `<a href="receitas/posset-de-limao.html">` | vai para outra página |
| 2 | Adicionar à lista de compras | `<button type="button">` | faz uma coisa na página (JavaScript, módulo 4) |
| 3 | Enviar o formulário de contacto | `<button type="submit">` | envia dados (sessão 4) |
| 4 | Descarregar a receita em PDF | `<a href="receita.pdf" download>` | é um ficheiro com endereço |
| 5 | Mudar para modo escuro | `<button type="button">` | muda o estado da página |
| 6 | Voltar ao topo | `<a href="#topo">` | vai para um sítio (um `id`) |

Regra: **se vai para um endereço, é `<a>`. Se faz alguma coisa, é `<button>`.** Um `<a>` sem `href` ou um `<div>` com clique não funciona com teclado nem com leitor de ecrã.
