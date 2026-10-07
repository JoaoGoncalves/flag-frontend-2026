// S4 · solucao 2.3 B · ler notas ate aparecer -1 (contador + acumulador)
inicio
    real nota, soma <- 0
    inteiro quantas <- 0

    escrever "Nota (-1 para terminar): "
    ler nota
    enquanto nota =/= -1 faz
        soma <- soma + nota
        quantas <- quantas + 1
        escrever "Nota (-1 para terminar): "
        ler nota
    fimenquanto

    se quantas > 0 entao
        escrever quantas, " notas\n"
        escrever "Media: ", soma / quantas
    senao
        escrever "Nenhuma nota"
    fimse
fim
