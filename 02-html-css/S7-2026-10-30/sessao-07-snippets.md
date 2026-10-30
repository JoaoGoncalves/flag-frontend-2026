# Sessão 7 · CSS: a regra, onde se escreve e os seletores

**HTML e CSS · joaogoncalves.net** · código para seguir a sessão

O que escrevemos fica em `s07/` no GitHub. Escrevam-no vocês: copiar não conta.
Em cada tópico: **teoria → código comigo num exemplo → exercício no site das receitas**.
Exercícios por tema: **11** CSS: o que é e onde se escreve · **12** seletores.
Os números dos slides são os da versão FLAG (entre parênteses, os da versão própria).

---

## Antes de começar · slides 4–5 (própria 2–3)

Na quarta não houve tempo para os exercícios 9.1 e 10.2. No GitHub, a pasta `02-html-css/s06/site/` está agora **completa** (com o 10.2) e há uma pasta nova, `02-html-css/exemplos/`, com as páginas de exemplo de hoje.

1. GitHub › **Code › Download ZIP** (ou `git pull`).
2. Copiem `02-html-css/s06/site/` para **`s07/site/`** e `02-html-css/exemplos/` para **`s07/exemplos/`**.
3. Abram o Live Server na pasta `s07/`.

### A pasta s07 no fim do dia

```text
s07/
├── exemplos/
│   ├── 11-aplicar-css/
│   │   ├── horta.html          inline, embedded e externa
│   │   └── css/horta.css       NOVO
│   └── 12-seletores/
│       ├── seletores.html      a página da horta, com classes e ids
│       └── css/seletores.css   os seletores, um a um
└── site/
    ├── css/estilos.css         NOVO: 11.1 (o 12.2 fica para casa)
    ├── index.html              + link
    ├── sobre.html              + link
    └── receitas/               + link (../ e ../../)
```

---

## Parte 11 · CSS: o que é e onde se escreve · slides 6–16 (própria 4–14)

**As três camadas** (slide 7 · própria 5)**:** HTML = o esqueleto (estrutura) · CSS = a aparência · JavaScript = o comportamento.

**O poder do CSS** (slide 8 · própria 6)**:** https://csszengarden.com — o mesmo HTML, centenas de desenhos. Só muda o `.css`.

### A anatomia de uma regra · slide 9 (própria 7)

```css
h1 {                   /* seletor: quem muda */
  color: darkgreen;    /* declaração = propriedade: valor; */
  text-align: center;
}
```

`seletor { propriedade: valor; propriedade: valor; }`

### Uma regra, várias regras · slide 10 (própria 8)

```css
/* um comentário em CSS: o browser ignora-o */

h1 {
  color: darkgreen;
  text-align: center;
}

p {
  color: #333333;
  line-height: 1.6;
}

/* a mesma regra numa linha também é válida */
h2 { color: darkgreen; }
```

### As três formas de aplicar CSS · slides 11–12 (própria 9–10)

| Forma | Onde | Vale para |
|---|---|---|
| **inline** | atributo `style="…"` no elemento | só esse elemento |
| **embedded** (interna) | elemento `<style>` no `head` | só essa página |
| **externa** | ficheiro `.css` ligado com `<link>` | todas as páginas que o ligam |
| `@import` | dentro de um `.css` | (fica para mais tarde) |

**Quem ganha?** O inline ganha às outras; entre o `<style>` e o `<link>`, ganha o que vem **depois** no `head`.

### Código no exemplo · `exemplos/11-aplicar-css/horta.html` · slides 13–14 (própria 11–12)

Ficheiro de partida no GitHub: `02-html-css/exemplos/11-aplicar-css/horta.html` (sem CSS) → copiado para `s07/exemplos/11-aplicar-css/`.

**Passo 1 · inline**, no último `p`:

```html
<p style="color: gray;">Página escrita para a formação da FLAG.</p>
```

**Passo 2 · embedded**, no `head`:

```html
<style>
  h2 {
    color: darkgreen;
  }
</style>
```

**Passo 3 · externa**: pasta `css/`, ficheiro `css/horta.css`:

```css
/* exemplos/11-aplicar-css/css/horta.css */

body {
  font-family: Arial, sans-serif;
  background-color: #f4f9ec;
}

h1 {
  color: darkgreen;
}

p {
  color: #333333;
  line-height: 1.6;
}
```

e, no `head`, logo a seguir ao `title`:

```html
<link rel="stylesheet" href="css/horta.css">
```

**Passo 4 · quem ganha?** Juntem ao `<style>` a regra `h1 { color: tomato; }`; depois troquem a ordem do `<style>` e do `<link>`; por fim, `style="color: purple;"` no `h1`.

### Exercício 11.1 · A folha de estilos do site das receitas (10 min) · slides 15–16 (própria 13–14)

Enunciado: `exercicios/11-css-introducao/ex-11.1-folha-de-estilos.md`

1. Em `s07/site/`, a pasta `css/` e o ficheiro `estilos.css`, com:

   ```css
   body {
     font-family: Georgia, "Times New Roman", serif;
     color: #2b2b2b;
     background-color: #fffaf0;
     line-height: 1.6;
   }

   h1 {
     color: #8a5a00;
   }
   ```

2. O `link` nas cinco páginas:

   ```html
   <!-- index.html e sobre.html -->
   <link rel="stylesheet" href="css/estilos.css">
   <!-- receitas/bolo-de-bolacha.html e receitas/posset-de-limao.html -->
   <link rel="stylesheet" href="../css/estilos.css">
   <!-- receitas/doces/pudim.html -->
   <link rel="stylesheet" href="../../css/estilos.css">
   ```

3. Validar o CSS: https://jigsaw.w3.org/css-validator/

**Extra:** o `s07/inscricao.html` (fora de `site/`) com o mesmo `estilos.css`.

---

## Parte 12 · Seletores · slides 17–28 (própria 15–26)

Os seletores · slides 18–20 (própria 16–18)

| Seletor | Nome | Escolhe |
|---|---|---|
| `*` | universal | todos os elementos |
| `p` | elemento (tipo) | todos os `p` |
| `h1, h2, h3` | grupo | os `h1`, os `h2` e os `h3` |
| `.destaque` | classe (independente) | qualquer elemento com `class="destaque"` |
| `p.destaque` | classe dependente | só os `p` com `class="destaque"` |
| `#topo` | id | o elemento com `id="topo"` (um por página) |
| `nav a` | descendente (espaço) | os `a` dentro de um `nav`, a qualquer nível |
| `section > p` | filho (`>`) | só os `p` filhos diretos da `section` |
| `a:hover` | pseudo-classe | um `a` com o rato por cima |

Lê-se da direita para a esquerda: `section.noticias article h3` = os `h3`, que estão num `article`, que está numa `section` com a classe `noticias`.

### Quem ganha? A especificidade (A · B · C) · slide 21 (própria 19)

```css
/*                      A-B-C: id · classe · elemento */
h2                 { color: darkgreen; } /* 0-0-1 */
.destaque          { color: brown; }     /* 0-1-0 */
section.noticias p { color: gray; }      /* 0-1-2 */
#topo              { color: tomato; }    /* 1-0-0 */

/* empate: ganha a que vem depois */
h1 { color: green; }
h1 { color: blue; }      /* ganha */

body {
  color: #2b2b2b;        /* os filhos herdam */
}
```

### Código no exemplo · `exemplos/12-seletores/seletores.html` · slides 22–24 (própria 20–22)

Ficheiros de partida no GitHub: `02-html-css/exemplos/12-seletores/seletores.html` e `css/seletores.css` (vazio) → copiados para `s07/exemplos/12-seletores/`.

O `seletores.html` já tem o `link` para `css/seletores.css`. Escrevemos lá uma regra de cada vez.

**Stop A · os seletores simples** · slide 23 (própria 21)

```css
/* 1 · universal: todos os elementos */
* {
  font-family: Arial, sans-serif;
}

/* 2 · elemento */
body {
  background-color: #f4f9ec;
}

p {
  line-height: 1.6;
}

/* 3 · grupo */
h1, h2, h3 {
  color: darkgreen;
}

/* 4 · classe independente: qualquer elemento */
.destaque {
  color: rgb(129, 73, 6);
}

/* 5 · classe dependente: só os p */
p.destaque {
  font-style: italic;
}

/* 6 · id: um só por página */
#topo {
  color: tomato;
}
```

**Stop B · os seletores combinados** · slide 24 (própria 22)

```css
/* 7 · descendente: os p dentro da section.noticias, a qualquer nível */
section.noticias p {
  color: #555555;
}

/* 8 · filho direto: só os p que são filhos da section */
section.noticias > p {
  background-color: #fff3b0;
}

/* descendente: os h3 dentro de um article */
article h3 {
  color: #4f6318;
}

/* 9 · pseudo-classe: um estado */
nav a:hover {
  color: tomato;
}
```

### Exercício 12.1 · Que seletor? (no chat, 5 min) · slides 25–26 (própria 23–24)

1. Todos os elementos da página
2. Os `p` com `class="nota"`
3. Só os links que estão no `nav`
4. Os `li` filhos diretos de uma `ul`
5. Os `h1` e os `h2`, com a mesma regra
6. Um link quando o rato passa por cima

### Exercício 12.2 · Seletores no site das receitas (12 min) · slide 27 (própria 25)

> **Não houve tempo para o 12.2 na aula: fica para o fim de semana.** A sessão 8 (2.ª, 2 nov) começa por ele, para revermos os seletores. A solução só é publicada depois.

Enunciado: `exercicios/12-seletores/ex-12.2-seletores-no-site.md`

1. `nav a`: os links do menu a `#8a5a00`
2. `nav a:hover`: `#c0392b` com o rato por cima
3. `body > header, footer`: fundo `#f3e3c3` (experimentem primeiro só `header` e abram o posset)
4. `class="intro"` no primeiro `p` do index; `.intro` em itálico (`font-style: italic`) e `#555555`
5. `aside h2`: "Outras receitas" a `#8a5a00`
6. Validar o CSS

**Extra:** `class="nova"` no `li` do posset (index) e `li.nova` com fundo `#fff3b0`.

---

## Links

- CSS Zen Garden: https://csszengarden.com
- Validador de CSS: https://jigsaw.w3.org/css-validator/
- **CSS Diner** (para treinar os seletores, a jogar): https://flukeout.github.io/
- MDN · CSS selectors: https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_selectors
- MDN · CSS styling basics: https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Styling_basics
