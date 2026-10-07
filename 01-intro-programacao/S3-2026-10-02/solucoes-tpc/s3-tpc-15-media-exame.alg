// S3 · trabalho de casa · ficha 15 · media com exame (um se dentro do senao)
inicio
    real n1, n2, media, exame

    escrever "Nota 1: "
    ler n1
    escrever "Nota 2: "
    ler n2

    media <- (n1 + n2) / 2

    se media >= 7 entao
        escrever "Aprovado com media ", media
    senao
        escrever "Media ", media, ": vai a exame\n"
        escrever "Nota do exame: "
        ler exame
        media <- (media + exame) / 2
        se media >= 5 entao
            escrever "Aprovado em exame com media ", media
        senao
            escrever "Reprovado com media ", media
        fimse
    fimse
fim
