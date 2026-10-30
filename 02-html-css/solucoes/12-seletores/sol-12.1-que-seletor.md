# Solução 12.1 · Que seletor?

| # | Escolher… | Seletor | O símbolo |
|---|---|---|---|
| 1 | Todos os elementos | `*` | universal |
| 2 | Os `p` com `class="nota"` | `p.nota` | elemento e classe colados: classe **dependente** (`.nota` também serve, mas apanharia qualquer elemento) |
| 3 | Só os links dentro do `nav` | `nav a` | o **espaço**: descendente ("dentro de") |
| 4 | Os `li` filhos diretos de uma `ul` | `ul > li` | o **>**: filho direto |
| 5 | Os `h1` e os `h2` | `h1, h2` | a **vírgula**: grupo |
| 6 | Um link com o rato por cima | `a:hover` | os **dois pontos**: pseudo-classe (um estado) |
