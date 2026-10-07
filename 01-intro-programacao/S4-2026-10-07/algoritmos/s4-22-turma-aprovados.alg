// S4 · desafio 4.2 · estudos 2.6 + 2.7 · a turma toda, a contar
inicio
    inteiro alunos, i, passou <- 0, exame <- 0, chumbou <- 0
    real nota1, nota2, media

    escrever "Quantos alunos? "
    ler alunos

    para i de 1 ate alunos passo 1
        escrever "Aluno ", i, " - nota 1: "
        ler nota1
        escrever "Aluno ", i, " - nota 2: "
        ler nota2
        media <- (nota1 + nota2) / 2
        se media >= 7 entao
            passou <- passou + 1
        senao
            se media < 4 entao
                chumbou <- chumbou + 1
            senao
                exame <- exame + 1
            fimse
        fimse
    proximo

    escrever "Passaram: ", passou, "\n"
    escrever "Exame: ", exame, "\n"
    escrever "Chumbaram: ", chumbou
fim
