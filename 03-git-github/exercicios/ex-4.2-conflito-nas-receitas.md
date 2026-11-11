# Exercício 4.2 · Um conflito nas receitas

**Sessão 2 do módulo 3 · sozinhos · cerca de 13 minutos**

Vão provocar um conflito de propósito, resolvê-lo, e depois provocar outro e desistir dele. No fim, um conflito deixa de assustar.

## O ponto de partida

O repositório das receitas, como ficou no 4.1, no `main` e com o `git status` limpo.

## O que fazer

1. Criem o branch **`titulo-verao`**. Nele, mudem o `<h1>` do `index.html` para "Receitas de verão" e façam o commit.
2. Voltem ao `main` e mudem o **mesmo** `<h1>` para outro título (por exemplo, "As receitas da avó"). Commit.
3. No `main`, juntem o `titulo-verao`: o Git avisa que há um **conflito**. Vejam o `git status`.
4. Abram o `index.html` no browser **antes** de resolver: os marcadores aparecem na página.
5. Resolvam no VS Code: fiquem com um dos títulos (ou juntem os dois), apaguem os marcadores `<<<<<<<`, `=======` e `>>>>>>>`, gravem, vejam no browser, e terminem com `git add` e `git commit`.
6. Agora outra vez, mas com a **cor do cabeçalho** no CSS: num branch `cores-novas` uma cor, no `main` outra, e o merge. Desta vez, **desistam** com `git merge --abort` e confirmem com o `git status` que ficou tudo como antes.
7. Apaguem os dois branches (o `cores-novas` nunca foi juntado: o `-d` recusa, é preciso o `-D`) e colem o `git log --oneline --graph` no chat.

## Se acabarem cedo

Repitam o passo 6 até ao fim: façam o merge das `cores-novas` e resolvam o conflito no CSS com os botões do VS Code (Accept Current, Accept Incoming, Accept Both).
