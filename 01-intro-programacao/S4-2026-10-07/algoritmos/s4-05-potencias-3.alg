// S4 · solucao 1.1 B · ficha 35 · potencias de 3, de 0 a 15
// Atencao: no Portugol, um inteiro calculado >= 10 000 000 aparece como 1
// (3 ^ 15 = 14348907 da 1). Com real funciona: aparece como 1.4348907E7.
// Cada potencia e a anterior x 3: um "acumulador" de produtos.
inicio
    inteiro expoente
    real valor <- 1
    para expoente de 0 ate 15 passo 1
        escrever "3^", expoente, " = ", valor, "\n"
        valor <- valor * 3
    proximo
fim
