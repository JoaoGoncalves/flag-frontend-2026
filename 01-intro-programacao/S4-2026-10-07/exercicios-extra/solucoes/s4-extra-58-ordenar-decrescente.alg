// S4 · extra · desafio · ficha 58 · ordem decrescente por troca de posicao
inicio
    constante inteiro TAM <- 12   // para testar depressa, mudem para 5
    inteiro a[TAM], i, j, aux

    para i de 0 ate TAM - 1 passo 1
        escrever "A[", i, "]: "
        ler a[i]
    proximo

    // cada volta de fora "empurra" o menor que falta para o fim
    para i de 0 ate TAM - 2 passo 1
        para j de 0 ate TAM - 2 - i passo 1
            se a[j] < a[j + 1] entao
                aux <- a[j]          // a troca dos copos (S3)
                a[j] <- a[j + 1]
                a[j + 1] <- aux
            fimse
        proximo
    proximo

    para i de 0 ate TAM - 1 passo 1
        escrever a[i], " "
    proximo
fim
