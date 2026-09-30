inicio
        inteiro temperatura
        
        escrever "Temperatura da sala: "
        ler temperatura

        se temperatura >= 23 entao
            escrever "Ligar o AC no frio"
        senao
            se temperatura <= 18 entao
                escrever "Ligar o AC no quente"
            senao
                escrever "Temperatura agradavel: AC desligado"
            fimse
        fimse
    fim