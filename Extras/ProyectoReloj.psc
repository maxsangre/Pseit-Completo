Algoritmo ProyectoReloj
	Definir i,j,seg,min,hors,dechors,unihors,decmin,unimin,dec,uni Como Entero
	Definir decenas,unidades,timer,timerseg,timerhoras,timermin,dechoras,unihoras,decminutos,uniminutos Como Caracter
	Definir validahora, validamin, a Como Logico
	dimension timer[5],timerhoras[5],timermin[5],timerseg[5]
	dimension decenas[5]
	dimension unidades[5]
	dimension dechoras[5],decminutos[5],unihoras[5],uniminutos[5]
	validahora=Verdadero
	validamin=Verdadero	
	a=Verdadero
	para j<-0 hasta 4
	timer[j]=""
	unidades[j]=""
	decenas[j]=""
	FinPara
	Limpiar Pantalla
	Hacer
	Para hors<-0 Hasta 23 Hacer
		Si validahora Entonces
			hors=22
			validahora=Falso
		FinSi
		dechors=trunc(hors/10)
		unihors=hors mod 10
		Numerador(dechoras,dechors)
		Numerador(unihoras,unihors)
		Para min<-0 Hasta 59 con paso 1 Hacer
			Si validamin Entonces
				min=44
				validamin=falso
			FinSi
			decmin=trunc(min/10)
			unimin=min mod 10
			Numerador(decminutos,decmin)
			Numerador(uniminutos,unimin)
	Para seg<-0 hasta 59 con paso 1 Hacer
		dec=trunc(seg/10)
		uni=seg mod 10
		Numerador(decenas,dec)
		Numerador(unidades,uni)
		para j<-0 hasta 4
			timerseg[j]=Concatenar(decenas[j],concatenar(" ",unidades[j]))
			timermin[j]=Concatenar(decminutos[j],concatenar(" ",uniminutos[j]))
			timerhoras[j]=Concatenar(dechoras[j],Concatenar(" ",unihoras[j]))
		FinPara
		para j<-0 Hasta 4
			Si j=1 o j=3 Entonces
				timer[j]=Concatenar(timerhoras[j],Concatenar(" · ",Concatenar(timermin[j],Concatenar(" · ",timerseg[j]))))
			SiNo
				timer[j]=Concatenar(timerhoras[j],Concatenar("   ",Concatenar(timermin[j],Concatenar("   ",timerseg[j]))))
			FinSi
		FinPara
		para j<-0 hasta 4
			Escribir timer[j]
		FinPara
		Esperar 1 Segundos
		Limpiar Pantalla
	FinPara
FinPara
FinPara
Mientras Que a
FinAlgoritmo

SubProceso Numerador(unidades Por Referencia,num por valor)
	Segun num Hacer
		0:
			unidades[0]=" ___ "
			unidades[1]="|   |"
			unidades[2]="|   |"
			unidades[3]="|   |"
			unidades[4]=" ___ "
		1:
			unidades[0]="     "
			unidades[1]="  /| "
			unidades[2]=" / | "
			unidades[3]="   | "
			unidades[4]="   | "
		2:
			unidades[0]=" ___ "
			unidades[1]="|   |"
			unidades[2]="   / "
			unidades[3]="  /  "
			unidades[4]="/____"
		3:
			unidades[0]=" ___ "
			unidades[1]="|   |"
			unidades[2]="   < "
			unidades[3]="|   |"
			unidades[4]=" --- "
		4:
			unidades[0]="     "
			unidades[1]="|   |"
			unidades[2]="|___|"
			unidades[3]="    |"
			unidades[4]="    |"
		5:
			unidades[0]=" ____"
			unidades[1]="|    "
			unidades[2]="|___ "
			unidades[3]="    |"
			unidades[4]="____|"
		6:
			unidades[0]=" ____"
			unidades[1]="|    "
			unidades[2]="|___ "
			unidades[3]="|   |"
			unidades[4]="|___|"
		7:
			unidades[0]="_____"
			unidades[1]="    |"
			unidades[2]="   / "
			unidades[3]="  /  "
			unidades[4]=" /   "
		8:
			unidades[0]=" ___ "
			unidades[1]="|   |"
			unidades[2]=" >-< "
			unidades[3]="|   |"
			unidades[4]=" --- "
		9:
			unidades[0]=" ___ "
			unidades[1]="|   |"
			unidades[2]=" \__|"
			unidades[3]="    |"
			unidades[4]=" --- "
	FinSegun
	
FinSubProceso
	