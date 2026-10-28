# Solução 10.2 · A estrutura semântica no resto do mini-site

A solução completa está em **`02-html-css/s06/site/`** (o mini-site como devia ter ficado no fim da sessão 6). As três páginas que faltavam ficam todas com o mesmo esqueleto:

```html
<body>
  <header>
    <p><strong>Receitas da Avó</strong></p>
    <nav>
      <ul> … o menu … </ul>
    </nav>
  </header>

  <main>
    …o conteúdo desta página…
  </main>

  <footer>
    <p><small>© 2026 Receitas da Avó</small></p>
  </footer>
</body>
```

## `sobre.html`

- `header` com o nome do site e o `nav`.
- `main` com o `h1` e o parágrafo de entrada; cada `h2` abre uma `section`: "Como testamos as receitas" (com o `h3` Medidas e a tabela), "Uma frase de que gostamos", "Onde estamos" (morada e mapa) e "Escrevam-nos" (o formulário fica dentro do `main`).
- `footer` com o © e o `address` (o email de contacto).

## `receitas/bolo-de-bolacha.html` e `receitas/doces/pudim.html`

Como o posset:

```html
<main>
  <article>
    <header>
      <h1>Bolo de bolacha</h1>
      <p>Publicada a <time datetime="2026-10-19">19 de outubro de 2026</time></p>
    </header>
    …descrição, figura, ingredientes, preparação, dicas…
  </article>

  <aside>
    <h2>Outras receitas</h2>
    <ul>
      <li><a href="doces/pudim.html">Pudim</a></li>
      <li><a href="posset-de-limao.html">Posset de limão</a></li>
    </ul>
  </aside>

  <p><a href="../index.html">← Voltar às receitas</a></p>
</main>
```

No pudim (em `receitas/doces/`), os caminhos do `aside` são `../bolo-de-bolacha.html` e `../posset-de-limao.html`.

**Validado:** as cinco páginas e o `inscricao.html` com 0 erros e 0 avisos no validator.w3.org/nu.

**No Sobre da sessão**, os três `radio` da frequência tinham todos `label for="dia"`: clicar em "Semanalmente" marcava "Diariamente". Cada `label` aponta para o `id` do seu `radio` (`dia`, `semana`, `mes`).
