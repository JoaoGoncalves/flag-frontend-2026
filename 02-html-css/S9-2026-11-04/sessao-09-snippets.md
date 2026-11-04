# Sessão 9 · O box model

**HTML e CSS · joaogoncalves.net** · código para seguir a sessão

O que escrevemos fica em `s09/` no GitHub. Escrevam-no vocês: copiar não conta.
Até à pausa: **teoria → código comigo num exemplo**. Depois da pausa: **o exercício 14.1, sozinhos** (The Analog Specialist).
Exercícios por tema: **13** cores, texto e fontes (o 13.2, em conjunto) · **14** box model (o 14.1 na sessão, o 14.2 para casa). Os fundos e as sombras (parte 15) passam para a sessão 10.
Os números dos slides são os da versão FLAG (entre parênteses, os da versão própria).

---

## Antes de começar · slides 4–5 (própria 2–3)

O 13.2 ficou para casa: fazemo-lo agora, em conjunto. No GitHub há uma pasta nova, `02-html-css/exemplos/14-box-model/`, com a página de exemplo de hoje.

1. Copiem a **vossa** `s08/site/` para **`s09/site/`** (com o que fizeram do 13.2). Quem não a tiver: `02-html-css/s08/site/` do GitHub.
2. GitHub › **Code › Download ZIP** (ou `git pull`) e copiem `02-html-css/exemplos/14-box-model/` para **`s09/exemplos/14-box-model/`**.
3. Copiem também `02-html-css/exercicios/14-box-model/ex-14.1-analog-specialist/` para **`s09/analog/`** (é para depois da pausa).
4. Abram o Live Server na pasta `s09/`.

### A pasta s09 no fim do dia

```text
s09/
├── exemplos/
│   └── 14-box-model/
│       ├── caixas.html         o Cabaz da semana
│       ├── css/caixas.css      o box model e o display
│       └── img/                horta.svg · folhas.svg (para a sessão 10)
├── analog/                     o exercício 14.1, feito por vocês
│   ├── index.html
│   ├── forsale.html
│   ├── css/estilos.css
│   ├── img/                    clavinet.jpg · rhodes.jpg · wurlitzer.jpg
│   └── proposta/               index.png · forsale.png
└── site/
    ├── css/estilos.css         11.1 · 12.2 · 13.2 · 14.2 (em casa)
    ├── index.html
    ├── sobre.html
    └── receitas/
```

---

## Revisão · Exercício 13.2 · O aspeto das receitas (em conjunto) · slides 6–8 (própria 4–6)

Enunciado: `exercicios/13-cores-texto/ex-13.2-aspeto-das-receitas.md`. Tudo no `s09/site/css/estilos.css`, a seguir ao 12.2, sem mexer no HTML.

1. `h1, h2` sem serifa: `"Trebuchet MS", Arial, sans-serif`
2. `h1` a `2.25rem` e `h2` a `1.5rem`
3. `nav a` sem sublinhado e a negrito; `nav a:hover` sublinhado
4. `figcaption` centrado, itálico e `hsl(0 0% 36%)`; `time` a negrito
5. Sobre: `th` com fundo `rgb(243 227 195)`; `tfoot` a `0.875rem`
6. Contraste do `.intro` no DevTools (7,17 : 1); validar o CSS

---

## Parte 14 · O box model · slides 9–19 (própria 7–17)

### O box model · slide 10 (própria 8)

Cada elemento é uma caixa. De dentro para fora:

| Camada | O que é |
|---|---|
| conteúdo | o texto ou a imagem; `width` e `height` medem-no (por omissão) |
| `padding` | espaço por dentro, entre o conteúdo e a border; tem o fundo da caixa |
| `border` | a linha à volta |
| `margin` | espaço por fora; afasta as outras caixas; é transparente |

No DevTools: Elements › o elemento › **Computed** (ou **Layout**): o desenho da caixa, com os números.

### Padding, border e margin · slide 11 (própria 9)

```css
margin: 10px;               /* os quatro lados */
margin: 10px 20px;          /* cima e baixo · esquerda e direita */
margin: 5px 10px 15px;      /* cima · lados · baixo */
margin: 1px 2px 3px 4px;    /* cima · direita · baixo · esquerda (o relógio) */
padding-top: 1rem;          /* um lado de cada vez: -top, -right, -bottom, -left */

border: 2px solid #6a8320;  /* largura · estilo · cor (solid, dashed, dotted…) */
border-left: 4px solid #8a5a00;
border-radius: 12px;        /* os cantos */
```

### Largura e box-sizing · slide 12 (própria 10)

| `width: 200px; padding: 10px; border: 2px solid;` | ocupa no ecrã |
|---|---|
| `content-box` (por omissão): o `width` é só o conteúdo | 200 + 20 + 4 = **224px** |
| `border-box`: o `width` é a caixa toda | **200px** (o conteúdo fica com 176px) |

```css
/* a primeira regra de quase todos os projetos */
* {
  box-sizing: border-box;
}

/* largura máxima e centrado: o auto divide o que sobra pelos dois lados */
main {
  max-width: 48rem;
  margin: 0 auto;
}
```

### Os estilos do browser e o reset CSS · slide 13 (própria 11)

O browser já traz CSS seu, o *user agent stylesheet*: margens nos `h1` e nos `p`, padding nos `ul` e `ol`, 8px de margin no `body`, borders nos `input`… E cada browser tem o seu. No DevTools: Elements › um `h1` › **Styles**: as regras marcadas com "user agent stylesheet".

| Abordagem | O que faz | Quando |
|---|---|---|
| Reset total (Eric Meyer, 2011) | põe tudo a zero, até o tamanho dos headings e as bolinhas das listas | história; hoje pouco usado |
| normalize.css (hoje: modern-normalize) | não apaga: torna os browsers iguais e mantém os defaults úteis | quando se quer partir dos defaults |
| Mini reset "à la João" | tira padding, margin e border a todos os elementos, mais o `box-sizing` | quando vamos desenhar tudo nós |

```css
/* o mini reset "à la João": a primeira regra do CSS */
* {
  padding: 0;
  margin: 0;
  border: none;
  box-sizing: border-box;
}
```

**Atenção:** depois do reset, o que queremos de volta temos de ser nós a pôr. No site das receitas: os campos do formulário (`sobre.html`) ficam sem border (quase invisíveis), as bolinhas e os números das listas saem da caixa e os headings colam-se aos parágrafos. **No site das receitas (o 14.2), fica só o `box-sizing`.** No 14.1, que começa do zero, usem o mini reset: é a primeira regra do CSS.

Para ver: [meyerweb.com/eric/tools/css/reset](https://meyerweb.com/eric/tools/css/reset/) · [necolas.github.io/normalize.css](https://necolas.github.io/normalize.css/) · [github.com/sindresorhus/modern-normalize](https://github.com/sindresorhus/modern-normalize) · [joshwcomeau.com/css/custom-css-reset](https://www.joshwcomeau.com/css/custom-css-reset/)

### O display · slide 14 (própria 12)

| `display` | Como se comporta | Exemplos |
|---|---|---|
| `block` | ocupa a linha toda; o seguinte vai para baixo; aceita `width`, `height`, `padding`, `margin` | `h1`, `p`, `ul`, `li`, `section` |
| `inline` | fica na linha, do tamanho do texto; ignora `width` e `height` | `a`, `strong`, `em`, `span` |
| `inline-block` | fica na linha, mas aceita `width`, `height`, `padding` e `margin` | botões, menus |
| `none` | o elemento desaparece da página | |

`list-style: none` tira as bolinhas de uma lista.

### Código no exemplo · o box model e o display · `exemplos/14-box-model/` · slides 15–16 (própria 13–14)

`s09/exemplos/14-box-model/css/caixas.css`, secções "1 · o box model" e "2 · o display":

```css
/* ---------- 1 · o box model ---------- */

/* a largura passa a incluir o padding e a border (em todos os elementos) */
* {
  box-sizing: border-box;
}

body {
  margin: 0;                    /* o browser põe 8px: tiramos */
  font-family: "Trebuchet MS", Arial, sans-serif;
  color: #2b2b2b;
  background-color: #f4f9ec;
  line-height: 1.5;
}

/* largura máxima e centrado: margin auto à esquerda e à direita */
main {
  max-width: 48rem;
  margin: 0 auto;
  padding: 0 1rem;
}

header,
footer {
  padding: 1rem;
}

/* o cartão: conteúdo → padding → border → margin */
.cartao {
  padding: 1rem 1.5rem;         /* cima e baixo · esquerda e direita */
  border: 2px solid #6a8320;    /* largura · estilo · cor */
  border-radius: 12px;
  margin-bottom: 1rem;
}

.preco {
  font-size: 1.5rem;
  font-weight: bold;
  margin: 0.5rem 0;
}


/* ---------- 2 · o display ---------- */

/* o menu na horizontal: os li deixam de ser block */
nav ul {
  list-style: none;             /* sem as bolinhas */
  margin: 0;
  padding: 0;
}

nav li {
  display: inline-block;
  margin-right: 1rem;
}

/* um link com ar de botão: inline-block aceita padding e margin a sério */
.botao {
  display: inline-block;
  padding: 0.5rem 1rem;
  background-color: #6a8320;
  color: #ffffff;
  border-radius: 6px;
  text-decoration: none;
}

/* inline: fica na linha; o padding de cima e de baixo não afasta as linhas */
.destaque {
  padding: 0 0.25rem;
  background-color: #fff3b0;
}
```

### Exercício 14.1 · The Analog Specialist (sozinhos, ~60 min) · slides 17–18 (própria 15–16)

Enunciado, imagens e propostas: `exercicios/14-box-model/ex-14.1-analog-specialist/` (copiada para `s09/analog/`). Um site de duas páginas, **do zero**.

1. O mais parecido possível com as propostas; o título é texto, não imagem
2. A caixa exterior: 80% da janela, nunca menos de 800px, centrada
3. Essa caixa com border `double` e os cantos arredondados
4. Uma fonte do Google Fonts à vossa escolha (a da proposta é a Inconsolata)
5. Os links com estados (`:hover`…) e a página atual destacada no menu
6. "for sale" abre a `forsale.html` (título, subtítulo e texto); "Fender" vai a fender.com, num novo separador
7. `rem` no texto e nos espaços, CSS num ficheiro externo, HTML e CSS validados

**Pronto quando:** as duas páginas parecem as propostas e o menu leva de uma à outra (e volta).
**Extra:** as imagens a preto e branco, com cor no hover (a propriedade `filter`, no MDN).

Para começar: o HTML das duas páginas primeiro; depois o CSS de fora para dentro (o mini reset, o `body`, a caixa, o título, o menu, as imagens, o texto, o rodapé). A solução é na sessão 10, juntos.

### Para casa · Exercício 14.2 · As caixas do site das receitas · slide 19 (própria 17)

Enunciado: `exercicios/14-box-model/ex-14.2-caixas-nas-receitas.md`. No `s09/site/css/estilos.css`, a seguir ao 13.2, sem mexer no HTML.

1. `* { box-sizing: border-box; }`
2. `body`: `max-width: 60rem`, `margin: 0 auto`, `padding: 0 1rem`
3. `body > header, footer`: `padding: 0.5rem 1rem`
4. `nav ul` sem bolinhas (`list-style: none`), `margin` e `padding` a 0; `nav li` com `display: inline-block` e `margin-right: 1rem`
5. `figure`: `display: inline-block`, `padding: 0.5rem`, `border: 1px solid #e0cfa8`, `border-radius: 8px`
6. `li.nova`: `padding: 0.5rem 1rem` e `border-left: 4px solid #8a5a00`
7. Validar; no DevTools, o desenho do `li.nova`

**Extra:** `th, td` com `padding: 0.25rem 0.75rem` (a tabela do Sobre). A solução é no início da sessão 10.

---

## Links

- MDN · The box model: https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Styling_basics/Box_model
- Google Fonts: https://fonts.google.com/
- MDN · filter (para o extra do 14.1): https://developer.mozilla.org/en-US/docs/Web/CSS/filter
- Flexbox Froggy (para a próxima sessão): https://flexboxfroggy.com/
- Validador de HTML: https://validator.w3.org/
- Validador de CSS: https://jigsaw.w3.org/css-validator/
