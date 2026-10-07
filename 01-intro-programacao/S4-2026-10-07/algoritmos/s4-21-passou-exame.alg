// S4 · solucao 4.2 · estudo de caso 2.7 · passou, exame ou chumbou
inicio
    real nota1, nota2, media

    escrever "Nota 1: "
    ler nota1
    escrever "Nota 2: "
    ler nota2

    media <- (nota1 + nota2) / 2
    escrever "Media: ", media, " - "

    se media >= 7 entao
        escrever "Passou"
    senao
        se media < 4 entao
            escrever "Chumbou"
        senao
            escrever "Vai a exame"
        fimse
    fimse
fim
