// S4 · solucao 4.1 · estudo de caso 2.6 · media da turma
inicio
    inteiro alunos, contador
    real nota, total <- 0

    escrever "Quantos alunos tem a turma? "
    ler alunos

    para contador de 1 ate alunos passo 1
        escrever "Nota do aluno ", contador, ": "
        ler nota
        total <- total + nota
    proximo

    escrever "Media da turma: ", total / alunos
fim
