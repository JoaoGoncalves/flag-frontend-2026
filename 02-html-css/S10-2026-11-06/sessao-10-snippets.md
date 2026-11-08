# Sessão 10 · Fundos e flexbox

**HTML e CSS · joaogoncalves.net** · código para seguir a sessão

O que escrevemos fica em `s10/` no GitHub. Escrevam-no vocês: copiar não conta.
Primeiro, **a solução do Analog Specialist (14.1)** e uma mostra rápida das **imagens de fundo e sombras** (parte 15). Depois, o **flexbox** (parte 17): a teoria e **nove exemplos pequenos** escritos juntos. Depois da pausa, **a newsletter EDP (17.3), sozinhos**: começa na aula, acaba no fim de semana.
O position (parte 16) e os gradientes ficam para o fim do módulo.
Os números dos slides são os da versão FLAG (entre parênteses, os da versão própria).

---

## Antes de começar · slide 4 (própria 2)

1. GitHub › **Code › Download ZIP** (ou `git pull`) e copiem a pasta **`02-html-css/s10/`** inteira para a vossa **`s10/`**. Já traz tudo:
   - `analog/`: o 14.1 (The Analog Specialist) **resolvido**, para vermos juntos;
   - `site/`: o site das receitas **pronto até ao flexbox** (11.1, 12.2, 13.2, 14.2 e 15.1 feitos);
   - `exemplos/14-box-model/`: o Cabaz da semana da sessão 9, para os fundos;
   - `exemplos/17-flexbox/`: os nove exemplos de flexbox;
   - `edp/`: o exercício 17.3, a newsletter EDP (proposta, imagens e textos).
2. O vosso Analog e o vosso site ficam guardados na `s09/`.
3. Abram o Live Server na pasta `s10/`.

### A pasta s10 no fim do dia

```text
s10/
├── analog/                     o 14.1 resolvido (vimos os passos juntos)
├── site/                       o site das receitas, pronto até ao flexbox
├── edp/                        o exercício 17.3, feito por vocês
│   ├── index.html              (criam vocês)
│   ├── css/estilos.css         (criam vocês)
│   ├── images/
│   ├── copy.txt                os textos e as cores
│   └── _edp-proposta.png
└── exemplos/
    ├── 14-box-model/           o Cabaz da sessão 9 + a secção 3 (os fundos e as sombras)
    └── 17-flexbox/
        ├── basic.css           as cores dos exemplos (não mexer)
        └── flex1_flex.html … flex9_order.html
```

---

## Revisão · Exercício 14.1 · The Analog Specialist (a solução) · slides 5–6 (própria 3–4)

Enunciado: `exercicios/14-box-model/ex-14.1-analog-specialist/`. No `s10/analog/css/estilos.css`.

Está em `s10/analog/`: abrimos juntos e vemos os passos todos. Primeiro o HTML das duas páginas, depois o CSS.

### O HTML · `index.html`

```html
<!DOCTYPE html>
<html lang="en">                      <!-- o texto do site é em inglês -->
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>The Analog Specialist</title>

  <!-- a fonte do Google Fonts (sessão 8): os <link> do Google vêm ANTES do nosso CSS -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inconsolata:wght@400;700&display=swap" rel="stylesheet">

  <!-- o nosso CSS, num ficheiro externo (requisito 7) -->
  <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
  <!-- a caixa exterior: 80%, min-width 800px, centrada, border double (requisitos 2 e 3).
       É um div porque não tem significado: serve só para desenhar a caixa -->
  <div class="caixa">

    <header>
      <!-- o título é TEXTO, não imagem (requisito 1): um h1 com três span.
           Os span são inline; no CSS ficam display: block, um por linha -->
      <h1>
        <span class="the">The</span>
        <span class="analog">Analog</span>
        <span class="specialist">Specialist</span>
      </h1>
    </header>

    <nav>
      <!-- os li SEM espaços entre eles: em inline-block, os espaços do HTML
           contam como texto e o menu a 5 × 20% partia em duas linhas.
           (É o remendo que o flexbox vai resolver no 17.1.)
           class="atual": a página onde estamos (requisito 5) -->
      <ul>
        <li><a href="index.html" class="atual">home</a></li><li><a href="forsale.html">for sale</a></li><li><a href="#">repairs</a></li><li><a href="#">about</a></li><li><a href="#">contact</a></li>
      </ul>
    </nav>

    <main>
      <!-- as imagens também SEM espaços entre elas (o mesmo problema: são inline).
           alt em todas; width e height para o browser reservar o espaço -->
      <p class="galeria"><img src="img/clavinet.jpg" alt="Hohner Clavinet D6" width="200" height="150"><img src="img/rhodes.jpg" alt="Fender Rhodes Mark I" width="200" height="150"><img src="img/wurlitzer.jpg" alt="Wurlitzer" width="200" height="150"></p>

      <!-- "Fender" é um link externo, num novo separador (requisito 6; target da sessão 3) -->
      <p class="texto">We specialize in the sale and repair of classic keyboards, in particular the "<a href="https://www.fender.com" target="_blank">Fender</a> Rhodes", "Wurlitzer EP200", and Hohner Clavinet.</p>
    </main>

    <footer>
      <!-- &copy; é a entidade do símbolo © -->
      <p>&copy; 2026, João Gonçalves</p>
    </footer>

  </div>
</body>
</html>
```

### O HTML · `forsale.html`

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- um title diferente em cada página -->
  <title>For sale · The Analog Specialist</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inconsolata:wght@400;700&display=swap" rel="stylesheet">
  <!-- o MESMO ficheiro de CSS: as duas páginas ficam iguais -->
  <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
  <!-- a caixa, o header e o nav são iguais aos do index -->
  <div class="caixa">
    <header>
      <h1>
        <span class="the">The</span>
        <span class="analog">Analog</span>
        <span class="specialist">Specialist</span>
      </h1>
    </header>

    <nav>
      <!-- a única diferença: o class="atual" passa para o "for sale" -->
      <ul>
        <li><a href="index.html">home</a></li><li><a href="forsale.html" class="atual">for sale</a></li><li><a href="#">repairs</a></li><li><a href="#">about</a></li><li><a href="#">contact</a></li>
      </ul>
    </nav>

    <!-- título, subtítulo e texto à escolha (requisito 6).
         class="texto" no main: a mesma largura e centragem do texto do index -->
    <main class="texto">
      <h2>For sale</h2>
      <h3>Restored, tested and ready to play</h3>
      <p>Every keyboard we sell is fully serviced in our workshop: new hammer tips, regulated action and a clean, quiet amplifier. Ask us about the instruments in stock this month.</p>
    </main>

    <footer>
      <p>&copy; 2026, João Gonçalves</p>
    </footer>
  </div>
</body>
</html>
```

### O CSS · `css/estilos.css`

O CSS completo da solução, pela ordem em que o escrevemos (de fora para dentro):

```css
/* Exercício 14.1 · The Analog Specialist · solução */

/* ---------- 1 · o mini reset "à la João" ---------- */
* {
  padding: 0;
  margin: 0;
  border: none;
  box-sizing: border-box;
}

/* ---------- 2 · a página ---------- */
body {
  font-family: "Inconsolata", monospace;
  font-size: 1.125rem;
  color: #222222;
  background-color: lightgray;
}

/* ---------- 3 · a caixa exterior: 80%, nunca menos de 800px, centrada ---------- */
.caixa {
  width: 80%;
  min-width: 800px;
  margin: 2rem auto;
  padding: 2.5rem 2rem 3rem;
  background-color: #ffffff;
  border: 4px double gray;        /* double só se vê a partir de 3px */
  border-radius: 12px;
}

/* ---------- 4 · o título, em três linhas ---------- */
header {
  text-align: center;
}

header h1 {
  font-weight: 400;
  line-height: 0.95;
  text-transform: uppercase;
}

header span {
  display: block;                 /* cada span na sua linha */
}

.the {
  font-size: 1.5rem;
}

.analog {
  font-size: 2.75rem;
  font-weight: 700;
  letter-spacing: 0.1em;
}

.specialist {
  font-size: 2rem;
}

/* ---------- 5 · o menu, entre duas linhas ---------- */
nav ul {
  list-style: none;
  max-width: 37.5rem;             /* 600px: a largura das três imagens */
  margin: 1rem auto 1.5rem;
  padding: 0.6rem 0;
  border-top: 2px solid black;
  border-bottom: 1px solid black;
}

nav li {
  display: inline-block;
  width: 20%;                     /* cinco links: 5 × 20% */
  text-align: center;
}

nav a {
  color: darkslategray;
  text-decoration: none;
}

nav a:hover {
  color: tomato;
  text-decoration: underline;
}

nav a.atual {                     /* a página onde estamos */
  color: tomato;
}

/* ---------- 6 · as imagens e o texto ---------- */
.galeria,
.texto {
  max-width: 37.5rem;
  margin: 0 auto 1.5rem;
  text-align: center;
}

.texto h2 {
  font-size: 1.5rem;
  text-transform: uppercase;
}

.texto h3 {
  font-size: 1.125rem;
  font-weight: 400;
  font-style: italic;
  margin-bottom: 0.75rem;
}

.texto a {
  color: tomato;
}

.texto a:hover {
  color: darkslategray;
}

/* ---------- 7 · o rodapé ---------- */
footer {
  max-width: 37.5rem;
  margin: 0 auto;
  padding-top: 1.25rem;
  border-top: 1px solid black;
  text-align: center;
}

/* ---------- extra · preto e branco, com cor no hover ---------- */
.galeria img {
  filter: grayscale(1);
}

.galeria img:hover {
  filter: none;
}
```

**O remendo dos espaços:** com `inline-block`, os espaços e as mudanças de linha entre `</li>` e `<li>` (e entre as `<img>`) contam como texto. O menu a 5 × 20% parte em duas linhas, a menos que os `li` fiquem todos colados no HTML. Funciona, mas é um remendo: hoje vemos a ferramenta certa, o flexbox.

A solução completa (index, forsale, css) fica no GitHub no fim da sessão: `solucoes/14-box-model/sol-14.1-analog-specialist/`.

---

## Parte 15 · Fundos e sombras · slides 7–11 (própria 5–9)

### Imagens de fundo · slide 8 (própria 6)

```css
header {
  background-color: #23361a;                 /* fica por baixo: se a imagem falhar */
  background-image: url("../img/horta.svg"); /* o url() conta a partir do .css */
  background-repeat: no-repeat;              /* repeat (por omissão), no-repeat, repeat-x, repeat-y */
  background-position: center;               /* center, top, right center… */
  background-size: cover;                    /* cover (cobre e corta), contain (cabe toda) ou um tamanho */
}
```

Imagem de fundo ou `<img>`? Se é conteúdo (a foto da receita), `<img>` com `alt`. Se é decoração, fundo.

### Sombras · slide 9 (própria 7)

```css
/* sombra: deslocamento x · y · desfoque · cor (transparente, para parecer natural) */
.cartao {
  box-shadow: 0 2px 8px rgb(0 0 0 / 15%);
}
```

A sombra não ocupa espaço: não empurra as outras caixas.

### No Cabaz da semana · os fundos e as sombras · slides 10–11 (própria 8–9)

No Cabaz da sessão 9: `s10/exemplos/14-box-model/css/caixas.css`, secção "3 · os fundos e as sombras", que vem vazia (as imagens estão em `img/`).

```css
/* ---------- 3 · os fundos e as sombras ---------- */

/* uma imagem que cobre o header todo; a cor fica por baixo, para o caso de a imagem falhar */
header {
  background-color: #23361a;
  background-image: url("../img/horta.svg");
  background-size: cover;
  background-position: center;
  color: #ffffff;
  padding: 3rem 1rem;
}

header a {
  color: #ffffff;
}

/* um "azulejo" que se repete */
.como {
  background-image: url("../img/folhas.svg");
  background-repeat: repeat;
  padding: 1.5rem;
  border-radius: 12px;
}

/* sombra: x · y · desfoque · cor */
.cartao {
  background-color: #ffffff;
  box-shadow: 0 2px 8px rgb(0 0 0 / 15%);
}
```

O site das receitas da `s10` já traz os fundos feitos (o 15.1). **Para treinar (opcional):** o enunciado do 15.1 está em `exercicios/15-fundos/`.

---

## Parte 17 · Flexbox · slides 12–19 (própria 10–17)

### O contentor e os itens · slide 13 (própria 11)

```css
/* display: flex no PAI (o contentor): os filhos diretos passam a itens, numa linha */
nav ul {
  display: flex;
  gap: 1rem;                    /* o espaço entre os itens */
}

/* flex-direction: o eixo principal. row (por omissão) ou column */
.cartao {
  display: flex;
  flex-direction: column;
}
```

Só os **filhos diretos** são itens. Dentro de um contentor flex, o `inline-block` dos itens deixa de contar, e os espaços do HTML entre eles também.

### Alinhar · slide 14 (própria 12)

```css
/* no eixo principal (→ com row) */
justify-content: flex-start;    /* (por omissão) center · flex-end · space-between · space-around */

/* no eixo cruzado (↓ com row) */
align-items: stretch;           /* (por omissão) flex-start · center · flex-end */

/* só para um item */
align-self: flex-start;
```

### Espaço, linhas e crescer · slide 15 (própria 13)

```css
.cartoes {
  gap: 1rem;                    /* no contentor: o espaço entre os itens */
  flex-wrap: wrap;              /* no contentor: se não couberem, vão para a linha de baixo */
}

.cartao {
  flex: 1;                      /* no item: cresce e reparte o espaço que sobra, por igual */
  min-width: 12rem;             /* abaixo disto, quebra a linha (com o wrap) */
}

.cartao .botao {
  margin-top: auto;             /* no item: "come" o espaço que sobra, empurra-o para o fundo */
}
```

### Os nove exemplos · slides 16–17 (própria 14–15)

Em `s10/exemplos/17-flexbox/` (já vieram com a pasta s10): nove páginas com o mesmo menu (Home · Search · Logout). Escrevemos no `<style>` de cada página; o `basic.css` só dá as cores. Em cada uma, abram o DevTools e cliquem na etiqueta **flex** ao lado do `nav`.

```html
<nav class="container">
    <div class="home">Home</div>
    <div class="search">Search</div>
    <div class="logout">Logout</div>
</nav>
```

#### 1 · O contentor: `display: flex` · `flex1_flex.html`

```css
/* display: flex no PAI: os filhos diretos passam a itens, numa linha */
.container {
    border: 5px solid #ffcc5c;
    display: flex;
}
```

#### 2 · O eixo principal: `flex-direction` · `flex2_axis.html`

```css
.container {
    border: 5px solid #ffcc5c;
    display: flex;

    /* o eixo principal:
       row (por omissão) · row-reverse · column · column-reverse */
    flex-direction: row-reverse;
}
```

#### 3 · Alinhar no eixo principal: `justify-content` · `flex3_justify.html`

```css
.container {
    border: 5px solid #ffcc5c;
    display: flex;

    /* alinhar no eixo principal:
       flex-start (por omissão) · flex-end · center
       space-between · space-around · space-evenly */
    justify-content: space-between;

    /* experimentar: com flex-direction: column e uma altura,
       o justify-content passa a trabalhar na vertical */
    /* flex-direction: column; height: 500px; */
}
```

#### 4 · Empurrar um item: `margin-left: auto` · `flex4_margin.html`

```css
.container {
    border: 5px solid #ffcc5c;
    display: flex;
}

/* margin-left: auto "come" o espaço que sobra: o Logout vai para a direita */
.logout {
    margin-left: auto;
}
```

#### 5 · O tamanho dos itens: `flex` e `gap` · `flex5_itens.html`

```css
.container {
    border: 5px solid #ffcc5c;
    display: flex;
    gap: 15px;                  /* o espaço entre os itens */
}

/* flex no ITEM: quanto cresce em relação aos outros
   (flex: 1 em todos = larguras iguais) */
.home {
    flex: 2;
}

.search {
    flex: 3;
}

.logout {
    flex: 1;
}
```

#### 6 · Alinhar no eixo cruzado: `align-items` e `align-self` · `flex6_align.html`

```css
.container {
    border: 5px solid #ffcc5c;
    display: flex;
    height: 90vh;               /* altura para se ver o eixo cruzado */

    justify-content: center;    /* no eixo principal (→) */

    /* alinhar no eixo cruzado (↓):
       stretch (por omissão) · flex-start · flex-end · center */
    align-items: center;
}

/* align-self: só para um item */
.search {
    align-self: flex-start;
}
```

#### 7 · Quando não cabem: `flex-wrap` · `flex7_wrapping.html`

```css
.container {
    border: 5px solid #ffcc5c;
    display: flex;

    /* nowrap (por omissão: encolhem para caber) · wrap (passam para a linha de baixo) */
    flex-wrap: wrap;
}

/* itens largos: encolham a janela */
.container > div {
    width: 300px;
}
```

#### 8 · `flex`: grow, shrink e basis · `flex8_grow_shrink_basis.html`

```css
.container {
    border: 5px solid #ffcc5c;
    display: flex;
}

/* flex: flex-grow | flex-shrink | flex-basis
   por omissão: flex: 0 1 auto (não cresce, pode encolher, tamanho do conteúdo) */
.home {
    flex: 1 1 auto;
}

/* começa com 300px, e depois cresce e encolhe como o outro */
.logout {
    flex: 1 1 300px;
}
```

#### 9 · Mudar a ordem: `order` · `flex9_order.html`

```css
.container {
    border: 5px solid #ffcc5c;
    display: flex;
}

/* order: por omissão todos têm 0; menor vem primeiro.
   Muda só o que se vê, não o HTML (atenção à acessibilidade) */
.item1 {
    order: 1;
}

.item3 {
    order: -1;
}
```

### Exercício 17.3 · A newsletter EDP Zero (sozinhos, ~50 min + fim de semana) · slides 18–19 (própria 16–17)

Enunciado: `exercicios/17-flexbox/ex-17.3-newsletter-edp/README.md`. Na pasta: a proposta (`_edp-proposta.png`), as imagens (`images/`) e os textos e as cores (`copy.txt`). Já está em `s10/edp/`: criem lá o `index.html` e o `css/estilos.css`.

**A ordem de trabalho:**

1. O HTML todo primeiro, com os textos do `copy.txt` (um bloco de texto e imagem, copiado cinco vezes)
2. A coluna central: `max-width` ~600px e `margin` auto
3. O topo: o logótipo de um lado, "edp comercial" do outro
4. **Um** bloco de texto e imagem até ficar bem; depois os outros
5. O bloco 2 ao contrário, só com CSS (`flex-direction: row-reverse` ou `order`)
6. A app (as lojas lado a lado e centradas) e os rodapés; as cores e os botões no fim

**Pronto quando:** parece a proposta, os blocos alternam de lado e o layout é todo flexbox (nada de `float` nem `position`). HTML e CSS validados.

**Extra:** a fonte Patron (`images/Patron-Regular.woff`, com `@font-face`), as folhas da secção da app, a onda por baixo da fotografia e os anéis das imagens redondas.

**Acabaram o que dava para hoje?** O **Flexbox Froggy** (https://flexboxfroggy.com/): 24 níveis (dá para pôr em português).

**No Froggy aparecem duas propriedades que não vimos nos exemplos:**

```css
/* flex-flow: a forma curta de flex-direction + flex-wrap (níveis 20 e 24) */
.container {
  flex-flow: column wrap;       /* = flex-direction: column; flex-wrap: wrap; */
}

/* align-content: alinha as LINHAS, quando há flex-wrap e mais do que uma linha (níveis 21 a 24).
   O align-items alinha os itens dentro de cada linha; o align-content arruma as linhas no contentor.
   Valores: flex-start · flex-end · center · space-between · space-around · stretch (por omissão) */
.container {
  flex-wrap: wrap;
  align-content: space-between;
}
```

---

## Para casa · slide 20 (própria 18)

- **17.3 · A newsletter EDP**: acabem-na. É o exercício principal; a solução é no início da sessão 11.
- **O Flexbox Froggy** (https://flexboxfroggy.com/) até ao nível 24. Na segunda perguntamos até onde chegaram.
- **Opcionais**, para quem quiser mais treino (enunciados em `exercicios/`, por tema): 14.1 (acabar o Analog), 15.1 (os fundos nas receitas), 17.1 (o Analog com flexbox) e 17.2 (o flexbox nas receitas).

---

## Links

- MDN · Background: https://developer.mozilla.org/en-US/docs/Web/CSS/background
- MDN · box-shadow: https://developer.mozilla.org/en-US/docs/Web/CSS/box-shadow
- MDN · Flexbox: https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/CSS_layout/Flexbox
- CSS-Tricks · A Complete Guide to Flexbox: https://css-tricks.com/snippets/css/a-guide-to-flexbox/
- Flexbox Froggy (para treinar): https://flexboxfroggy.com/
