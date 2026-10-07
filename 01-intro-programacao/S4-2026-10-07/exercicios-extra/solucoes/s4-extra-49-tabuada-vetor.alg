// S4 · extra · ficha 49 · tabuada guardada num vetor de 10
inicio
    inteiro tabuada[10], num, i

    escrever "Tabuada de que numero? "
    ler num

    para i de 0 ate 9 passo 1
        tabuada[i] <- num * (i + 1)
    proximo

    para i de 0 ate 9 passo 1
        escrever num, " x ", i + 1, " = ", tabuada[i], "\n"
    proximo
fim
