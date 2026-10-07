// S4 · solucao 3.2 B · ficha 45 · vetor B = vetor A invertido
inicio
    constante inteiro TAM <- 20   // para testar depressa, mudem para 4
    inteiro a[TAM], b[TAM], i

    para i de 0 ate TAM - 1 passo 1
        escrever "A[", i, "]: "
        ler a[i]
    proximo

    // o primeiro de A e o ultimo de B
    para i de 0 ate TAM - 1 passo 1
        b[TAM - 1 - i] <- a[i]
    proximo

    para i de 0 ate TAM - 1 passo 1
        escrever a[i], "  ->  ", b[i], "\n"
    proximo
fim
