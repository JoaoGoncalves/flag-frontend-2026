// S3 · snippet 13 · o mesmo algoritmo na consola do browser
// Abrir a consola: Chrome/Edge F12 (Mac: Cmd + Option + J) → separador Console
// Colar um bloco de cada vez e carregar Enter. Para várias linhas: Shift + Enter.

// ── 1 · variáveis e tipos ─────────────────────────────
let idade = 34;             // inteiro → number
let preco = 14.5;           // real    → number
let nome = "Ana";           // texto   → string
let aprovado = true;        // logico  → boolean
const IVA = 0.23;           // constante
typeof idade;               // "number"
typeof nome;                // "string"

// ── 2 · operadores (comparem com o Portugol) ──────────
7 / 2;                      // 3.5  (em JS não há divisão inteira)
Math.trunc(7 / 2);          // 3    (o que o Portugol faz com inteiros)
7 % 2;                      // 1
2 ** 3;                     // 8    (no Portugol: 2 ^ 3)
2 + 3 * 4;                  // 14
(12 + 14 + 16) / 3;         // 14

// ── 3 · a armadilha do texto ──────────────────────────
"2" + "2";                  // "22"  → junta textos!
Number("2") + Number("2");  // 4

// ── 4 · par ou ímpar ──────────────────────────────────
let num = Number(prompt("Um número inteiro:"));
if (num % 2 === 0) {
  console.log(num + " é par");
} else {
  console.log(num + " é ímpar");
}

// ── 5 · faixa de 1 a 9 (e → &&) ───────────────────────
let valor = Number(prompt("Um valor de 1 a 9:"));
if (valor >= 1 && valor <= 9) {
  console.log("O valor está na faixa permitida");
} else {
  console.log("O valor está fora da faixa permitida");
}

// ── 6 · escolhe → switch ──────────────────────────────
let dia = Number(prompt("Dia da semana (1 = segunda … 7 = domingo):"));
switch (dia) {
  case 1: case 3: case 5:
    console.log("Dia de formação na FLAG");
    break;
  case 2: case 4:
    console.log("Dia de treinar em casa");
    break;
  case 6: case 7:
    console.log("Fim de semana");
    break;
  default:
    console.log("Esse dia não existe");
}
