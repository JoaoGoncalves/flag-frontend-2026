// S4 · solucao 3.2 A · ficha 39 · vetor B = vetor A x 3
inicio
    constante inteiro TAM <- 8    // para testar depressa, mudem para 3
    inteiro a[TAM], b[TAM], i

    para i de 0 ate TAM - 1 passo 1
        escrever "A[", i, "]: "
        ler a[i]
        b[i] <- a[i] * 3
    proximo

    para i de 0 ate TAM - 1 passo 1
        escrever "B[", i, "] = ", b[i], "\n"
    proximo
fim
