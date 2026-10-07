// S4 · solucao 2.2 · os dois bugs corrigidos
inicio
    inteiro contador, factorial
    factorial <- 1               // bug 1: comecar em 1 (0 * tudo = 0)
    contador <- 1
    enquanto contador <= 5 faz   // bug 2: <= (com < faltava a ultima volta)
        factorial <- factorial * contador
        contador <- contador + 1
    fimenquanto
    escrever "5! = ", factorial
fim
