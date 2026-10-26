# Exercício 7.2 · O plano do módulo numa tabela

> Parte 7 · Tabelas · **para treinar, sem entrega obrigatória**

Ficheiro `s05/plano.html` (estrutura completa, com `!` + Tab).

Construam esta tabela:

- **legenda** (`caption`): "Módulo HTML e CSS: as primeiras sete sessões"
- **cabeçalho** (`thead`) com quatro colunas: Bloco · Sessão · Data · Tema
- **corpo** (`tbody`) com sete linhas, S1 a S7:

| Sessão | Data | Tema |
|---|---|---|
| S1 | 14 out | Introdução ao HTML e ferramentas |
| S2 | 16 out | Sintaxe, estrutura base e texto |
| S3 | 19 out | Texto, listas e links |
| S4 | 21 out | Links e imagens |
| S5 | 26 out | Tabelas e multimédia |
| S6 | 28 out | Formulários e semântica |
| S7 | 30 out | CSS: primeiros passos |

- na coluna **Bloco**, uma só célula "Já demos" que ocupa as linhas S1 a S4 (`rowspan`) e uma só célula "Esta semana" para as linhas S5 a S7; as duas em `th scope="row"`
- **rodapé** (`tfoot`) com uma única célula que ocupa as quatro colunas (`colspan`): "12 sessões no total, mais a de 23 out, a compensar."

**Pronto quando:** o validador diz "No errors" e, no browser, cada bloco aparece uma só vez, ao lado das suas linhas.
