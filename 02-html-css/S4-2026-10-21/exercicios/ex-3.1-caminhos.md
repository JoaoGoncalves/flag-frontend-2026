# Exercício 3.1 · Caminhos relativos

A estrutura do site:

```
site/
├── index.html
├── sobre.html
├── ajuda.html
└── receitas/
    ├── bolo-de-bolacha.html
    └── doces/
        └── pudim.html
```

Que `href` escrevem em cada caso?

| # | Estou em… | Quero chegar a… |
|---|---|---|
| 1 | `index.html` | `sobre.html` |
| 2 | `index.html` | `pudim.html` |
| 3 | `bolo-de-bolacha.html` | `index.html` |
| 4 | `pudim.html` | `ajuda.html` |
| 5 | `pudim.html` | `bolo-de-bolacha.html` |
| 6 | `sobre.html` | a secção com `id="contactos"` da mesma página |

## Para testar no Live Server

Descarreguem `ex-3.1-caminhos.zip` (Moodle ou chat do Teams), descompactem e abram a pasta `ex-3.1-caminhos/site/` no VS Code com o Live Server.

Cada página diz no título onde estão e tem os links do exercício com o `href` vazio (`href=""`):

- `index.html`: exercícios 1 e 2
- `receitas/bolo-de-bolacha.html`: exercício 3
- `receitas/doces/pudim.html`: exercícios 4 e 5
- `sobre.html`: exercício 6 (a secção Contactos está no fim da página)

Escrevam o `href`, gravem e cliquem: se chegarem à página certa, o caminho está certo. Se der 404 ("Cannot GET"), contem as pastas outra vez. Usem a seta "Voltar" do browser para regressar.

