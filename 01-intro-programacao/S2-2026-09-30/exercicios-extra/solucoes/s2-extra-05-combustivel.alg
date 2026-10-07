// S2 · extra · ficha 5 · litros gastos numa viagem (12 km por litro)
inicio
    real tempo, velocidade, distancia, litros

    escrever "Tempo de viagem (horas): "
    ler tempo
    escrever "Velocidade media (km/h): "
    ler velocidade

    distancia <- tempo * velocidade
    litros <- distancia / 12

    escrever "Velocidade media: ", velocidade, " km/h\n"
    escrever "Tempo: ", tempo, " h\n"
    escrever "Distancia: ", distancia, " km\n"
    escrever "Litros gastos: ", litros
fim
