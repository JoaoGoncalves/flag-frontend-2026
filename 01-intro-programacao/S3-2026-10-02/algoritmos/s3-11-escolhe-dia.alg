// S3 · snippet 11 · escolhe / caso: que dia e hoje?
inicio
    inteiro dia

    escrever "Dia da semana (1 = segunda ... 7 = domingo): "
    ler dia

    escolhe dia
        caso 1, 3, 5:
            escrever "Dia de formacao na FLAG"
        caso 2, 4:
            escrever "Dia de treinar em casa"
        caso 6, 7:
            escrever "Fim de semana"
        defeito:
            escrever "Esse dia nao existe"
    fimescolhe
fim
