// S3 · trabalho de casa · ficha 14 · media de 4 notas (sem vetores: chegam na S4)
inicio
    real n1, n2, n3, n4, media

    escrever "Nota 1: "
    ler n1
    escrever "Nota 2: "
    ler n2
    escrever "Nota 3: "
    ler n3
    escrever "Nota 4: "
    ler n4

    media <- (n1 + n2 + n3 + n4) / 4

    se media >= 5 entao
        escrever "Aprovado com media ", media
    senao
        escrever "Reprovado com media ", media
    fimse
fim
