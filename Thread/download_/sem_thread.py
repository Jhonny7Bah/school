from time import sleep, time
from random import randint

inicio = time()

# função download
def baixar_arquivo(nome:str, tempo: int) -> None:
    print('iniciando donwload do arquivo', nome)
    sleep(tempo)
    print(f'donwload do arquivo {nome} foi concluído!')

for __ in range(5):
    valor_aleatorio = randint(1,5)
    nome_do_arquivo = f'arquivo {__}'

    baixar_arquivo(nome_do_arquivo, valor_aleatorio)

fim = time()

diferenca = fim - inicio 
print(f"Tempo total: {diferenca:.2f} segundos")