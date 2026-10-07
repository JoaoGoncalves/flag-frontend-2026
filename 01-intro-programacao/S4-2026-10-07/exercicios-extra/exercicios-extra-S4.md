# Sessão 4 · Exercícios extra: ciclos e vetores

Para os mais expeditos (e para casa, opcional). Da ficha `ficha-exercicios-algoritmos.pdf`. Resolvam no Portugol, um ficheiro `.alg` por exercício, e testem com os valores indicados.
Usem o que já vimos: variáveis, operadores, `se … senao`, os ciclos (`enquanto`, `faz … enquanto`, `repete … ate`, `para`) e vetores.

Dica: para testar vetores depressa, usem `constante inteiro TAM <- 3` e `inteiro a[TAM]`. Quando funcionar, mudam só o `TAM`.

## Ciclos

**1. Fibonacci (ficha 36)**
Mostrar os 15 primeiros termos da série de Fibonacci: 1, 1, 2, 3, 5, 8, … Cada termo é a soma dos dois anteriores.
Teste: `1 1 2 3 5 8 13 21 34 55 89 144 233 377 610`
Pista: atenção, `proximo` é palavra reservada do Portugol (usem `seguinte`).

## Vetores

**2. Tabuada num vetor (ficha 49)**
Pedir um número, guardar a sua tabuada (× 1 a × 10) num vetor de 10 elementos e, no fim, mostrar o vetor.
Teste: 7 → `7 x 1 = 7` … `7 x 10 = 70`

**3. Ímpares × 2 (ficha 52)**
Ler 12 inteiros para um vetor A. Construir um vetor B: os elementos ímpares de A são multiplicados por 2; os pares ficam iguais. Mostrar B.
Pista: o diferente no Portugol é `=/=`.
Teste: 1, 2, 3, … 12 → `2 2 6 4 10 6 14 8 18 10 22 12`

**4. Desafio · ordenar (ficha 58)**
Ler os 12 elementos de um vetor A e pô-los por ordem decrescente, trocando posições. Mostrar A ordenado.
Pista: comparem cada elemento com o vizinho e troquem-nos se estiverem fora de ordem (a troca dos copos da sessão 3). Repitam até não haver trocas. Precisam de um ciclo dentro de outro.
Teste: 5, 12, 3, 8, 1, 9, 7, 2, 11, 4, 10, 6 → `12 11 10 9 8 7 6 5 4 3 2 1`

---
Entregas no Moodle: um `.alg` por exercício.
