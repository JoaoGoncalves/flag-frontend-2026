// S4 · desafio · ficha 42 · B = factorial de cada elemento de A (um ciclo dentro de outro)
// valores de 0 a 10: o Portugol nao mostra inteiros >= 10 000 000 (11! ja falha)
inicio
    constante inteiro TAM <- 15
    inteiro a[TAM], b[TAM], i, k

    para i de 0 ate TAM - 1 passo 1
        escrever "A[", i, "] (0 a 10): "
        ler a[i]
    proximo

    para i de 0 ate TAM - 1 passo 1
        b[i] <- 1
        para k de 1 ate a[i] passo 1
            b[i] <- b[i] * k
        proximo
    proximo

    para i de 0 ate TAM - 1 passo 1
        escrever a[i], "! = ", b[i], "\n"
    proximo
fim
