# Exercício 17.1 · The Analog Specialist com flexbox

> Parte 17 · Flexbox · sessão 10 · **opcional, para treinar** (o exercício principal é o 17.3, a newsletter EDP)

Partam do vosso Analog Specialist (o 14.1, como ficou na sessão 10, com a solução que fizemos juntos). Copiem `s09/analog/` para **`s10/analog/`** e trabalhem aí.

Na sessão 9, o menu e as imagens deram trabalho: `inline-block`, `width: 20%` e os espaços entre os `li` e as `img` a estragar tudo. Hoje refazemos isso com flexbox.

## Os requisitos

1. **O menu com flexbox.** O HTML volta a ter um `li` por linha (com espaços, como é normal). Nada de `inline-block` nem de `width: 20%`: os cinco links ficam distribuídos pela largura do menu.
2. **As três imagens com flexbox.** Uma `img` por linha no HTML, e as três juntas, lado a lado e centradas.
3. **O rodapé nas duas pontas.** O `©` à esquerda e um link "contact us" à direita.
4. **A página for sale com três instrumentos à venda**, em três cartões lado a lado, da mesma largura: imagem, nome, uma frase e o preço. O preço fica sempre no fundo do cartão, mesmo que as frases tenham tamanhos diferentes.
5. **Validem** o HTML e o CSS.

**Pronto quando:** as duas páginas continuam a parecer as propostas, o HTML do menu e das imagens está arrumado (um elemento por linha), e a for sale tem os três cartões com os preços alinhados em baixo.

**Presos?** O Cabaz (`s10/exemplos/16-layout/css/layout.css`, secção 5) tem um menu, cartões lado a lado e um botão empurrado para o fundo. Primeiro o DevTools (o Chrome mostra um botão **flex** ao lado dos contentores flex: cliquem). Mais de 10 minutos parados: mão no ar no Teams.

## Extra (para treinar)

O título em três linhas sem `display: block` nos `span`: o `h1` como contentor flex, em coluna, com os itens centrados.

Depois, para treinar: o **[Flexbox Froggy](https://flexboxfroggy.com/)**, um jogo de 24 níveis em que cada nível pede uma propriedade do flexbox (dá para pôr em português).
