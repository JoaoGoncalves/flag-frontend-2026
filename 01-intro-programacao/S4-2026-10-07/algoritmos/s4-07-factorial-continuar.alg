// S4 · solucao 1.2 · ficha 27 · factorial de N, ate o utilizador dizer que nao
inicio
    // ate 10! (limite do Portugol)
    inteiro n, contador, factorial
    caracter resposta <- "s"

    enquanto resposta = "s" ou resposta = "S" faz
        escrever "Factorial de que numero? "
        ler n

        factorial <- 1
        para contador de 1 ate n passo 1
            factorial <- factorial * contador
        proximo

        escrever n, "! = ", factorial, "\n"
        escrever "Continuar? (s/n) "
        ler resposta
    fimenquanto
    escrever "Adeus!"
fim
