# Solução 5.1 · O site das receitas no GitHub (e online)

O `<username>` é o vosso nome de utilizador no GitHub. O endereço exato do repositório está na página que o GitHub mostra logo a seguir a criá-lo (o botão de copiar, ao lado de **HTTPS**).

**No GitHub:** o **+** no canto superior direito › **New repository** › *Repository name*: `receitas` › **Public** › **sem** README, sem `.gitignore`, sem licença › **Create repository**.

```bash
# 1 · na pasta das receitas, tudo guardado?
cd …/receitas
git status                          # nothing to commit, working tree clean

# 2 · ligar ao GitHub
git remote add origin https://github.com/<username>/receitas.git
git remote -v                       # origin  https://github.com/<username>/receitas.git (fetch) e (push)

# 3 · enviar o main (a primeira vez, com -u)
git push -u origin main
# a primeira vez, o VS Code pede para entrar com o GitHub: Allow › o browser › Authorize

# 5 · uma mudança pequena, e enviar
# … mudar o texto do rodapé no index.html …
git commit -am "Muda o texto do rodapé"
git push                            # já sem o -u: o Git lembra-se para onde
```

**4 · O histórico no GitHub:** o relógio com o número de commits (por cima da lista de ficheiros) abre a lista de commits; um clique num commit mostra o que mudou (a verde o que entrou, a vermelho o que saiu); num ficheiro, **History** mostra só os commits desse ficheiro.

**6 · O site online:** **Settings › Pages** › *Build and deployment* › *Source*: **Deploy from a branch** › *Branch*: **main** e **/ (root)** › **Save**. Ao fim de um minuto, a mesma página mostra o endereço: `https://<username>.github.io/receitas/`. O separador **Actions** mostra o site a ser publicado (*pages build and deployment*).

**Os erros mais comuns:**

- `error: remote origin already exists`: o `remote` já foi acrescentado. O `git remote -v` mostra para onde aponta; se estiver errado, `git remote set-url origin <o endereço certo>`.
- `! [rejected] main -> main (fetch first)`: o repositório no GitHub foi criado **com** README e tem um commit que vocês não têm. O mais simples: apagar o repositório no GitHub (Settings › Danger Zone) e criá-lo outra vez, vazio.
- `error: src refspec main does not match any`: não há commits, ou o branch não se chama `main` (o `git branch` diz o nome).
- `Support for password authentication was removed`: escreveram a password da conta. O GitHub já não a aceita: façam o push no terminal do **VS Code**, que abre o browser para entrar.
- O site dá **404**: ainda não acabou de publicar (esperem e atualizem), ou o `index.html` não está na raiz do repositório.
