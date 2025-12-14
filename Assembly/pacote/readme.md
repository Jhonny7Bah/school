Este projeto demonstra a tradução de um código Python para C, mantendo a mesma lógica, comentários e estrutura. O objetivo é mostrar como estruturas básicas de programação se comportam nas duas linguagens, além de contextualizar como o código Python é executado pelo CPython por meio de bytecode.

## Conteúdo do código

O programa trabalha com:

### Estruturas de repetição

* `for` crescente
* `for` decrescente
* `while` crescente
* `while` decrescente

### Manipulação de listas

* Inserção ao final (`append`)
* Remoção do último elemento (`pop`)
* Inserção no primeiro índice
* Remoção do primeiro índice
* Troca de valores entre posições

### Variáveis

* Endereçamento direto
* Endereçamento indireto (atribuição entre variáveis)

## Arquivos do projeto

* `main.py` — código original em Python
* `main.c` — versão traduzida para C
* `main.s` — código assembly gerado pelo GCC

## Como compilar

```bash
gcc main.c -o programa
````

Executar:

```bash
./programa
```

Gerar o assembly:

```bash
gcc -S main.c
```

## Objetivo

Servir como material de estudo para comparação entre:

* Python (alto nível)
* C (médio nível)
* Assembly (baixo nível)

## Fluxo de execução — Python (CPython)

```
Código-fonte é escrito
        │
        ▼
O CPython gera uma AST (árvore de sintaxe abstrata)
        │
        ▼
A AST é compilada em bytecode
        │
        ▼
O bytecode entra na VM do Python
        │
        ▼
Durante a execução de cada instrução:
    - Se a instrução acessa uma variável ou função (ex: LOAD_NAME print)
        → O interpretador busca o nome nos dicionários de escopo (locals / globals / builtins)
        → Recupera o objeto Python correspondente
        → Continua a execução da instrução
        │
        ▼
O CPython (escrito em C) executa cada instrução da VM
        │
        ▼
A CPU executa o código C do interpretador
```

## Fluxo de execução — Python compilado com Cython

```
Código-fonte Python (+ tipagem opcional)
        │
        ▼
Cython compila → Código C
        │
        ▼
Compilador C (GCC / Clang / MSVC)
        │
        ▼
Geração de binário nativo (.so / .pyd)
        │
        ▼
Execução direta na CPU
```
