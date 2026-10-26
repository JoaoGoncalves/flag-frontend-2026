# Exercício 9.1 · Inscrição num workshop de sobremesas

> Parte 9 · Formulários · sessão 6 (10 min)

Ficheiro `s06/inscricao.html` (estrutura completa, com `!` + Tab), com um `h1` "Inscrição num workshop" e um `form method="get"`:

1. **Nome** e **email**: `label` + `input` (`type="text"` e `type="email"`), os dois com `required`.
2. **Workshop**: um `select` com três `option`: Pastelaria portuguesa, Sobremesas sem forno, Pão caseiro.
3. **Turno**: dois `radio` (Manhã, Tarde) com o **mesmo `name`**, cada um com o seu `label`.
4. **Regras**: uma `checkbox` obrigatória (`required`) com o label "Li e aceito as regras do workshop".
5. Um `button` "Inscrever".

**Pronto quando:** clicar no texto de cada etiqueta põe o cursor no campo certo, o browser não deixa enviar sem os campos obrigatórios, depois de enviar o endereço mostra `?nome=…&email=…`, e o validador diz "No errors".

## Extra (para treinar)

- Agrupem os campos em `fieldset` com `legend`: "Os vossos dados", "O workshop", "Turno".
- **Telefone**: `type="tel"` com `pattern="[0-9]{9}"` e um `title` a explicar o formato.
- **Data**: `type="date"` com `min` (a primeira data possível) e `required`.
- **Pessoas**: `type="number"` de 1 a 4 (`min`, `max`, `value="1"`).
