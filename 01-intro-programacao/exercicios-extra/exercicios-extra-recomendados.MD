# Sessão 2 · Exercícios extra: sequência, decisão e repetição

Da ficha `ficha-exercicios-algoritmos.pdf`. Resolvam no Portugol, um ficheiro `.alg` por exercício, e testem com os valores indicados.
Usem só o que já vimos: `escrever`, `ler`, variáveis, `se … senao … fimse` e `enquanto … faz … fimenquanto`.

## Sequência

**1. Soma dos quadrados (ficha 1)**
Ler dois valores reais e mostrar a soma dos seus quadrados.
Teste: 3 e 4 → `25`

**2. Combustível numa viagem (ficha 5)**
O carro faz 12 km por litro. Pedir o tempo de viagem (horas) e a velocidade média (km/h).
Calcular `distancia <- tempo * velocidade` e `litros <- distancia / 12`.
Mostrar a velocidade, o tempo, a distância e os litros gastos.
Teste: 2 h a 90 km/h → `180 km` e `15 litros`

## Decisão

**3. Não maior que 3 (ficha 22)**
Ler um valor e mostrá-lo apenas se **não** for maior que 3 (um `se` sem `senao`).
Testes: 2 → mostra · 3 → mostra · 5 → não mostra nada

**4. Divisíveis por 2 e por 3 (ficha 17)**
Ler quatro números inteiros e mostrar os que são divisíveis por 2 **e** por 3.
Pista: `n % 2 = 0` quer dizer "n é divisível por 2".
Teste: 6, 9, 12 e 10 → `6 12`

## Repetição

**5. Tabuada (ficha 30)**
Ler um número e mostrar a sua tabuada, de 1 a 10, neste formato:
```
2 x 1 = 2
2 x 2 = 4
...
2 x 10 = 20
```

**6. Soma de 1 a 100 (ficha 31)**
Mostrar o total de 1 + 2 + 3 + … + 100.
Pista: precisam de duas variáveis, uma que conta (1, 2, 3…) e outra que vai acumulando a soma.
Resultado: `5050`

## Desafio

**7. Ímpares de 0 a 20 (ficha 33)**
Mostrar todos os números ímpares entre 0 e 20, usando um `se` dentro do `enquanto`.
Resultado: `1 3 5 7 9 11 13 15 17 19`

---
Entregas no Moodle: um `.alg` por exercício.