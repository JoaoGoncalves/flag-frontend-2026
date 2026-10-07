// S4 · trabalho de casa · ficha 48 · B = metade de cada elemento de A
inicio
    constante inteiro TAM <- 10
    inteiro a[TAM], i
    real b[TAM]

    para i de 0 ate TAM - 1 passo 1
        escrever "A[", i, "]: "
        ler a[i]
        b[i] <- a[i] / 2.0     // com / 2 (inteiro / inteiro) 7 daria 3
    proximo

    para i de 0 ate TAM - 1 passo 1
        escrever a[i], "  ->  ", b[i], "\n"
    proximo
fim
