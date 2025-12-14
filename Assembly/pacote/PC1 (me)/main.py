# for incremento
for n_pos in range(0, 11):
    print(n_pos)

# for decremento
for n_neg in range(10, 0, -1):
    print(n_neg)

# while incremento
i_pos = 0
while i_pos <= 10:
    print('oii Aprígio!!')
    i_pos = i_pos + 1

# while decremento
i_neg = 10
while i_neg >= 0:
    print('Aprígio na área!')
    i_neg = i_neg - 1

# push
lista1 = [1,2,3,4,5,6,7,8,9]
print(lista1)
lista1.append(10) # adicionando 10 ao final da lista

# pop
lista2 = [1,2,3,4,5,6,7,8,9]
print(lista2)
lista2.pop() # removendo o ultimo item da fila
print(lista2)

# adicionando um valor no primeiro indice
lista3 = [1,2,3,4,5,6,7,8,9]
lista3.insert(0, 50)
print(lista3)

# removendo valor do primeiro indice
lista4 = [1,2,3,4,5,6,7,8,9]
lista4.pop(0)
print(lista4)

# enderecamento direto
idade = 14
print(idade)

# enderecamento indireto
a = 10
b = 20
c = a
print(c)

# trocar indices de uma lista
lista5 = [1,2,3,4,5,6,7,8,9]
lista5 = [50, 40, 30, 20, 10]
print(lista5)
lista5[3], lista5[4] = lista5[4], lista5[3] #trocando indice 3 e 4
print(lista5) 
