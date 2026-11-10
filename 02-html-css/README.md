# 02-html-css

Módulo 2 · HTML e CSS · 14 out → 10 nov 2026 · **módulo fechado**

## Sessões

| Sessão | Data | Tema | Pasta |
|---|---|---|---|
| S1 | 4.ª 14 out | Introdução ao HTML: o que é, ferramentas | [S1-2026-10-14](S1-2026-10-14/) |
| S2 | 6.ª 16 out | Sintaxe, estrutura base e texto | [S2-2026-10-16](S2-2026-10-16/) |
| S3 | 2.ª 19 out | Texto, listas e o início dos links | [S3-2026-10-19](S3-2026-10-19/) |
| S4 | 4.ª 21 out | Links e imagens | [S4-2026-10-21](S4-2026-10-21/) |
| — | 6.ª 23 out | Sem sessão (compensada na 3.ª, 10 nov, 9:30–12:30) | — |
| S5 | 2.ª 26 out | Imagens na prática (6.2 e 6.3) e tabelas | [S5-2026-10-26](S5-2026-10-26/) |
| S6 | 4.ª 28 out | Multimédia, formulários e semântica (o `s06/site` está completo: é o ponto de partida da S7) | [S6-2026-10-28](S6-2026-10-28/) |
| S7 | 6.ª 30 out | CSS: a regra, onde se escreve e os seletores (o 12.2 foi resolvido na S8) | [S7-2026-10-30](S7-2026-10-30/) |
| S8 | 2.ª 2 nov | O 12.2 em conjunto (revisão dos seletores); cores, unidades, texto e fontes (Google Fonts e `@font-face`) · **para casa: o 13.2** | [S8-2026-11-02](S8-2026-11-02/) |
| S9 | 4.ª 4 nov | O 13.2 em conjunto; o box model, o reset CSS e o display; o 14.1 (Analog Specialist) começado | [S9-2026-11-04](S9-2026-11-04/) |
| S10 | 6.ª 6 nov | A solução do 14.1; imagens de fundo e sombras; flexbox (nove exemplos) e a newsletter EDP (17.3, para casa) | [S10-2026-11-06](S10-2026-11-06/) |
| S11 | 2.ª 9 nov | A solução da EDP (17.3) em conjunto; CSS Grid (sete exemplos), o Grid Garden e a galeria (18.1, **para casa**) | [S11-2026-11-09](S11-2026-11-09/) |
| S12 | 3.ª 10 nov | A galeria (18.1) em conjunto e o `object-fit`; responsive e media queries (mobile-first, breakpoints, `clamp()`) e a galeria responsiva (19.1); o fecho do módulo (o position fica nos slides, para consulta) | [S12-2026-11-10](S12-2026-11-10/) |

O código escrito em cada sessão está em `s01/`, `s02/` … `s12/`.

## Como está organizado (a partir da S5)

```
02-html-css/
├── SN-AAAA-MM-DD/       uma pasta por sessão: PDF dos slides, snippets, README
│                        (e ficheiros dessa sessão, como o vídeo da S5)
├── exemplos/NN-tema/    (CSS) as páginas de exemplo onde escrevemos o código juntos, sem CSS
├── exercicios/NN-tema/  os enunciados, uma pasta por parte (06-imagens, 07-tabelas…)
├── solucoes/NN-tema/    as soluções, com a mesma organização (publicadas depois da sessão)
└── s01/, s02/ … s12/    o código de cada sessão (o site como ficou, ou devia ter ficado, no fim)
```

- **Os exercícios são numerados pela parte (o tema):** o 7.1 é o primeiro exercício das tabelas (parte 7), esteja em que sessão estiver.
- **Para encontrar um exercício**, procurem pelo tema em `exercicios/`, e não pela sessão.
- **Das sessões 1 a 4**, os exercícios e as soluções continuam dentro das pastas dessas sessões, com o número antigo (ver a tabela no fim).

## Exercícios por tema

| Parte | Tema | Exercícios |
|---|---|---|
| 1 | Introdução ao HTML e ferramentas | 1.1 · 1.2 · 1.3 |
| 2 | Sintaxe e estrutura base | 2.1 · 2.2 · 2.3 |
| 3 | Texto | 3.1 · 3.2 · 3.3 |
| 4 | Listas | 4.1 · 4.2 · 4.3 |
| 5 | Links | 5.1 · 5.2 |
| 6 | Imagens | 6.1 · **6.2 posset de limão** ([enunciado](exercicios/06-imagens/ex-6.2-posset-de-limao.md), resolvido na sessão 5) · **6.3 o meu mini-site** ([enunciado](exercicios/06-imagens/ex-6.3-mini-site-tema.md), para treinar, sem entrega obrigatória) |
| 7 | Tabelas | 7.1 o plano do módulo numa tabela ([enunciado](exercicios/07-tabelas/ex-7.1-plano-tabela.md)) · 7.2 encontrar os erros, para treinar ([enunciado](exercicios/07-tabelas/ex-7.2-tabela-erros.md)) |
| 8 | Multimédia e iframes | (sem exercício: o stop da sessão 6) |
| 9 | Formulários | 9.1 inscrição num workshop ([enunciado](exercicios/09-formularios/ex-9.1-inscricao.md) · [solução](solucoes/09-formularios/sol-9.1-inscricao.html) · [extra](solucoes/09-formularios/sol-9.1-inscricao-extra.html)) |
| 10 | Semântica e acessibilidade | 10.1 que elemento? ([enunciado](exercicios/10-semantica-acessibilidade/ex-10.1-que-elemento.md) · [solução](solucoes/10-semantica-acessibilidade/sol-10.1-que-elemento.md)) · 10.2 a semântica no resto do mini-site ([enunciado](exercicios/10-semantica-acessibilidade/ex-10.2-semantica-mini-site.md) · [solução](solucoes/10-semantica-acessibilidade/sol-10.2-semantica-mini-site.md): o `s06/site`) |
| 11 | CSS: o que é e onde se escreve | 11.1 a folha de estilos do site das receitas ([enunciado](exercicios/11-css-introducao/ex-11.1-folha-de-estilos.md) · [solução](solucoes/11-css-introducao/sol-11.1-folha-de-estilos.md)) · exemplo: [`exemplos/11-aplicar-css/`](exemplos/11-aplicar-css/) |
| 12 | Seletores | 12.1 que seletor? ([enunciado](exercicios/12-seletores/ex-12.1-que-seletor.md) · [solução](solucoes/12-seletores/sol-12.1-que-seletor.md)) · 12.2 seletores no site das receitas ([enunciado](exercicios/12-seletores/ex-12.2-seletores-no-site.md) · [solução](solucoes/12-seletores/sol-12.2-seletores-no-site.css); para treinar: [CSS Diner](https://flukeout.github.io/)) · exemplo: [`exemplos/12-seletores/`](exemplos/12-seletores/) |
| 13 | Cores, texto e fontes | 13.1 que cor é esta? ([enunciado](exercicios/13-cores-texto/ex-13.1-que-cor.md) · [solução](solucoes/13-cores-texto/sol-13.1-que-cor.md)) · 13.2 o aspeto das receitas ([enunciado](exercicios/13-cores-texto/ex-13.2-aspeto-das-receitas.md) · [solução](solucoes/13-cores-texto/sol-13.2-aspeto-das-receitas.css), resolvido na sessão 9) · exemplo: [`exemplos/13-cores-texto/`](exemplos/13-cores-texto/) |
| 14 | O box model | 14.1 The Analog Specialist ([enunciado, imagens e propostas](exercicios/14-box-model/ex-14.1-analog-specialist/), resolvido na sessão 10 · [solução](solucoes/14-box-model/sol-14.1-analog-specialist/)) · 14.2 as caixas do site das receitas, para treinar ([enunciado](exercicios/14-box-model/ex-14.2-caixas-nas-receitas.md); já vem feito no ponto de partida do 15.1 · [solução](solucoes/14-box-model/sol-14.2-caixas-nas-receitas.css)) · exemplo: [`exemplos/14-box-model/`](exemplos/14-box-model/) |
| 15 | Fundos e sombras | 15.1 os fundos do site das receitas, opcional ([enunciado](exercicios/15-fundos/ex-15.1-fundos-nas-receitas.md) · [site de partida](exercicios/15-fundos/ex-15.1-ponto-de-partida/site/) · [solução](solucoes/15-fundos/sol-15.1-fundos-nas-receitas.css)) · exemplo: o mesmo `exemplos/14-box-model/` |
| 16 | Position | 16.1 o position no site das receitas, opcional ([enunciado](exercicios/16-position/ex-16.1-position-nas-receitas.md) · [solução](solucoes/16-position/sol-16.1-position-nas-receitas.css)) · exemplo: [`exemplos/16-position/`](exemplos/16-position/) (o Cabaz) |
| 17 | Flexbox | **17.3 a newsletter EDP** ([enunciado, textos e imagens](exercicios/17-flexbox/ex-17.3-newsletter-edp/) · [solução](solucoes/17-flexbox/sol-17.3-newsletter-edp/), montada em conjunto na sessão 11) · opcionais: 17.1 o Analog com flexbox ([enunciado](exercicios/17-flexbox/ex-17.1-analog-com-flexbox/)) e 17.2 o flexbox no site das receitas ([enunciado](exercicios/17-flexbox/ex-17.2-flexbox-nas-receitas.md)) · exemplos: [`exemplos/17-flexbox/`](exemplos/17-flexbox/) (flex1 a flex9) · para treinar: [Flexbox Froggy](https://flexboxfroggy.com/) |
| 18 | CSS Grid | **18.1 a galeria** ([enunciado, HTML e proposta](exercicios/18-grid/ex-18.1-galeria/) · [solução](solucoes/18-grid/sol-18.1-galeria/), resolvido em conjunto na sessão 12) · exemplos: [`exemplos/18-grid/`](exemplos/18-grid/) (1 a 7) · para treinar: [Grid Garden](https://cssgridgarden.com/) |
| 19 | Responsive | **19.1 a galeria responsiva** ([enunciado e proposta](exercicios/19-responsive/ex-19.1-galeria-responsiva/) · [solução](solucoes/19-responsive/sol-19.1-galeria-responsiva/)) · 19.2 as receitas no telemóvel, opcional ([enunciado](exercicios/19-responsive/ex-19.2-receitas-no-telemovel.md)) · exemplos: [`exemplos/19-responsive/`](exemplos/19-responsive/) (1 a 3) |

**O que já fizemos, com o número novo** (os ficheiros já publicados mantêm o nome antigo):

| Sessão · número antigo | Número novo | Exercício |
|---|---|---|
| S1 · 1.1, 1.2 | 1.1, 1.2 | Marcar um texto · verdadeiro ou falso |
| S1 · 2.1 | 1.3 | Desafio Emmet |
| S1 · 3.1, 3.2, 4.1 | 2.1, 2.2, 2.3 | Encontrar os erros · anatomia · primeira página |
| S2/S3 · 1.1, 1.2, 1.3 | 3.1, 3.2, 3.3 | Títulos · que elemento? · cartão de visita |
| S2/S3 · 2.1, 2.2, 2.3 | 4.1, 4.2, 4.3 | Erros nas listas · plano numa lista · cartão com listas |
| S4 · 3.1, 3.2 | 5.1, 5.2 | Caminhos relativos · link ou botão? |
| S4 · 4.1, 4.2 | 6.1, **6.2** | Escrever o alt · **posset de limão** |

## Referências do módulo

Os links que usámos nas 12 sessões, por tema (cada sessão tem os seus no README e nos snippets).

**Para consultar e estudar**
- [MDN Web Docs](https://developer.mozilla.org/): a referência de HTML, CSS e JavaScript · [MDN · CSS styling basics](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Styling_basics)
- [web.dev · Learn CSS](https://web.dev/learn/css) · [web.dev · Learn Responsive Design](https://web.dev/learn/design)
- [Can I use](https://caniuse.com/): o que cada browser suporta

**HTML**
- [Validador W3C (HTML)](https://validator.w3.org/) · [Validador W3C (CSS)](https://jigsaw.w3.org/css-validator/)
- MDN: [formulários](https://developer.mozilla.org/pt-BR/docs/Learn/Forms) · [`<input>`](https://developer.mozilla.org/pt-BR/docs/Web/HTML/Element/input) · [`<video>`](https://developer.mozilla.org/pt-BR/docs/Web/HTML/Element/video) · [`<iframe>`](https://developer.mozilla.org/pt-BR/docs/Web/HTML/Element/iframe) · [semântica](https://developer.mozilla.org/pt-BR/docs/Glossary/Semantics)
- Para testar formulários: [httpbin](https://httpbin.org/anything) · [Postman Echo](https://postman-echo.com/post)

**CSS: seletores, cores, texto e fontes**
- [CSS Zen Garden](https://csszengarden.com): o mesmo HTML, centenas de CSS
- [MDN · seletores](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_selectors) · para treinar: [CSS Diner](https://flukeout.github.io/)
- [MDN · cores](https://developer.mozilla.org/en-US/docs/Web/CSS/color_value) · [WebAIM · Contrast Checker](https://webaim.org/resources/contrastchecker/)
- [Google Fonts](https://fonts.google.com/) · [MDN · `font-family`](https://developer.mozilla.org/en-US/docs/Web/CSS/font-family)

**O box model, o reset e os fundos**
- [MDN · The box model](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Styling_basics/Box_model)
- Resets: [Eric Meyer](https://meyerweb.com/eric/tools/css/reset/) · [normalize.css](https://necolas.github.io/normalize.css/) · [modern-normalize](https://github.com/sindresorhus/modern-normalize) · [Josh Comeau · custom CSS reset](https://www.joshwcomeau.com/css/custom-css-reset/)
- MDN: [`background`](https://developer.mozilla.org/en-US/docs/Web/CSS/background) · [`box-shadow`](https://developer.mozilla.org/en-US/docs/Web/CSS/box-shadow) · [`filter`](https://developer.mozilla.org/en-US/docs/Web/CSS/filter)

**Layout: flexbox, grid, position**
- [MDN · Flexbox](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/CSS_layout/Flexbox) · [CSS-Tricks · A Complete Guide to Flexbox](https://css-tricks.com/snippets/css/a-guide-to-flexbox/) · para treinar: [Flexbox Froggy](https://flexboxfroggy.com/#pt-pt)
- [MDN · CSS Grid](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_grid_layout) · [CSS-Tricks · A Complete Guide to CSS Grid](https://css-tricks.com/snippets/css/complete-guide-grid/) · [Grid by Example](https://gridbyexample.com/) · [Chrome DevTools · grid](https://developer.chrome.com/docs/devtools/css/grid) · para treinar: [Grid Garden](https://cssgridgarden.com/#pt-pt)
- [MDN · `position`](https://developer.mozilla.org/en-US/docs/Web/CSS/position)

**Responsive**
- [Ethan Marcotte · Responsive Web Design (2010)](https://alistapart.com/article/responsive-web-design/): o artigo que deu o nome
- [MDN · Responsive design](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/CSS_layout/Responsive_Design) · [MDN · media queries](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_media_queries/Using_media_queries) · [web.dev · a sintaxe `width >= 40rem`](https://web.dev/articles/media-query-range-syntax)
- [MDN · `clamp()`](https://developer.mozilla.org/en-US/docs/Web/CSS/clamp) · [MDN · container queries](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_containment/Container_queries)
- [Chrome DevTools · Device Mode](https://developer.chrome.com/docs/devtools/device-mode)

**Newsletters (email HTML)**
- [MJML](https://mjml.io/) · [Foundation for Emails](https://get.foundation/emails.html) · [Can I email](https://www.caniemail.com/) · [Really Good Emails](https://reallygoodemails.com/)

**Ferramentas e para continuar a praticar**
- [Fira Code](https://github.com/tonsky/FiraCode): a fonte com os símbolos ≥ ≤ ≠ → no VS Code ([como configurar](https://github.com/tonsky/FiraCode/wiki/VS-Code-Instructions))
- [Picsum Photos](https://picsum.photos/): fotografias para testar
- [Frontend Mentor](https://www.frontendmentor.io/): desafios com designs reais
