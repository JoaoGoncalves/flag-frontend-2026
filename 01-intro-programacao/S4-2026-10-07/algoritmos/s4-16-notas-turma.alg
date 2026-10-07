// S4 · solucao 3.1 · ler 5 notas para um vetor, media e a maior
inicio
    real notas[5]
    real soma <- 0, maior
    inteiro i

    para i de 0 ate 4 passo 1
        escrever "Nota ", i + 1, ": "
        ler notas[i]
        soma <- soma + notas[i]
    proximo

    maior <- notas[0]
    para i de 1 ate 4 passo 1
        se notas[i] > maior entao
            maior <- notas[i]
        fimse
    proximo

    escrever "Media: ", soma / 5, "\n"
    escrever "Maior: ", maior
fim
