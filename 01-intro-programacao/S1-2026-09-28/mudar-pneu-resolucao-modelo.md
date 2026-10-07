# Mudar um pneu · resolução-modelo

FLAG · Especializado Front-End Web Development · Módulo 1 · Sessão 1 (discutida na Sessão 2)

Uma resolução possível, organizada em 5 fases. **[SE]** marca uma decisão e **[REPETE]** uma repetição.

**Entradas**
- Carro com um pneu furado, parado em segurança
- Roda suplente (ou kit anti-furo)
- Macaco e chave de rodas
- Colete refletor e triângulo de pré-sinalização
- (opcional) luvas, manual do carro com os pontos de apoio do macaco

**Saídas**
- Roda furada substituída pela suplente, com os parafusos apertados
- Roda furada, macaco, chave, triângulo e colete arrumados
- Condutor no carro, pronto a retomar a marcha

**Sequência**
```
── Fase 1 · Segurança ──
1.  Sinalizar e parar o carro num local seguro, plano e firme, fora da
    faixa de rodagem sempre que possível.
2.  Ligar os quatro piscas.
3.  Puxar o travão de mão e engatar a 1.ª (ou P, se for automático).
4.  Desligar o motor.
5.  Vestir o colete refletor, ainda dentro do carro.
6.  [SE] houver passageiros: pedir que saiam pelo lado oposto ao trânsito
    e aguardem fora da estrada.
7.  Sair do carro pelo lado mais afastado do trânsito.
8.  Tirar o triângulo da mala e colocá-lo atrás do carro, a pelo menos
    30 m e visível a 100 m.

── Fase 2 · Preparar ──
9.  Tirar da mala a roda suplente, o macaco e a chave de rodas.
10. [SE] não houver roda suplente (só kit anti-furo):
        seguir as instruções do kit ou chamar a assistência em viagem → FIM.
11. [SE] a jante tiver tampão: retirá-lo.
12. [REPETE] Para cada parafuso da roda furada:
        desapertar ¼ a ½ volta com a chave, sem o retirar.
        (a roda ainda está no chão, por isso não gira)

── Fase 3 · Levantar e retirar ──
13. Colocar o macaco no ponto de apoio mais próximo da roda furada.
14. [REPETE] Enquanto a roda não estiver levantada do chão (≈ 3 cm):
        rodar a manivela do macaco.
15. [REPETE] Para cada parafuso: retirá-lo e guardá-lo onde não role.
16. Retirar a roda furada e deitá-la debaixo do carro, junto ao macaco.

── Fase 4 · Montar ──
17. Encaixar a roda suplente, alinhando os furos com os pernos.
18. [REPETE] Para cada parafuso: colocá-lo e apertá-lo à mão.
19. Tirar a roda furada de debaixo do carro.
20. [REPETE] Enquanto a roda não estiver totalmente apoiada no chão:
        baixar o macaco.
21. Retirar o macaco.
22. [REPETE] Para cada parafuso, pela ordem em cruz:
        dar o aperto final com a chave.
23. [SE] tinha tampão e a jante suplente o aceita: voltar a colocá-lo.

── Fase 5 · Arrumar e seguir ──
24. Guardar na mala a roda furada, o macaco e a chave.
25. Recolher o triângulo e guardá-lo.
26. Fechar a mala.
27. Entrar no carro, tirar e guardar o colete, colocar o cinto.
28. Ligar o motor, desligar os quatro piscas, sinalizar e retomar a marcha.
29. [SE] a suplente for de uso temporário (roda "galette"):
        não exceder a velocidade indicada nela (normalmente 80 km/h) e
        seguir para uma oficina.
```

## O que esta resolução mostra

- **Sequência:** o 12 tem de vir antes do 13. Com a roda no ar, ao desapertar, a roda gira e o parafuso não sai.
- **Decisão:** passos 6, 10, 11, 23 e 29. O passo 10 termina o algoritmo mais cedo.
- **Repetição:** passos 12, 14, 15, 18, 20 e 22. Umas são "para cada" (sabemos quantos parafusos há), outras "enquanto" (não sabemos quantas voltas são precisas). É a diferença entre `para` e `enquanto`.
- **Abstração:** "encaixar a roda" e "dar o aperto final" escondem detalhe, e isso está certo desde que o executor saiba fazer.
- **Decomposição:** as 5 fases partem um problema grande em problemas pequenos.
