// S3 · exercicio 4.3 · desafio: calculadora sem divisao por zero
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
            se b = 0 entao
                escrever "Erro: nao se pode dividir por zero"
            senao
                escrever a, " / ", b, " = ", a / b
            fimse
        defeito:
            escrever "Operacao desconhecida"
    fimescolhe
fim
