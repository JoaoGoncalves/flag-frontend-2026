// S4 · trabalho de casa · ficha 50 · 20 temperaturas: menor, maior e media
inicio
    constante inteiro TAM <- 20
    real temp[TAM], menor, maior, soma <- 0
    inteiro i

    para i de 0 ate TAM - 1 passo 1
        escrever "Temperatura ", i + 1, ": "
        ler temp[i]
        soma <- soma + temp[i]
    proximo

    menor <- temp[0]
    maior <- temp[0]
    para i de 1 ate TAM - 1 passo 1
        se temp[i] < menor entao
            menor <- temp[i]
        fimse
        se temp[i] > maior entao
            maior <- temp[i]
        fimse
    proximo

    escrever "Menor: ", menor, "\n"
    escrever "Maior: ", maior, "\n"
    escrever "Media: ", soma / TAM
fim
