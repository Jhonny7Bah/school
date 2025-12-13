# Classificação de Triângulos em Assembly

## Descrição

Programa em assembly para uma máquina didática que classifica um triângulo a partir dos seus três lados, utilizando comparações por subtração e contagem de igualdades entre os lados.

---

## Mapeamento de Memória

| Endereço | Descrição |
|--------|-----------|
| 128 | Lado A |
| 129 | Lado B |
| 130 | Lado C |
| 131 | Constante 1 |
| 132 | Resultado (r) |
| 250 | Cache temporário de A |

---

## Fórmula Utilizada

As comparações são feitas por diferença:

- A − B = temp  
- A − C = temp  
- B − C = temp  

Se `temp = 0`, os lados comparados são iguais e:

r = r + 1


O valor `r` representa o número de pares de lados iguais.

---

## Fluxo do Algoritmo

1. Inicializa `r = 0`
2. Armazena `-A` em cache para facilitar as subtrações
3. Executa as comparações:
   - A − B
   - A − C
   - B − C
4. A cada resultado zero, um bloco de código é reexecutado para incrementar `r`
5. O programa encerra após todas as comparações

Os saltos condicionais funcionam como reentradas no código, caracterizando recursão sem uso de stack.

---

## Interpretação do Resultado

| r | Tipo de Triângulo |
|---|------------------|
| 0 | Escaleno |
| 1 | Isósceles |
| 3 | Equilátero |

---

## Observações

- Não há verificação da desigualdade triangular
- O foco é a lógica de comparação e o uso de recursão em baixo nível
