# Sessão 12 · Responsive e position

**HTML e CSS · joaogoncalves.net** · código para seguir a sessão

O que escrevemos fica em `s12/` no GitHub. Escrevam-no vocês: copiar não conta.
Primeiro, **a galeria do 18.1**, em conjunto. Depois, o **responsive** (parte 19): a teoria e **três exemplos** escritos juntos. Depois da pausa, **a galeria responsiva (19.1), sozinhos**. No fim, **o position** (parte 16) e o fecho do módulo.
Os números dos slides são os da versão FLAG (entre parênteses, os da versão própria).

---

## Antes de começar · slide 4 (própria 2)

1. GitHub › **Code › Download ZIP** (ou `git pull`) e copiem a pasta **`02-html-css/s12/`** inteira para a vossa **`s12/`**. Já traz tudo:
   - `galeria/`: a galeria do 18.1, **ainda sem a grelha** (escrevemo-la juntos; a vossa fica na `s11/galeria/`);
   - `exemplos/19-responsive/`: os três exemplos de responsive;
   - `exemplos/16-position/`: o Cabaz da semana, para o position.
2. Abram o Live Server na pasta `s12/`.
3. Abram o DevTools no **modo dispositivo**: **Ctrl+Shift+M** (Windows) ou **Cmd+Shift+M** (Mac), com o DevTools aberto (F12).

### A pasta s12 no fim do dia

```text
s12/
├── galeria/                      o 18.1 (juntos) e o 19.1 (vocês)
│   ├── gallery.html
│   ├── css/estilos.css           o aspeto + a grelha + as media queries
│   ├── proposta.png              a do 18.1
│   └── proposta-19.1.png         as três formas
└── exemplos/
    ├── 19-responsive/
    │   ├── 1_breakpoints.html    as imagens flexíveis e dois breakpoints
    │   ├── 2_layout_flex.html    uma página com flexbox
    │   ├── 3_layout_grid_areas.html   a mesma página com grid
    │   └── rwd.jpg
    └── 16-position/
        ├── cabaz.html
        └── css/                  base.css (não mexer) e position.css (hoje)
```

---

## Revisão · A galeria (18.1) · em conjunto · slides 5–6 (própria 3–4)

Em `s12/galeria/css/estilos.css`, no bloco **18.1**. Quatro ideias:

1. O `main` é a grelha: 6 colunas iguais e 5px de espaço.
2. As alturas com `grid-auto-rows` (e **não** `grid-template-rows`): não sabemos quantas linhas vão ser; todas as que o browser cria ficam com `20vh`.
3. As peças largas com `grid-column: span N`; as altas também com `grid-row: span 2`.
4. Extra: o zoom com `transition` e `transform: scale()`, e `overflow: hidden` no `figure` para não sair da célula.

```css
/* o main é o contentor: 6 colunas iguais, linhas de 20vh */
main {
    display: grid;
    gap: 5px;
    grid-template-columns: repeat(6, 1fr);
    grid-auto-rows: 20vh;           /* todas as linhas (implícitas) com a mesma altura */
}

/* as peças maiores: span nas colunas e nas linhas */
.c2xr1 {
    grid-column: span 2;
}

.c2xr2 {
    grid-column: span 2;
    grid-row: span 2;
}

.c3xr1 {
    grid-column: span 3;
}

.c3xr2 {
    grid-column: span 3;
    grid-row: span 2;
}

/* ---------- extra · as imagens com um zoom suave ---------- */
figure {
    overflow: hidden;               /* o zoom não sai da célula */
}

figure img {
    transition: transform 0.4s;
}

figure img:hover {
    transform: scale(1.08);
}
```

### As imagens dentro das células · `object-fit` · slide 6 (própria 4)

A célula tem um tamanho (decidido pela grelha) e a fotografia tem outro (as suas proporções). Esta regra diz quem cede. Só se vê a funcionar depois do `grid-auto-rows`: antes disso, as células não têm altura definida.

```css
/* já vinha no estilos.css (a parte do "aspeto") */
figure img {
    display: block;         /* 4 · a img é inline: sem isto, sobram uns píxeis por baixo */
    width: 100%;            /* 2 · a caixa da imagem com a largura da célula... */
    height: 100%;           /* 2 · ...e com a altura (sozinhas, esticam a fotografia) */
    object-fit: cover;      /* 3 · mantém as proporções, enche a célula e corta o que sobra */
}
```

O mesmo numa página só, sem a grelha à volta: `s12/exemplos/18-object-fit/object-fit.html` (uma caixa de 600 × 400 e uma fotografia de 1200 × 1200).

Para perceber, comentem a regra e reconstruam-na:

1. Sem a regra: as imagens aparecem no tamanho natural e saem das células. A grelha manda nas `figure`, não nas `img` que estão lá dentro.
2. `width: 100%` e `height: 100%`: a imagem fica do tamanho da célula, mas esticada ou esmagada. É o valor por omissão, `object-fit: fill`.
3. `object-fit: cover`: mantém as proporções, enche a célula e corta o que sobra. É o `background-size: cover` (sessão 10), mas para uma `<img>`. Com `contain`, a imagem aparece inteira e sobram faixas vazias.
4. `display: block`: a `img` é `inline` (sessão 9), fica pousada na linha de base do texto e deixa uns píxeis por baixo. Em bloco, a folga desaparece.

> **`width` e `height` dizem o tamanho da caixa da imagem; `object-fit` diz como a fotografia se comporta lá dentro.**

O corte é ao centro; muda-se com `object-position` (como o `background-position`): `object-position: top`, `left center`…

Porque não um `background-image`? Estas fotografias são conteúdo (têm `alt`); o fundo é para decoração.

> **Encolham a janela:** a grelha de 6 colunas no telemóvel fica impossível de ver. É o problema de hoje.

---

## Parte 19 · Responsive

### O que é · slide 8 (própria 6)

**Responsive web design** (o nome é de Ethan Marcotte, 2010): **um** site, **um** HTML, que se adapta a qualquer ecrã. Muda só o CSS. Três ingredientes:

1. **Uma grelha fluida:** larguras em `%`, `fr`, `rem`; nada fixo em `px` que não caiba.
2. **Imagens flexíveis:** `max-width: 100%`.
3. **Media queries:** regras que só se aplicam a partir de uma certa largura.

### A meta viewport · slide 9 (própria 7)

Sem esta linha, o telemóvel finge ter 980px de largura e encolhe a página toda (e as media queries nunca funcionam). O `!` do Emmet já a põe:

```html
<meta name="viewport" content="width=device-width, initial-scale=1.0">
```

### As media queries · slide 10 (própria 8)

```css
/* fora de uma media query: vale para todos os tamanhos */
.galeria {
  grid-template-columns: 1fr;
}

/* dentro: só a partir de 40rem (640px) de largura */
@media (min-width: 40rem) {
  .galeria {
    grid-template-columns: 1fr 1fr;
  }
}

/* min-width = "a partir de" · max-width = "até" */
/* a sintaxe nova (browsers atuais, 2023+), igual à primeira: */
@media (width >= 40rem) { … }
```

Há mais do que largura: `orientation: landscape`, `prefers-color-scheme: dark` (o modo escuro do sistema), `prefers-reduced-motion: reduce` (quem desliga as animações), `print` (a página impressa). O `screen and (…)` que vão ver em código antigo hoje é dispensável.

### Mobile-first e os breakpoints · slide 11 (própria 9)

- **Mobile-first:** o CSS de base é o do **telemóvel** (o mais simples); cada media query com `min-width` só **acrescenta** o que muda.
- **Por ordem crescente:** primeiro a de `40rem`, depois a de `64rem` (a última ganha: é a cascata).
- **Os breakpoints vêm do conteúdo**, não dos aparelhos: alarguem a janela devagar; onde o layout "parte", põe-se um. Dois ou três chegam. `40rem` (640px) e `64rem` (1024px) são bons pontos de partida.
- **Em `rem`**: quem aumentou a letra no browser recebe o layout mais simples mais cedo.
- **Testar:** DevTools › modo dispositivo (**Ctrl/Cmd+Shift+M**): "Responsive" e arrastar a largura, ou escolher um telemóvel.

### Responsivo sem media queries · slide 12 (própria 10)

```css
/* imagens e vídeos que nunca rebentam a caixa */
img, video { max-width: 100%; height: auto; }

/* flexbox: os itens passam à linha seguinte quando não cabem */
.cartoes { display: flex; flex-wrap: wrap; gap: 1rem; }

/* grid: quantas colunas couberem, nunca menos de 15rem */
.cartoes { display: grid; grid-template-columns: repeat(auto-fit, minmax(15rem, 1fr)); }

/* clamp(mínimo, ideal, máximo): cresce com a janela, entre um mínimo e um máximo */
h1 { font-size: clamp(1.5rem, 5vw, 3rem); }
```

> **Primeiro sem, depois com:** tentem primeiro sem media query; quando o layout tem de mudar de forma (o número de colunas, o menu, os span), aí sim, uma media query. (As container queries ficam no "Para pesquisar", no fim.)

---

## Os exemplos · slides 13–14 (própria 11–12)

Em `s12/exemplos/19-responsive/`. O CSS de base já está; escrevemos nos blocos "escrevam aqui" do `<style>`. Em cada um: **modo dispositivo, estreito**; escrever uma media query; **alargar devagar** e ver o layout mudar.

#### 1 · As imagens flexíveis e dois breakpoints · `1_breakpoints.html`

A cor de fundo muda em cada breakpoint (aquamarine → tomato → lightgreen), para os vermos. O texto da primeira coluna (em inglês) é a teoria dos breakpoints: vale a pena ler.

```css
/* ---------- 1 · as imagens flexíveis ---------- */
/* nunca mais largas do que a caixa onde estão (e a altura acompanha) */
img {
    max-width: 100%;
    height: auto;
}

/* ---------- 2 · o primeiro breakpoint: 40rem (640px) ---------- */
/* a partir de 40rem: duas colunas, e a terceira passa para baixo */
@media (min-width: 40rem) {
    body {
        background-color: tomato;
        display: flex;
        flex-wrap: wrap;
        gap: 0 2rem;
    }

    .col1 { flex: 3; }
    .col2 { flex: 2; }
    .col3 { flex-basis: 100%; }      /* uma linha só para ela */
}

/* ---------- 3 · o segundo breakpoint: 64rem (1024px) ---------- */
/* a partir de 64rem: três colunas. Só mudamos o que muda. */
@media (min-width: 64rem) {
    body {
        background-color: lightgreen;
    }

    .col3 { flex: 2; }               /* volta a caber na linha */
}

/* a sintaxe nova (2023+), igual: @media (width >= 64rem) { … } */
    
```

> **Experimentem:** troquem a ordem das duas media queries. O que acontece a partir de 64rem? Porquê?

#### 2 · Uma página com flexbox · `2_layout_flex.html`

Do NOV-22 (`flex10`). Telemóvel: tudo empilhado; a partir de 40rem, os dois asides lado a lado; a partir de 64rem, aside · main · aside.

```css
/* a base (telemóvel): os itens com 100% de largura, um por linha */
.container {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
}

.container > * {
    flex: 1 1 100%;
}

/* ---------- a partir de 40rem: os dois asides lado a lado ---------- */
@media (min-width: 40rem) {
    .aside { flex: 1 1 0; }          /* partilham a linha */
}

/* ---------- a partir de 64rem: aside | main | aside ---------- */
@media (min-width: 64rem) {
    .main   { flex: 3 1 0; order: 2; }   /* o triplo dos asides, ao meio */
    .aside1 { order: 1; }
    .aside2 { order: 3; }
    .footer { order: 4; }
}

/* atenção: o order muda só o que se VÊ. O leitor de ecrã e a tecla Tab
   continuam a seguir a ordem do HTML. */
    
```

#### 3 · A mesma página com grid · `3_layout_grid_areas.html`

O mesmo HTML do 2. Em cada breakpoint redesenhamos a grelha com `grid-template-areas`; os itens nunca mudam.

```css
/* a base (telemóvel): uma coluna, as zonas umas por baixo das outras */
.container {
    display: grid;
    gap: 10px;
    grid-template-areas:
        "header"
        "main"
        "aside1"
        "aside2"
        "footer";
}

.header { grid-area: header; }
.main   { grid-area: main; }
.aside1 { grid-area: aside1; }
.aside2 { grid-area: aside2; }
.footer { grid-area: footer; }

/* ---------- a partir de 40rem: duas colunas ---------- */
@media (min-width: 40rem) {
    .container {
        grid-template-columns: 1fr 1fr;
        grid-template-areas:
            "header header"
            "main   main"
            "aside1 aside2"
            "footer footer";
    }
}

/* ---------- a partir de 64rem: três colunas ---------- */
@media (min-width: 64rem) {
    .container {
        grid-template-columns: 1fr 3fr 1fr;
        grid-template-areas:
            "header header header"
            "aside1 main   aside2"
            "footer footer footer";
    }
}
    
```

---

## Exercício 19.1 · A galeria responsiva (sozinhos, ~30 min) · slides 15–16 (própria 13–14)

Enunciado: `exercicios/19-responsive/ex-19.1-galeria-responsiva/README.md` (com a `proposta-19.1.png`). Na vossa `s12/galeria/`, no bloco **19.1**.

1. A base (telemóvel): o `main` com **1 coluna**, linhas de `15rem`, `5px` de espaço
2. A partir de `40rem`: **2 colunas**, linhas de `12rem`
3. Aí, as peças com classe ocupam as 2 colunas; as `…r2`, também 2 linhas
4. A partir de `64rem`: **6 colunas**, `20vh`, as `c3…` com 3 colunas
5. Sem scroll para o lado em nenhum tamanho; validar o CSS

**Extra:** o título encolhe no telemóvel sem media query: `font-size: clamp(1.1rem, 4vw, 2rem)`.

**Acabaram?** O **19.2** (as receitas no telemóvel): `exercicios/19-responsive/ex-19.2-receitas-no-telemovel.md`.

### Solução 19.1 · slide 17 (própria 15)

A grelha do 18.1 **mudou de sítio**: os `span` passaram para dentro das media queries (no telemóvel, com uma coluna só, um `span 2` criava uma coluna a mais e a página ficava mais larga do que o ecrã).

```css
/* ---------- 19.1 · a galeria responsiva ---------- */

/* telemóvel (a base, sem media query): uma coluna.
   As classes c2xr1, c3xr2… ainda não fazem nada: com uma só coluna,
   um span 2 criava colunas a mais (implícitas) e a página rebentava para o lado. */
main {
    display: grid;
    gap: 5px;
    grid-template-columns: 1fr;
    grid-auto-rows: 15rem;
}

/* tablet: a partir de 40rem (640px), duas colunas */
@media (min-width: 40rem) {
    main {
        grid-template-columns: repeat(2, 1fr);
        grid-auto-rows: 12rem;
    }

    /* todas as peças largas ocupam as duas colunas */
    .c2xr1,
    .c2xr2,
    .c3xr1,
    .c3xr2 {
        grid-column: span 2;
    }

    /* e as altas, duas linhas */
    .c2xr2,
    .c3xr2 {
        grid-row: span 2;
    }
}

/* ecrã grande: a partir de 64rem (1024px), a grelha do 18.1 */
@media (min-width: 64rem) {
    main {
        grid-template-columns: repeat(6, 1fr);
        grid-auto-rows: 20vh;
    }

    /* as de 3 colunas passam a 3 (as de 2 e as linhas já vêm do tablet) */
    .c3xr1,
    .c3xr2 {
        grid-column: span 3;
    }
}
```

**O extra:**

```css
/* ---------- extra · o título encolhe no telemóvel ---------- */
/* clamp(mínimo, ideal, máximo): o tamanho acompanha a largura da janela, sem media query */
h1 {
    font-size: clamp(1.1rem, 4vw, 2rem);
    text-align: center;
}
```

---

## Parte 16 · Position (para consulta; na sessão, só se houver tempo)

### Os cinco valores · slide 19 (própria 17)

| Valor | O que faz | Em relação a quê |
|---|---|---|
| `static` | o normal: segue o fluxo; `top`/`left` não fazem nada | — |
| `relative` | desloca-se um pouco; o lugar original fica guardado | a si próprio |
| `absolute` | sai do fluxo (os outros ocupam o lugar) | ao antepassado mais próximo **com position** (se não houver: a página) |
| `fixed` | não se mexe com o scroll | à janela |
| `sticky` | normal até chegar ao `top` que lhe damos; depois fica preso | ao contentor com scroll |

`top`, `right`, `bottom`, `left` dizem onde. **`z-index`**: quem fica por cima, entre caixas com `position` (maior = por cima).

### O Cabaz: o selo, o topo e o "↑ topo" · slide 20 (própria 18)

Em `s12/exemplos/16-position/`: abrir o `cabaz.html` e escrever no `css/position.css` (o `base.css` não se mexe). O link "↑ topo" e o `id="topo"` já estão no HTML.

1. Primeiro só o `absolute` no selo: voa para o canto da **página**. Porquê? Depois o `relative` no cartão.
2. O `sticky` no header; fazer scroll.
3. Ao fazer scroll, o selo passa **por cima** do header: o `z-index`.
4. O `fixed` no "↑ topo".

```css
/* ---------- 1 · o selo no canto do cartão ---------- */
/* o cartão é a referência: relative sem top/left não o mexe */
.cartao {
  position: relative;
}

/* absolute: sai do fluxo (não empurra o h3) e fica em relação ao
   antepassado com position mais próximo: o cartão */
.selo {
  position: absolute;
  top: -0.8rem;               /* em cima da border */
  right: 1rem;
}


/* ---------- 2 · o topo sempre visível ---------- */
/* sticky: normal até chegar ao top: 0; depois fica preso */
header {
  position: sticky;
  top: 0;
  z-index: 10;                /* sem isto, o selo passa por cima do header */
}


/* ---------- 3 · o link "↑ topo" ---------- */
/* fixed: em relação à janela; não se mexe com o scroll */
.topo {
  position: fixed;
  right: 1rem;
  bottom: 1rem;
}
```

> É exatamente o **16.1** (o position no site das receitas): fica para casa.

---

## Para casa · slide 21 (própria 19)

- **19.1 · A galeria responsiva**: quem não acabou, acabe (a solução está aqui e no GitHub). Depois, o extra com `clamp()`.
- **16.1 · O position nas receitas**: `exercicios/16-position/ex-16.1-position-nas-receitas.md`.
- **19.2 · As receitas no telemóvel** (opcional): `exercicios/19-responsive/ex-19.2-receitas-no-telemovel.md`.

## Para pesquisar · slide 21 (própria 19)

**As container queries (`@container`):** media queries que olham para a largura da caixa onde a peça está, e não para a da janela. Não as vimos: ficam para quando fizerem componentes (React).

- MDN · Container queries: https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_containment/Container_queries

---

## Para continuar · slide 23 (própria 21)

- Consultar: **MDN** · https://developer.mozilla.org/
- Estudar: **web.dev · Learn CSS** · https://web.dev/learn/css
- Praticar com designs reais: **Frontend Mentor** · https://www.frontendmentor.io/
- Rever: **Flexbox Froggy** · https://flexboxfroggy.com/#pt-pt · **Grid Garden** · https://cssgridgarden.com/#pt-pt
- Tudo o que fizemos: https://github.com/JoaoGoncalves/flag-frontend-2026 (pasta `02-html-css`)
- A sintaxe `(width >= 40rem)` das media queries: https://web.dev/articles/media-query-range-syntax

---

## Amanhã · slide 24 (própria 22)

**Módulo 3 · Git e GitHub** (4.ª, 11 nov, 9:30; e 13 e 16 nov). Antes: **instalar o Git** (https://git-scm.com/downloads; confirmar com `git --version` no terminal) e **criar uma conta no GitHub** (https://github.com/), se ainda não têm.

---

## Links

- MDN · Responsive design: https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/CSS_layout/Responsive_Design
- MDN · Using media queries: https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_media_queries/Using_media_queries
- web.dev · Learn Responsive Design: https://web.dev/learn/design
- Ethan Marcotte · Responsive Web Design (A List Apart, 2010): https://alistapart.com/article/responsive-web-design/
- Chrome DevTools · Device Mode: https://developer.chrome.com/docs/devtools/device-mode
- MDN · position: https://developer.mozilla.org/en-US/docs/Web/CSS/position
- MDN · Container queries: https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_containment/Container_queries
- Grid Garden: https://cssgridgarden.com/ · Flexbox Froggy: https://flexboxfroggy.com/
- MDN · clamp(): https://developer.mozilla.org/en-US/docs/Web/CSS/clamp
- Fira Code (os símbolos ≥ ≤ ≠ → no VS Code): https://github.com/tonsky/FiraCode

---

## Extra · os símbolos (≥, ≤, ≠, →) no VS Code: a fonte Fira Code

Quando escrevo `>=`, `<=`, `!=`, `=>` ou `->`, o meu VS Code mostra **≥, ≤, ≠, ⇒, →**. É só aspeto: são **ligaduras** (*ligatures*) da fonte. No ficheiro continuam lá os dois caracteres, e o browser lê-os como sempre.

1. Instalar a fonte **Fira Code** (gratuita): https://github.com/tonsky/FiraCode (também está no Google Fonts: https://fonts.google.com/specimen/Fira+Code). No Mac: `brew install --cask font-fira-code`.
2. No VS Code: **Cmd+Shift+P** (Mac) ou **Ctrl+Shift+P** (Windows) › **Preferences: Open User Settings (JSON)** e acrescentar:

```json
{
    "editor.fontFamily": "'Fira Code', Menlo, Consolas, monospace",
    "editor.fontLigatures": true
}
```

3. Reiniciar o VS Code, se as ligaduras não aparecerem logo.

Explicado passo a passo (com Windows, Mac e Linux): https://github.com/tonsky/FiraCode/wiki/VS-Code-Instructions
