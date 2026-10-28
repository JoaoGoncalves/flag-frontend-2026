# Sessão 6 · Multimédia, formulários e semântica

**HTML e CSS · joaogoncalves.net** · código para seguir a sessão

O que escrevemos fica em `s06/` no GitHub. Escrevam-no vocês: copiar não conta.
Exercícios por tema: **8** multimédia · **9** formulários · **10** semântica.

---

## Antes de começar

Copiem a pasta `s05/site/` para `s06/site/` e abram o Live Server.

**Um erro a corrigir no pudim** (`receitas/doces/pudim.html`), no menu. Estamos em `receitas/doces/`: o posset está uma pasta acima.

```html
<!-- errado -->
<li><a href="receitas/posset-de-limao.html">Posset de limão</a></li>
<!-- certo -->
<li><a href="../posset-de-limao.html">Posset de limão</a></li>
```

**No posset:** `lang="pt-PT"` e o `alt` a descrever a fotografia.

```html
<html lang="pt-PT">
…
<img src="../img/lemon-posset.jpg" alt="Duas taças de posset de limão com lascas de amêndoa torrada" width="150" height="150">
```

### A pasta s06 no fim do dia

```text
s06/
├── inscricao.html              exercício 9.1 (formulários)
└── site/
    ├── index.html              header, main com duas section, footer com address
    ├── sobre.html              + mapa (iframe) + formulário "Escrevam-nos"
    ├── audio/                  temporizador.ogg · temporizador.mp3
    ├── video/                  posset.mp4 · posset.webm · posset.pt.vtt
    ├── img/                    … + posset-poster.jpg
    └── receitas/
        ├── posset-de-limao.html   áudio, vídeo, article, aside, time
        ├── bolo-de-bolacha.html
        └── doces/pudim.html
```

---

## Parte 8 · Multimédia

### Os ficheiros

No GitHub, em `02-html-css/S5-2026-10-26/`:

| De | Ficheiros | Para |
|---|---|---|
| `video/` | `posset.mp4`, `posset.webm`, `posset.pt.vtt` | `s06/site/video/` |
| `video/` | `posset-poster.jpg` | `s06/site/img/` |
| `audio/` | `temporizador.ogg`, `temporizador.mp3` | `s06/site/audio/` |

### Stop · passo 1 · O áudio no posset

`receitas/posset-de-limao.html`, logo a seguir à `ol` da preparação:

```html
<p>Os 3 minutos do passo 2, com o som do temporizador:</p>
<audio controls>
  <source src="../audio/temporizador.ogg" type="audio/ogg">
  <source src="../audio/temporizador.mp3" type="audio/mpeg">
</audio>
```

### Stop · passo 2 · O vídeo no posset

Antes do "← Voltar às receitas". Todos os caminhos levam `../`: estamos dentro de `receitas/`.

```html
<h2>Veja como se faz</h2>
<video controls width="640" height="360" poster="../img/posset-poster.jpg" preload="metadata">
  <source src="../video/posset.webm" type="video/webm">
  <source src="../video/posset.mp4" type="video/mp4">
  <track kind="captions" src="../video/posset.pt.vtt" srclang="pt" label="Português" default>
  O vosso browser não reproduz vídeo: <a href="../video/posset.mp4">descarreguem-no aqui</a>.
</video>
```

| Atributo | Para quê |
|---|---|
| `controls` | mostra os botões |
| `width` / `height` | reservam o espaço (como na `img`) |
| `poster` | a imagem antes de começar |
| `preload` | `"metadata"`: só a duração e o 1.º fotograma · `"none"` · `"auto"` |
| `source` | vários formatos: o browser usa o primeiro que conhece |
| `track` | legendas (ficheiro `.vtt`). **Só funcionam com o Live Server**, não com duplo clique |
| `autoplay` | só com `muted`, e quase nunca |

### Stop · passo 3 · As legendas

O ficheiro `posset.pt.vtt` é texto: mudem uma frase, gravem e recarreguem.

```text
WEBVTT

00:00:02.000 --> 00:00:04.000
Levem as natas e o açúcar ao lume até ferver.
```

| `kind` | Para quê |
|---|---|
| `subtitles` | tradução do que se diz (é o valor por omissão) |
| `captions` | para quem não ouve: o que se diz e os sons ("[ding]") |
| `descriptions` · `chapters` · `metadata` | raros |

Vários `track` no mesmo vídeo: um ficheiro `.vtt` por língua, só um `default`. O leitor mostra-os no menu CC.

```html
<track kind="captions"  src="../video/posset.pt.vtt" srclang="pt" label="Português (legendas para surdos)" default>
<track kind="subtitles" src="../video/posset.en.vtt" srclang="en" label="English">
```

### iframes · YouTube e Google Maps

O código copia-se: **Partilhar › Incorporar**. Depois:

- **+ `title="…"`**: diz o que está lá dentro (o leitor de ecrã anuncia-o)
- **+ `loading="lazy"`**: só carrega quando chega ao ecrã
- **− `frameborder="0"`**: obsoleto, o validador dá erro (é CSS)

### Stop · passo 4 · O mapa no Sobre

`sobre.html`, antes do `hr` do rodapé:

```html
<h2>Onde estamos</h2>
<iframe src="https://maps.google.com/maps?q=Rua%20Augusta%2C%20Lisboa&amp;output=embed"
        width="600" height="450" style="border:0;"
        title="Mapa: a Rua Augusta, em Lisboa"
        allowfullscreen loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
```

YouTube (troquem o `…` pelo código do vídeo que escolherem):

```html
<iframe width="560" height="315" src="https://www.youtube.com/embed/…"
        title="Vídeo: como fazer bolo de bolacha"
        allow="clipboard-write; encrypted-media; picture-in-picture"
        allowfullscreen loading="lazy"></iframe>
```

### Stop · passo 5 · Validar

As duas páginas em https://validator.w3.org/nu/

---

## Parte 9 · Formulários

### O essencial

| | |
|---|---|
| `name` | o que se envia: `name=valor`. Sem `name`, o campo não vai |
| `label` | `for="x"` no label, `id="x"` no campo: clicar no texto põe o cursor no campo |
| `method` | `get`: os dados vão no endereço (`?nome=…`) · `post`: no corpo do pedido, para um servidor |
| `action` | para onde vão; sem `action`, para a mesma página. `https://httpbin.org/anything` devolve o que recebeu |
| `input` | void element (sem fecho) · `button` e `textarea` têm fecho |
| `type` | `text` · `email` · `tel` · `url` · `number` · `date` · `checkbox` · `radio` · `password` · `search` |
| `radio` | o mesmo `name` em todos: escolhe-se um |
| `select` | `<option value="o-que-se-envia">o que se vê</option>` |
| validação | `required` · `min` · `max` · `step` · `minlength` · `maxlength` · `pattern` (+ `title`). O browser trava o envio e diz porquê; o servidor valida sempre outra vez |

### Stop · Um formulário de contacto

`s06/site/sobre.html`, antes do `hr` do rodapé. **Primeiro** com `<form method="get">` (sem `action`); **depois** trocamos a primeira linha do `form` por esta, para enviar a um servidor de teste:

```html
<h2>Escrevam-nos</h2>
<form action="https://httpbin.org/anything" method="post">
  <p>
    <label for="nome">Nome</label>
    <input type="text" id="nome" name="nome" required autocomplete="name">
  </p>
  <p>
    <label for="email">Email</label>
    <input type="email" id="email" name="email" required autocomplete="email">
  </p>
  <p>
    <label for="assunto">Assunto</label>
    <select id="assunto" name="assunto">
      <option value="receita">Uma receita</option>
      <option value="erro">Um erro no site</option>
      <option value="outro">Outro assunto</option>
    </select>
  </p>
  <p>
    <label for="mensagem">Mensagem</label><br>
    <textarea id="mensagem" name="mensagem" rows="5" cols="40" required></textarea>
  </p>
  <p>
    <input type="checkbox" id="novidades" name="novidades" value="sim">
    <label for="novidades">Quero receber as receitas novas por email</label>
  </p>
  <p><button type="submit">Enviar</button></p>
</form>
```

**Experimentem:**

1. Enviar com o email vazio: o browser trava e diz porquê.
2. Com `method="get"` (sem `action`): ler o endereço.

```text
sobre.html?nome=Ana+Martins&email=ana%40exemplo.pt&assunto=receita&mensagem=…
```

3. Com `action="https://httpbin.org/anything" method="post"`: o httpbin devolve, em JSON, **o que o servidor recebeu**. Os campos estão em `"form"`; nada aparece no endereço. Plano B, se o httpbin não responder: `https://postman-echo.com/post`.

```json
{
  "form": {
    "assunto": "receita",
    "email": "ana@exemplo.pt",
    "mensagem": "Adorei o posset! …",
    "nome": "Ana Martins"
  },
  "method": "POST",
  "url": "https://httpbin.org/anything"
}
```

A checkbox não marcada não aparece: só se envia o que está marcado.

### Exercício 9.1 · Inscrição num workshop

Ficheiro `s06/inscricao.html` · enunciado: `exercicios/09-formularios/ex-9.1-inscricao.md`

- [ ] nome e email, com `required`
- [ ] workshop: `select` com 3 `option`
- [ ] turno: dois `radio` (manhã, tarde) com o mesmo `name`
- [ ] `checkbox` obrigatória "Li e aceito as regras do workshop"
- [ ] `form action="https://httpbin.org/anything" method="post"` e `button` "Inscrever": enviar e ler o JSON · validador: No errors

**Extra:** `fieldset` + `legend`, `date` com `min`, `number` de 1 a 4, `tel` com `pattern`.

---

## Parte 10 · Semântica

### As zonas com nome

| Elemento | O que é |
|---|---|
| `header` | o topo: nome do site e o `nav` (também pode estar dentro de um `article`) |
| `nav` | o menu |
| `main` | o conteúdo próprio da página: **um só por página** |
| `section` | uma parte de um todo, com o seu título |
| `article` | faz sentido sozinho: uma receita, uma notícia |
| `aside` | à parte: outras receitas, publicidade, notas |
| `footer` | o fundo: ©, contactos |
| `address` | os contactos de quem escreve |
| `time` | `<time datetime="2026-10-26">26 de outubro de 2026</time>` |

Nada disto muda o aspeto: diz o que cada zona é. O CSS usa-o a partir de 6.ª.

### Stop · O posset com estrutura semântica

`receitas/posset-de-limao.html`:

```html
<body>
  <header>
    <p><strong>Receitas da Avó</strong></p>
    <nav> … o menu, igual … </nav>
  </header>

  <main>
    <article>
      <header>
        <h1>Posset de limão</h1>
        <p>Publicada a <time datetime="2026-10-26">26 de outubro de 2026</time></p>
      </header>
      … a receita, o áudio e o vídeo …
    </article>

    <aside>
      <h2>Outras receitas</h2>
      <ul>
        <li><a href="bolo-de-bolacha.html">Bolo de bolacha</a></li>
        <li><a href="doces/pudim.html">Pudim</a></li>
      </ul>
    </aside>

    <p><a href="../index.html">← Voltar às receitas</a></p>
  </main>

  <footer>
    <p><small>© 2026 Receitas da Avó</small></p>
  </footer>
</body>
```

`index.html`: o mesmo `header`; no `main`, cada `h2` com o seu conteúdo numa `section`; e:

```html
<footer>
  <p><small>© 2026 Receitas da Avó</small></p>
  <address>Escrevam-nos: <a href="mailto:receitas@exemplo.pt">receitas@exemplo.pt</a></address>
</footer>
```

**Para treinar (10.2):** o mesmo no sobre, no bolo de bolacha e no pudim.

---

## Links

- Validador: https://validator.w3.org/nu/
- MDN · video: https://developer.mozilla.org/pt-BR/docs/Web/HTML/Element/video
- MDN · iframe: https://developer.mozilla.org/pt-BR/docs/Web/HTML/Element/iframe
- MDN · formulários (Learn): https://developer.mozilla.org/pt-BR/docs/Learn/Forms
- MDN · tipos de input: https://developer.mozilla.org/pt-BR/docs/Web/HTML/Element/input
- MDN · semântica: https://developer.mozilla.org/pt-BR/docs/Glossary/Semantics
- Material do curso: https://github.com/JoaoGoncalves/flag-frontend-2026
- Dúvidas: chat do Teams · WhatsApp +351 910 346 437
