// S4 · solucao 2.3 A · ficha 32 · soma dos pares de 1 a 500
inicio
    inteiro i, soma <- 0
    para i de 1 ate 500 passo 1
        se i % 2 = 0 entao
            soma <- soma + i
        fimse
    proximo
    escrever "Soma dos pares de 1 a 500: ", soma
    // outra forma, sem se: para i de 2 ate 500 passo 2
fim
