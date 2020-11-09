import os
import PyPDF2
from colorama import Fore, Back, Style #colorines
import magic


def metadatos():
    for dirpath, dirnames, files in os.walk("meta"): # Para el directorio, nombre y archivos en la carpeta meta
        for name in files: # Recorremos los ficheros
            ext = name.lower().rsplit('.', 1)[-1]
            if ext in ['pdf']:
                 print("\033[1;10;36m" "Metadata for file:" + Fore.MAGENTA, dirpath+os.path.sep+name)
                 pdf = PyPDF2.PdfFileReader(dirpath+os.path.sep+name, 'rb') #abrimos fichero
                 información = pdf.getDocumentInfo() #Cogemos la información
                 number_of_pages = pdf.getNumPages()
                 filesize = os.path.getsize(dirpath+os.path.sep+name) #sacamos tamaño del archivo
                 with open(dirpath+os.path.sep+name, 'rb') as f:
                     first_four = f.read(4).hex() #Buscamos el magic number(Identificador) primeros bytes
                 print("\033[91m[+]\033[00m" "\033[91m Author:\033[00m", información.author)
                 print("\033[91m[+]\033[00m" "\033[91m Creator:\033[00m", información.creator)
                 print("\033[91m[+]\033[00m" "\033[91m Producer:\033[00m", información.producer)
                 print("\033[91m[+]\033[00m" "\033[91m Subject:\033[00m", información.subject)
                 print("\033[91m[+]\033[00m" "\033[91m Title:\033[00m", información.title)
                 print("\033[91m[+]\033[00m" "\033[91m Pages:\033[00m", number_of_pages)
                 print("\033[91m[+]\033[00m" "\033[91m Size:\033[00m", filesize, "Bytes")
                 print("\033[91m[+]\033[00m" "\033[91m Raw_Data:\033[00m", información)
                 print("\033[91m[+]\033[00m" "\033[91m Magic Number:\033[00m", first_four)

metadatos()
