// S3 · snippet 10 · e / ou / nao: preco do bilhete do museu
inicio
    inteiro idade
    logico estudante
    caracter resposta

    escrever "Idade: "
    ler idade
    escrever "Estudante? (s/n) "
    ler resposta
    estudante <- resposta = "s"

    se idade < 12 ou idade >= 65 entao
        escrever "Entrada gratuita"
    senao
        se estudante e idade <= 25 entao
            escrever "Bilhete jovem: 5 euros"
        senao
            escrever "Bilhete normal: 10 euros"
        fimse
    fimse
fim
