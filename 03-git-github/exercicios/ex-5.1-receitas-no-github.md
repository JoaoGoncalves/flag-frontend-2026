# Exercício 5.1 · O site das receitas no GitHub (e online)

**Sessão 3 do módulo 3 · sozinhos · cerca de 15 minutos**

Vão fazer com as receitas o que fizemos com o livro: criar o repositório no GitHub, ligá-lo ao vosso e enviar o histórico. No fim, o site fica **online**, com o GitHub Pages.

## O ponto de partida

O vosso repositório das receitas, como ficou nos exercícios 4.1 e 4.2. O `git status` tem de estar limpo.

Não o têm? Descarreguem o `03-git-github/s01/receitas-s01.zip` do repositório do curso (agora já o têm clonado: está na vossa `flag-frontend-2026`). Copiem o zip para a vossa `flag-frontend/03-git-github/s03/` e descompactem-no lá: a pasta `receitas` já traz o repositório e o primeiro commit.

## O que fazer

1. No GitHub, criem um repositório novo chamado **`receitas`**: **Public**, e **sem** README, sem `.gitignore` e sem licença (o vosso repositório já tem histórico).
2. No terminal do VS Code, na pasta das receitas, liguem-no ao do GitHub (`git remote add origin …`, com o endereço que o GitHub vos mostra) e confirmem com `git remote -v`.
3. Enviem o `main`: `git push -u origin main`. Atualizem a página do repositório no GitHub: os ficheiros e os commits estão lá.
4. No GitHub, vejam o histórico: a lista de commits, um commit aberto (o que mudou, a verde e a vermelho) e o histórico do `index.html`.
5. No vosso computador, mudem uma coisa pequena (o texto do rodapé, por exemplo), façam o commit e enviem com `git push` (agora já sem o `-u`). Confirmem no GitHub.
6. Ponham o site online: no repositório, **Settings › Pages**, em *Build and deployment* escolham **Deploy from a branch**, o branch **`main`** e a pasta **`/ (root)`**, e **Save**.
7. Esperem um minuto e abram `https://<o-vosso-username>.github.io/receitas/`. Colem o link no chat do Teams.

Na dúvida, `git status` e `git remote -v`.

## Se acabarem cedo

- Enviem também os branches que ainda tenham: `git push origin --all`. No GitHub, vejam-nos no seletor de branches e em **Insights › Network**.
- Mudem a cor do cabeçalho, commit e push: o site online atualiza-se sozinho (pode demorar um minuto).
