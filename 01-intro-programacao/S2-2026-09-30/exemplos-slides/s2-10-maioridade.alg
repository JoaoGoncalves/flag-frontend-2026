// S2 · desafio · maior de idade?
inicio
    texto nome
    inteiro ano, idade
    constante inteiro ANO_ATUAL <- 2026

    escrever "Nome: "
    ler nome
    escrever "Ano de nascimento: "
    ler ano

    idade <- ANO_ATUAL - ano

    se idade >= 18 entao
        escrever nome, " tem ", idade, " anos: maior de idade."
    senao
        escrever nome, " tem ", idade, " anos: ainda nao e maior de idade."
    fimse
fim
