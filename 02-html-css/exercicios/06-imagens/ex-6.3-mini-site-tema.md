# Exercício 6.3 · O meu mini-site (tema à escolha)

> Parte 6 · Imagens. Primeiro exercício com a numeração por tema (ver o README do módulo).

**Objetivo:** construir um pequeno site teu, com 4 páginas ligadas entre si e com imagens, sobre um tema à tua escolha (um hobby, um desporto, viagens, música, animais, receitas…).
Exemplo do formador: https://joaogoncalves.net/site-xpto/

É o mesmo que fizemos no mini-site Receitas, mas sozinho e com o teu conteúdo.

## Estrutura de ficheiros

```
meu-site/
├── index.html        ← página inicial
├── topico1.html
├── topico2.html
├── topico3.html
└── img/              ← todas as imagens
```

Nomes de ficheiros em minúsculas, sem espaços nem acentos (`praia-da-rocha.jpg`, não `Praia da Rocha.JPG`). Os nomes dos tópicos podem ser os teus (`surf.html` em vez de `topico1.html`).

## Página inicial (`index.html`)

1. Estrutura base completa: `<!DOCTYPE html>`, `lang="pt-PT"`, `meta charset`, `meta viewport` e um `title` com o nome do site.
2. Um `h1` com o nome do site e um `hr` a separar o cabeçalho do resto.
3. Um **menu**: `nav` com uma `ul` e 3 links, um para cada tópico.
4. Um `h2` "Sobre este site" e **2 ou 3 parágrafos** a descrever o tema (texto teu, nada de *lorem ipsum*). Usa pelo menos um `strong` e um `em`, com significado.
5. Um `h2` "Os tópicos" e **uma imagem por tópico, que é também um link** para essa página (como no exemplo). O `alt` diz para onde vai o link (é uma imagem funcional). Com `width` e `height`.
6. Um `hr` e um rodapé com o teu nome e o ano: `<p><small>© 2026 O teu nome</small></p>`.

## Páginas de tópico

Cada página tem:

1. O **mesmo menu** da página inicial, mais um link "Início" para o `index.html`.
2. Um `h1` com o nome do tópico e pelo menos **um `h2`** com os parágrafos respetivos (sem saltar níveis de título).
3. Pelo menos **uma lista** que faça sentido para o tema: `ul`, `ol` (passos, ranking…) ou `dl` (termos e definições). A escolha é tua, e deves saber dizer porquê.
4. Pelo menos **uma imagem dentro de `figure`**, com `figcaption`, `alt` descritivo, `width` e `height`.
5. Um **link externo** para uma fonte (Wikipédia, site oficial…), a abrir num separador novo.
6. O mesmo rodapé da página inicial.

## Regras

- Usa só os elementos que já demos.
- Links e imagens com **caminhos relativos** (`img/surf.jpg`, `topico1.html`), nunca `C:\...` ou `/Users/...`.
- Imagens leves: JPEG ou WebP, cada uma com menos de 300 KB (reduz o tamanho antes de as pôr no site, por exemplo em https://squoosh.app).
- Usa imagens tuas ou com licença livre (Unsplash, Pexels, Wikimedia Commons).
- Todas as páginas validadas no https://validator.w3.org/nu sem erros.

## Extra (opcional)

- Uma âncora "Voltar ao topo" no fim de cada página de tópico.
- Uma imagem com `picture` (WebP com plano B em JPEG).

O site vai crescer ao longo do módulo: quando chegarmos às tabelas, à multimédia e ao CSS, vais acrescentar-lhe coisas.

## Entrega

Pasta `meu-site` em `.zip` no Moodle, no fórum do módulo 2, tópico "6.3 · O meu mini-site", até **4.ª, 28 out, às 9:30**.
