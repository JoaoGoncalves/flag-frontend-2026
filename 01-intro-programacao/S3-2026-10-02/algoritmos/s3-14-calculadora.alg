// S3 · exercicio 4.3 · escolhe / caso: calculadora
inicio
    real a, b
    caracter op
    escrever "Primeiro numero: "
    ler a
    escrever "Operacao (+ - * /): "
    ler op
    escrever "Segundo numero: "
    ler b
    escolhe op
        caso "+":
            escrever a, " + ", b, " = ", a + b
        caso "-":
            escrever a, " - ", b, " = ", a - b
        caso "*", "x":
            escrever a, " * ", b, " = ", a * b
        caso "/":
            escrever a, " / ", b, " = ", a / b
        defeito:
            escrever "Operacao desconhecida"
    fimescolhe
fim
