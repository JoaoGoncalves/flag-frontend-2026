# Solução 11.1 · A folha de estilos do site das receitas

`s07/site/css/estilos.css`:

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

No `head` de cada página, logo a seguir ao `title`:

| Página | Onde está | `link` |
|---|---|---|
| `index.html`, `sobre.html` | raiz | `<link rel="stylesheet" href="css/estilos.css">` |
| `receitas/bolo-de-bolacha.html`, `receitas/posset-de-limao.html` | `receitas/` | `<link rel="stylesheet" href="../css/estilos.css">` |
| `receitas/doces/pudim.html` | `receitas/doces/` | `<link rel="stylesheet" href="../../css/estilos.css">` |
| extra: `s07/inscricao.html` | fora de `site/` | `<link rel="stylesheet" href="site/css/estilos.css">` |

**Verificar:** DevTools › Network › recarregar: o `estilos.css` aparece com o estado **200** em todas as páginas (404 = o caminho está errado).

**Os erros mais comuns:**
- esquecer o `rel="stylesheet"`: o browser não usa o ficheiro;
- `href="/css/estilos.css"` (a começar por `/`): funciona no Live Server, mas parte quando o site está numa subpasta (no GitHub Pages, por exemplo);
- `css\estilos.css`, com a barra do Windows: nos endereços é sempre `/`;
- não gravar o `.css`.

O site completo: `02-html-css/s07/site/`.
