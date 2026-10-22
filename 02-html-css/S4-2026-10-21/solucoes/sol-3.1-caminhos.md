# Solução 3.1 · Caminhos relativos

| # | Estou em… | Quero chegar a… | href | Porquê |
|---|---|---|---|---|
| 1 | `index.html` | `sobre.html` | `sobre.html` | mesma pasta |
| 2 | `index.html` | `pudim.html` | `receitas/doces/pudim.html` | desce duas pastas |
| 3 | `bolo-de-bolacha.html` | `index.html` | `../index.html` | `../` sobe uma pasta |
| 4 | `pudim.html` | `ajuda.html` | `../../ajuda.html` | `../../` sobe duas pastas |
| 5 | `pudim.html` | `bolo-de-bolacha.html` | `../bolo-de-bolacha.html` | sobe uma |
| 6 | `sobre.html` | `#contactos` | `#contactos` | o `#` aponta para um `id` |

Regra: ler o caminho a partir da pasta onde está o ficheiro que tem o link. Barra `/`, nunca `\`. Um caminho a começar por `/` (ex.: `/ajuda.html`) é relativo à raiz do servidor: funciona no servidor, mas não se abrirem o ficheiro com duplo clique.
