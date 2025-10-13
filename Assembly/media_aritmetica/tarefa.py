n1 = int(input('informe sua primeira nota: '))
n2 = int(input('informe sua segunda nota: '))
n3 = int(input('informe sua terciera nota: '))
n4 = int(input('informe sua quarta nota: '))

media = sum((n1, n2, n3, n4)) / 4

if media >= 6:
    print(f'Situação: APROVADO\nMedia: {media:.2f}')
elif media >= 4 and media < 6:
    print(f'Situação: RECUPERAÇÃO\nMedia: {media:.2f}')
else:
    print(f'Situação: REPROVADO\nMedia: {media:.2f}')

