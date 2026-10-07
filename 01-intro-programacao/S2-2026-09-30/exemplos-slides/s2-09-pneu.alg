// S2 · snippet 9 · o pneu da sessao 1, a correr
inicio
    caracter publica
    inteiro parafusos

    escrever "Estas numa zona publica? (s/n) "
    ler publica
    se publica = "s" entao
        escrever "Ligar os quatro piscas\n"
    fimse

    escrever "Quantos parafusos tem a roda? "
    ler parafusos

    enquanto parafusos > 0 faz
        escrever "Desapertar o parafuso ", parafusos, "\n"
        parafusos <- parafusos - 1
    fimenquanto

    escrever "Roda solta: levantar o carro com o macaco"
fim
