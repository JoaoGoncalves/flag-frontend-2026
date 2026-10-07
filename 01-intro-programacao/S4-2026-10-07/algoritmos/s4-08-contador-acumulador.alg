// S4 · snippet 8 · contador (soma 1) e acumulador (soma o valor)
inicio
    inteiro i, aprovados <- 0
    real nota, soma <- 0

    para i de 1 ate 4 passo 1
        escrever "Nota ", i, ": "
        ler nota
        soma <- soma + nota          // acumulador
        se nota >= 10 entao
            aprovados <- aprovados + 1   // contador
        fimse
    proximo

    escrever "Aprovados: ", aprovados, "\n"
    escrever "Media: ", soma / 4
fim
