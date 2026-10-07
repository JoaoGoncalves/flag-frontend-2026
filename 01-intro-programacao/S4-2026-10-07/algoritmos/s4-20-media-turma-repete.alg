// S4 · solucao 4.1 · estudo de caso 2.6 · outra opcao, com repete ... ate
inicio
    inteiro alunos, contador <- 1
    real nota, total <- 0

    escrever "Quantos alunos tem a turma? "
    ler alunos

    repete
        escrever "Nota do aluno ", contador, ": "
        ler nota
        total <- total + nota
        contador <- contador + 1
    ate contador > alunos

    escrever "Media da turma: ", total / alunos
fim
