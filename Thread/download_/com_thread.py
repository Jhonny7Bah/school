from time import sleep, time
from random import randint
from threading import Thread

inicio = time()

# função download
def baixar_arquivo(nome:str, tempo: int) -> None:
    print('iniciando donwload do arquivo', nome)
    sleep(tempo)
    print(f'donwload do arquivo {nome} foi concluído!')

# gerando 5 arquivos de donwload
lista = tuple((f'arquivo{x}', randint(1,5)) for x in range(1,6))

# inicializando separadamente cada arquivo
t1 = Thread(target=baixar_arquivo, args=lista[0])
t2 = Thread(target=baixar_arquivo, args=lista[1])
t3 = Thread(target=baixar_arquivo, args=lista[2])
t4 = Thread(target=baixar_arquivo, args=lista[3])
t5 = Thread(target=baixar_arquivo, args=lista[4])

# inicializando sequencialmente as threads
t1.start(), t2.start(), t3.start(), t4.start(), t5.start()

# aguardando sequenciamente a finalização das threads
t1.join(), t2.join(), t3.join(), t4.join(), t5.join()

fim = time()

diferenca = fim - inicio

print(f"Tempo total: {diferenca:.2f} segundos")


