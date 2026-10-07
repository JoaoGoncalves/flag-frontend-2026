// S4 · extra · ficha 36 · serie de Fibonacci ate ao 15.o termo
inicio
    inteiro i, anterior <- 0, atual <- 1, seguinte
    para i de 1 ate 15 passo 1
        escrever atual, " "
        seguinte <- anterior + atual
        anterior <- atual
        atual <- seguinte
    proximo
fim
