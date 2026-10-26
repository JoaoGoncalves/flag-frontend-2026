# Exercício 7.1 · O plano do módulo numa tabela

> Parte 7 · Tabelas · mini-exercício da sessão 5 (8 min)

Ficheiro `s05/plano.html` (estrutura completa, com `!` + Tab).

Construam esta tabela:

- **legenda** (`caption`): "Módulo HTML e CSS: as primeiras sessões"
- **cabeçalho** (`thead`) com três colunas, Sessão · Data · Tema, em `th scope="col"`
- **corpo** (`tbody`) com uma linha por sessão; a sessão (S1, S2…) em `th scope="row"`, o resto em `td`:

| Sessão | Data | Tema |
|---|---|---|
| S1 | 14 out | Introdução ao HTML e ferramentas |
| S2 | 16 out | Sintaxe, estrutura base e texto |
| S3 | 19 out | Texto, listas e links |
| S4 | 21 out | Links e imagens |
| S5 | 26 out | Tabelas e multimédia |
| S6 | 28 out | Formulários e semântica |
| S7 | 30 out | CSS: primeiros passos |

- **rodapé** (`tfoot`) com uma única célula que ocupa as três colunas (`colspan`): "12 sessões no total, mais a de 23 out, a compensar."

**Pronto quando:** o validador diz "No errors".

## Extra (para treinar)

Acrescentem à esquerda uma coluna **Bloco**: uma só célula "Já demos" para as linhas S1 a S4 e uma só célula "Esta semana" para S5 a S7 (`rowspan`, em `th scope="row"`). Não se esqueçam: o cabeçalho passa a ter 4 colunas e o `colspan` do rodapé passa a 4.
