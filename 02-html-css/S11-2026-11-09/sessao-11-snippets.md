# Sessão 11 · CSS Grid

**HTML e CSS · joaogoncalves.net** · código para seguir a sessão

O que escrevemos fica em `s11/` no GitHub. Escrevam-no vocês: copiar não conta.
Primeiro, **a solução da newsletter EDP (17.3)**, em conjunto. Depois, o **CSS Grid** (parte 18): a teoria e **sete exemplos pequenos** escritos juntos. Depois da pausa, **a galeria (18.1), sozinhos**.
Os números dos slides são os da versão FLAG (entre parênteses, os da versão própria).

---

## Antes de começar · slide 4 (própria 2)

1. GitHub › **Code › Download ZIP** (ou `git pull`) e copiem a pasta **`02-html-css/s11/`** inteira para a vossa **`s11/`**. Já traz tudo:
   - `edp/`: a **solução** da newsletter EDP (17.3), para vermos juntos (a vossa fica na `s10/edp/`);
   - `exemplos/18-grid/`: os sete exemplos de grid;
   - `galeria/`: o exercício 18.1 (o HTML e o aspeto feitos; falta a grelha).
2. Abram o Live Server na pasta `s11/`.

### A pasta s11 no fim do dia

```text
s11/
├── edp/                        a solução do 17.3 (vimos juntos)
├── exemplos/
│   └── 18-grid/
│       ├── basic.css           as cores dos exemplos (não mexer)
│       ├── 1_example.html      para ver (com exampleBasic.css e exampleGrid.css)
│       └── 2_grid_templates.html … 7_implicitRow.html
└── galeria/                    o exercício 18.1, feito por vocês
    ├── gallery.html
    ├── css/estilos.css         o aspeto + a grelha (vocês)
    └── proposta.png
```

---

## Revisão · A newsletter EDP (17.3) · montada em conjunto · slides 5–6 (própria 3–4)

> **Newsletters por email, no mundo real**
>
> - **Largura:** 600px (entre 600 e 640) é o padrão: cabe nos painéis de leitura do Outlook e do Gmail.
> - **Tabelas e estilos inline:** os clientes de email (sobretudo o **Outlook** no Windows, que desenha com o motor do Word) **não suportam flexbox nem grid**. As newsletters reais fazem-se com `<table>` e `style="…"` em cada elemento. Aqui usamos flexbox para **treinar o flexbox**.
> - **MJML** (https://mjml.io/): escreve-se uma linguagem simples e o MJML gera o HTML de tabelas compatível. Tem editor online: https://mjml.io/try-it-live
> - **Foundation for Emails** (https://get.foundation/emails.html): o mesmo princípio, com o Inky e Sass.
> - **Can I email** (https://www.caniemail.com/): o "Can I use" dos emails — que CSS funciona em que cliente.
> - **Really Good Emails** (https://reallygoodemails.com/): galeria de newsletters reais, para inspiração.

Está em `s11/edp/`: abrimos juntos. O HTML: uma coluna (`div.newsletter`) com o `header` (duas imagens), o `main` (o destaque, cinco `article.bloco` iguais e a secção da app) e o `footer`. O bloco 2 tem mais uma classe: `invertido`.

```html
<article class="bloco">
  <div class="texto">
    <p class="etiqueta">Sorteio</p>
    <h2>Participe até dia 2 de maio 🚗</h2>
    <p>Não deixe escapar esta oportunidade…</p>
    <a href="#" class="botao">Inscrever</a>
  </div>
  <img src="images/carro.png" alt="Renault ZOE azul numa rua de Lisboa">
</article>

<!-- o bloco 2: o mesmo HTML, mais uma classe -->
<article class="bloco invertido">…</article>
```

O CSS, **passo a passo**: o passo 1 já está no ficheiro; os passos 2 a 7 colam-se no fim do `css/estilos.css`, um de cada vez, e vemos a página a montar-se.

### Passo 1 · o mini reset e a página (**já está** no `s11/edp/css/estilos.css`)

```css
/* ---------- 1 · o mini reset e a página ---------- */
* {
  padding: 0;
  margin: 0;
  border: none;
  box-sizing: border-box;
}

/* extra · a fonte da marca (sessão 8) */
@font-face {
  font-family: "Patron";
  src: url("../images/Patron-Regular.woff") format("woff");
  font-display: swap;
}

body {
  background-color: #e9eeed;
  font-family: Arial, Helvetica, sans-serif;
  font-size: 0.875rem;
  line-height: 1.5;
  color: #333333;
}

img {
  display: block;                 /* sem o espaço em baixo das imagens inline */
  max-width: 100%;
}

strong {
  color: #222222;
}
```

### Passo 2 · a coluna central

```css
/* ---------- 2 · a coluna central ---------- */
.newsletter {
  max-width: 37.5rem;             /* 600px, a largura das newsletters */
  margin: 0 auto;
  background-color: #ffffff;
}
```

### Passo 3 · os textos comuns: etiquetas, títulos e botões

```css
/* ---------- 3 · os textos comuns: etiquetas, títulos e botões ---------- */
.etiqueta {
  color: #f43c4e;
  font-size: 0.7rem;
  font-weight: bold;
  text-transform: uppercase;
  letter-spacing: 0.05em;
}

h1,
h2 {
  font-family: "Patron", Arial, sans-serif;
  color: #4fbfa5;
  line-height: 1.2;
  margin: 0.25rem 0 0.75rem;
}

h1 {
  font-size: 1.9rem;
}

h2 {
  font-size: 1.35rem;
}

.botao {
  display: inline-block;
  margin-top: 1rem;
  padding: 0.5rem 1.25rem;
  background-color: #f43c4e;
  color: #ffffff;
  border-radius: 999px;           /* um "comprimido" */
  font-size: 0.7rem;
  font-weight: bold;
  text-transform: uppercase;
  text-decoration: none;
}
```

### Passo 4 · o destaque, centrado

```css
/* ---------- 4 · o destaque: centrado ---------- */
.destaque {
  padding: 2rem 3rem;
  background-color: #f6f6f6;
  text-align: center;
}
```

### Passo 5 · os blocos de texto e imagem: **o flexbox**

```css
/* ---------- 5 · os blocos de texto e imagem: o flexbox ---------- */
.bloco {
  display: flex;
  align-items: center;            /* o texto ao centro, na vertical */
  gap: 1.5rem;
  padding: 1.5rem 2.5rem;
}

.bloco .texto {
  flex: 1;                        /* o texto fica com o espaço que sobra */
}

.bloco img {
  width: 13rem;                   /* a imagem com largura fixa (não encolhe abaixo disto: min-width auto) */
}

/* o bloco 2: a imagem à esquerda, sem mexer na ordem do HTML */
.invertido {
  flex-direction: row-reverse;
}

.cinzento {
  background-color: #f6f6f6;
}
```

> **Porque não `flex-shrink: 0` na imagem?** Os itens flex têm `min-width: auto`: uma imagem com `width: 13rem` já não encolhe abaixo disso. Quem encolhe é o texto (num ecrã estreito, o bloco transborda: amanhã resolve-se com uma media query).
>
> **Alternativa proporcional:** `.bloco .texto { flex: 3; }` e `.bloco img { flex: 1; min-width: 0; }`. Sem o `min-width: 0`, a imagem recusa ficar abaixo da largura natural (~536px) e rebenta o bloco.

### Passo 6 · a app: uma folha de cada lado, o texto ao meio

```css
/* ---------- 6 · a app: uma folha de cada lado, o texto ao meio ---------- */
.app {
  display: flex;
  justify-content: space-between;
  align-items: center;
  background-color: #c9ebe5;
  text-align: center;
  overflow: hidden;
}

.folha {
  width: 6rem;
}

.app-texto {
  padding: 2rem 0.5rem;
}

.app h2 {
  color: #333333;
}

.hashtag {
  color: #4fbfa5;
  font-weight: bold;
  margin-bottom: 0.75rem;
}

/* as lojas lado a lado e centradas */
.lojas {
  display: flex;
  justify-content: center;
  gap: 0.5rem;
  margin-top: 1rem;
}

.lojas img {
  height: 2.25rem;
  width: auto;
}
```

### Passo 7 · os rodapés

```css
/* ---------- 7 · os rodapés ---------- */
.rodape-marca {
  display: flex;
  justify-content: center;
  padding: 1.25rem;
  background-color: #3a3a3a;
}

.rodape-marca img {
  width: 9rem;
}

.rodape-legal {
  padding: 1.5rem 2rem;
  background-color: #222222;
  color: #cccccc;
  font-size: 0.7rem;
  text-align: center;
}

.rodape-legal p + p {
  margin-top: 0.75rem;
}

.rodape-legal a {
  color: #ffffff;
}
```

---

## Parte 18 · CSS Grid · slides 7–15 (própria 5–13)

### Flexbox ou grid? · slide 8 (própria 6)

- **Flexbox: uma dimensão.** Uma linha (ou uma coluna) de cada vez; o conteúdo decide os tamanhos. Menus, barras, cartões, centrar.
- **Grid: duas dimensões.** Linhas e colunas ao mesmo tempo; a grelha decide os tamanhos. Páginas, galerias, dashboards.
- Usam-se os dois juntos: grid para a grelha, flexbox para o que está dentro de cada peça.

```css
/* como no flexbox: display no PAI; os filhos diretos passam a itens da grelha */
.container {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  gap: 5px;
}
```

### As colunas, as linhas e a unidade fr · slide 9 (própria 7)

```css
.container {
  display: grid;
  grid-template-columns: 1fr 2fr 1fr;   /* um valor por coluna; fr = fração do espaço que sobra */
  grid-template-rows: 100px 100px;      /* um valor por linha */
  gap: 5px;
}

/* repeat(): repeat(3, 1fr) = 1fr 1fr 1fr */
grid-template-columns: repeat(3, 1fr);

/* a forma curta: linhas / colunas */
grid-template: repeat(2, 100px) / repeat(3, 1fr);
```

As **linhas** da grelha numeram-se a partir de 1: 3 colunas têm 4 linhas verticais. `-1` é sempre a última.

### Pôr os itens no sítio: span e áreas · slide 10 (própria 8)

```css
/* grid-column: linha de início / linha de fim */
.header { grid-column: 1 / -1; }      /* de ponta a ponta */

/* span: ocupa N colunas (ou linhas), a partir de onde estiver */
.menu    { grid-column: span 3; }
.content { grid-column: span 9; }
.alto    { grid-row: span 2; }

/* ou desenhar a página com nomes ("." = célula vazia) */
.container {
  grid-template-areas:
    "h h h ."
    "c c c m"
    "f f f m";
}
.header { grid-area: h; }
.menu   { grid-area: m; }
```

### Uma grelha que se adapta sozinha · slide 11 (própria 9)

```css
/* quantas colunas couberem, nunca com menos de 100px: responsivo sem media queries */
.container {
  grid-template-columns: repeat(auto-fit, minmax(100px, 1fr));
  grid-auto-rows: 100px;                /* a altura das linhas que o browser cria sozinho */
}
```

### Os sete exemplos · slides 12–13 (própria 10–11)

Em `s11/exemplos/18-grid/`. O 1 é para ver; nos outros escrevemos no `<style>` de cada página (o `basic.css` só dá as cores). Em cada um, abram o DevTools e cliquem na etiqueta **grid** ao lado do contentor: desenha as linhas numeradas.

#### 1 · Para ver: CSS Grid e Bootstrap · `1_example.html`

O mesmo layout de duas maneiras. Com CSS Grid, o HTML fica limpo e o layout está no CSS (`exampleGrid.css`); com Bootstrap, o layout está no HTML (`row`, `col-4`, `col-8`). Encolham a janela abaixo de 480px: o grid muda o layout com uma media query (sessão 12).

```css
/* exampleGrid.css · o layout do exemplo 1 com CSS Grid */
.wrapper {
    display: grid;
    grid-template-columns: repeat(12, 1fr);     /* 12 colunas iguais, como no Bootstrap */
    grid-template-rows: 40px 100px 40px;
}

.header { grid-column: span 12; }
.menu { grid-column: span 4; }
.content { grid-column: span 8; }
.footer { grid-column: span 12; }

/* espreitar o RWD (sessão 12): em ecrãs pequenos, o layout muda só no CSS */
@media screen and (max-width: 480px) {
    .header { grid-column: span 6; }
    .menu {
        grid-row: 1;
        grid-column: span 6;
    }
    .content { grid-column: span 12; }
}
```

#### 2 · As colunas e as linhas: `grid-template-columns` e `grid-template-rows` · `2_grid_templates.html`

```css
.container {
    display: grid;

    /* as colunas e as linhas: um valor por coluna, um valor por linha */
    grid-template-columns: 100px auto 50px;
    grid-template-rows: 100px 300px 100px;

    gap: 5px;                   /* o espaço entre células (como no flexbox) */
}
```

#### 3 · A unidade `fr` e o `repeat()` · `3_grid_units_repeat.html`

```css
.container {
    display: grid;
    gap: 3px;

    /* passo a passo:
       grid-template-columns: 100px auto 100px;
       grid-template-columns: 1fr 3fr 1fr;        fr = uma fração do espaço que sobra
       grid-template-columns: repeat(3, 1fr);     três colunas iguais
       grid-template-rows: repeat(2, 100px);      */

    /* a forma curta: linhas / colunas */
    grid-template: repeat(2, 100px) / repeat(3, 1fr);
}
```

#### 4 · Pôr um item a ocupar várias colunas: `grid-column` e `span` · `4_positioning.html`

```css
.container {
    display: grid;
    gap: 3px;
    grid-template-columns: repeat(12, 1fr);     /* a grelha de 12 colunas */
    grid-template-rows: 40px 200px 40px;
}

/* grid-column: linha de início / linha de fim
   (as linhas contam-se a partir de 1; -1 é a última) */
.header {
    grid-column: 1 / -1;        /* de ponta a ponta */
}

/* span: "ocupa N colunas", a partir de onde estiver */
.menu {
    grid-column: span 3;        /* = 1 / span 3 = 1 / 4 */
}

.content {
    grid-column: span 9;
}

.footer {
    grid-column: 1 / -1;
}
```

#### 5 · Dar nomes às zonas: `grid-template-areas` · `5_areas.html`

```css
.container {
    height: 100%;
    display: grid;
    gap: 3px;
    grid-template-columns: repeat(12, 1fr);
    grid-template-rows: 40px auto 40px;

    /* o desenho da página: um nome por célula, "." = vazia */
    grid-template-areas:
        "h h h h h h h h h h h ."
        "c c c c c c c c c c c m"
        "f f f f f f f f f f f m";
}

/* cada item vai para a sua zona */
.header {
    grid-area: h;
}

.menu {
    grid-area: m;
}

.content {
    grid-area: c;
}

.footer {
    grid-area: f;
}
```

#### 6 · Colunas que se adaptam: `auto-fit` e `minmax()` · `6_autoFit_minmax.html`

```css
.container {
    display: grid;
    gap: 5px;

    /* passo a passo (encolham e estiquem a janela em cada um):
       grid-template-columns: repeat(6, 100px);
       grid-template-columns: repeat(6, 1fr);
       grid-template-columns: repeat(auto-fit, 100px);   quantas couberem */

    /* quantas couberem, nunca menos de 100px, e esticam para encher a linha.
       Responsivo sem media queries! */
    grid-template-columns: repeat(auto-fit, minmax(100px, 1fr));

    grid-auto-rows: 100px;      /* a altura de todas as linhas */
}

.teste {
    grid-column: span 3;
}
```

#### 7 · As linhas que sobram: `grid-auto-rows` · `7_implicitRow.html`

```css
.container {
    display: grid;
    gap: 5px;
    grid-template-columns: repeat(auto-fit, minmax(100px, 1fr));
    grid-template-rows: repeat(2, 100px);       /* só duas linhas definidas */

    /* as linhas a mais (implícitas) ficavam com a altura do conteúdo:
       grid-auto-rows dá-lhes uma altura */
    grid-auto-rows: 100px;
}
```

### Exercício 18.1 · A galeria com CSS Grid (sozinhos, ~50 min) · slides 14–15 (própria 12–13)

Enunciado: `exercicios/18-grid/ex-18.1-galeria/README.md`. Em `s11/galeria/`: o HTML (com as classes) e o aspeto já estão feitos; a grelha escreve-se no fim do `css/estilos.css`.

1. O `main` é a grelha: 6 colunas iguais e `5px` de espaço
2. Todas as linhas com `20vh` de altura (as linhas são implícitas)
3. `c2xr1`: 2 colunas · `c3xr1`: 3 colunas
4. `c2xr2`: 2 × 2 · `c3xr2`: 3 × 2 (colunas e linhas)
5. Comparar com a proposta: sem buracos; validar o CSS

**Extra:** um zoom suave nas fotografias ao passar o rato (`transition` e `transform: scale()`), sem sair da célula (`overflow: hidden` no `figure`).

**Acabaram?** O **Grid Garden** (https://cssgridgarden.com/): 28 níveis, do autor do Flexbox Froggy.

---

## Para casa · slide 16 (própria 14)

- **18.1 · A galeria**: acabem-na. Amanhã (sessão 12) começamos por ela e tornamo-la responsiva.
- **O Grid Garden** (https://cssgridgarden.com/).
- **A EDP**: quem não acabou, compare com a solução — nos snippets (passos 1 a 7) e no GitHub, em `solucoes/17-flexbox/sol-17.3-newsletter-edp/` — e acabe a sua.

---

## Links

- MDN · CSS Grid Layout: https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_grid_layout
- CSS-Tricks · A Complete Guide to CSS Grid: https://css-tricks.com/snippets/css/complete-guide-grid/
- Grid Garden (para treinar): https://cssgridgarden.com/
- Flexbox Froggy (para rever): https://flexboxfroggy.com/
