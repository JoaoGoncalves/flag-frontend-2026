// S3 · desafio · ficha 16 · tres valores por ordem crescente (sem vetores)
inicio
    inteiro a, b, c, aux

    escrever "A: "
    ler a
    escrever "B: "
    ler b
    escrever "C: "
    ler c

    // cada se garante que o menor dos dois fica a esquerda (a troca dos copos)
    se a > b entao
        aux <- a
        a <- b
        b <- aux
    fimse
    se b > c entao
        aux <- b
        b <- c
        c <- aux
    fimse
    se a > b entao
        aux <- a
        a <- b
        b <- aux
    fimse

    escrever a, " ", b, " ", c
fim
