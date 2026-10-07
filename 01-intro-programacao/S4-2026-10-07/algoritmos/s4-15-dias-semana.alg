// S4 · snippet 15 · um vetor simples: guardar e mostrar
inicio
    texto dias[5]
    inteiro i

    dias[0] <- "segunda"
    dias[1] <- "terca"
    dias[2] <- "quarta"
    dias[3] <- "quinta"
    dias[4] <- "sexta"

    escrever "Hoje e ", dias[2], "\n"

    para i de 0 ate 4 passo 1
        escrever "dias[", i, "] = ", dias[i], "\n"
    proximo
fim
