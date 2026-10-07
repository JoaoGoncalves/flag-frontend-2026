// S2 · extra · ficha 31 · soma de 1 a 100 (um contador e um acumulador)
inicio
    inteiro i, soma

    i <- 1
    soma <- 0
    enquanto i <= 100 faz
        soma <- soma + i
        i <- i + 1
    fimenquanto

    escrever "1 + 2 + ... + 100 = ", soma
fim
