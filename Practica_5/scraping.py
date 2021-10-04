from bs4 import BeautifulSoup
import requests
import pandas as pd


url = "https://tukichallenge.lol/summoners"
page= requests.get(url)
soup=BeautifulSoup(page.content , "html.parser")

#Streamers
#Nombres
jg=soup.find_all("span" ,class_="mr-3")
streamers=list()
count=0
for i in jg:
    if count < 45:
        streamers.append(i.text)
    else:
        break
    count += 1
#Canal de stream
cn=soup.find_all("div" ,class_="h-full w-full flex flex-col items-center justify-end")
canales=list()
count=0
for i in cn:
    if count < 45:
        canales.append(i.text)
    else:
        break
    count += 1
#Partida
pt=soup.find_all("div" ,class_="flex flex-col justify-end items-center h-full w-full")
partida=list()
count=0
for i in pt:
    if count < 45:
        partida.append(i.text)
    else:
        break
    count += 1
#Cuenta
ct=soup.find_all("div",class_= "w-4/6 text-left")
cuenta=list()
count=0
for i in ct:
    if count <45:
        cuenta.append(i.text)
    else:
        break
    count += 1
#Elo
elo=soup.find_all("div" ,class_="flex items-center justify-center")
division=list()
count=0
for i in elo:
    if count < 45:
        division.append(i.text)
    else:
        break
    count += 1
#jugadas
jd=soup.find_all("span",class_= "text-green-600 text-center")
jugadas=list()
count=0
for i in jd:
    if count < 45:
        jugadas.append(i.text)
    else:
        break
    count += 1
#VICTORIAS
vt=soup.find_all("span" ,class_="text-green-500 text-center")
victorias=list()
count=0
for i in vt:
    if count < 45:
        victorias.append(i.text)
    else:
        break
    count += 1
#DERROTAS
dt=soup.find_all("span",class_= "text-red-500 text-center")
derrotas=list()
count=0
for i in dt:
    if count < 45:
        derrotas.append(i.text)
    else:
        break
    count += 1




df=pd.DataFrame({"Equipos": streamers,"Canales":canales,"Partidas": partida,"Cuentas": cuenta,"Juegos":jugadas,"Elo":division,"Victorias":victorias,"Derrotas":derrotas}, index=list(range(1,46)))
df.to_csv("Clasificacion.txt")
