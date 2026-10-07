// S4 · extra · ficha 52 · B: os impares de A multiplicados por 2
inicio
    constante inteiro TAM <- 12   // para testar depressa, mudem para 4
    inteiro a[TAM], b[TAM], i

    para i de 0 ate TAM - 1 passo 1
        escrever "A[", i, "]: "
        ler a[i]
        se a[i] % 2 =/= 0 entao
            b[i] <- a[i] * 2
        senao
            b[i] <- a[i]
        fimse
    proximo

    para i de 0 ate TAM - 1 passo 1
        escrever b[i], " "
    proximo
fim
