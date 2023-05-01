Algoritmo IntentoDeBatallaNaval
	Definir v, contra, vacio, letra, opcint Como Caracter
	definir i,j,ganados,perdidos,resultado,opc Como Entero
	ganados=0
	perdidos=0
	resultado=0
	Dimension v[11,11]
	Dimension contra[11,11]
	Dimension vacio[11,11]
	menu()
	Leer opc
	Esperar 1 Segundos
	Hacer
	Segun opc
		1:
			BlanquearTablero(v)
			BlanquearTablero(contra)
			BlanquearTablero(vacio)
			TableroVacio(vacio)
			IniciarJuego(v)
			Bot(contra)
			Esperar 2 Segundos
			Escribir "Juego de prueba? S/N"
			Leer opcint
			opcint=Mayusculas(opcint)
			Si opcint="S" Entonces
				Jugando(contra,v,resultado)
			FinSi
			Si opcint="N" Entonces
				JugandoSilencioso(contra,vacio,v,resultado)
				Estadisticas(ganados,perdidos,resultado)
			FinSi
			Esperar 2 Segundos
			menu()
			leer opc
		2:
			Escribir "Estadisticas: " ganados " ganados. " perdidos " perdidos."
			Esperar 2 Segundos
			menu()
			leer opc
		3:
			Escribir "Saliendo"
	FinSegun
	Mientras Que opc<>3
FinAlgoritmo

SubProceso menu()
	Limpiar Pantalla
	Escribir "Bienvenido a batalla naval"
	Escribir "=========================="
	Escribir ""
	Escribir "1.- Jugar"
	Escribir "2.- Estadisticas"
	Escribir "3.- Salir"
FinSubProceso

SubProceso Estadisticas(g Por Referencia,p por referencia,resultado Por Valor)
	Si resultado=1 Entonces
		g=g+1
	FinSi
	Si resultado=2 Entonces
		p=p+1
	FinSi
FinSubProceso

SubProceso JugandoSilencioso(matriz Por Referencia,vacio Por Referencia,vac Por Referencia, resultado Por Referencia)
	Definir coord, coordletra, coordnum Como Caracter
	Definir i, j, coordL, coordN, coordBotI, coordBotJ, acump, acumG Como Entero
	Definir juega Como Caracter	
	definir valida Como Logico
	Hacer
		acump=0
		acumG=0
		Limpiar Pantalla
		Escribir ""
		Esperar 1 Segundos
		Hacer
			valida=Verdadero			
			Escribir "Establezca una coordenada para disparar por ejemplo: A01"
			Leer coord
			coordletra=Concatenar("| ",Concatenar(Mayusculas(Subcadena(coord,0,0))," "))
			coordnum=Subcadena(coord,1,2)
			Si coordnum<"11" y coordnum>"00" entonces
				Para i<-1 Hasta 10 Hacer
					si matriz[i,0]=coordnum Entonces
						coordN=i
					FinSi
				FinPara
				Para j<-1 Hasta 10 Hacer
					si matriz[0,j]=coordletra Entonces
						coordL=j
						valida=Falso
					FinSi
				FinPara
			FinSi
			Si valida Entonces
				Escribir "Fuera de rango, reintente"
			FinSi
		Mientras que valida
		Si matriz[coordN,coordL] <> "|   " Entonces
			Escribir "Le diste"
			vacio[coordN,coordL] = "|-X-"
			matriz[coordN,coordL] = "|-X-"
		SiNo
			Escribir "Agua"
			vacio[coordN,coordL] = "|-O-"
			matriz[coordN,coordL] = "|-O-"
		FinSi
		Escribir ""
		Escribir "BOT"
		dibujartablero(vacio)
		Escribir ""
		coordBotI=Aleatorio(1,10)
		coordBotJ=Aleatorio(1,10)
		Si	vac[coordBotI,coordBotJ] <> "|   " Entonces
			Escribir "Le dieron a un barco tuyo"
			vac[coordBotI,coordBotJ] = "|-X-"
		SiNo
			Escribir "No le dieron a tus barcos"
			vac[coordBotI,coordBotJ] = "|-O-"
		FinSi
		Escribir "Jugador"
		dibujartablero(vac)
		Escribir ""
		Escribir "Desea seguir? S/N"
		Leer juega
		juega=Mayusculas(juega)
		para i<-1 Hasta 10 Hacer
			para j<-1 Hasta 10 Hacer
				si matriz[i,j]="| 2 " o matriz[i,j]="| 3 " o matriz[i,j]="| 4 " o acumG>0 Entonces
					acumG=acumG+1
					resultado=0
				FinSi
				si vac[i,j]="| 2 " o vac[i,j]="| 3 " o vac[i,j]="| 4 " o acump>0 Entonces
					resultado=0
					acump=acump+1					
				FinSi
			FinPara
		FinPara
		si acumG=0 Entonces
			resultado=1
			Escribir "Felicidades, ha ganado"
			Esperar 2 Segundos
		FinSi
		si acump=0 Entonces
			resultado=2
			Escribir "Que lástima, perdiste"
			Esperar 2 Segundos
			Limpiar Pantalla
			Escribir "Asi quedó el tablero contrario:"
			dibujartablero(matriz)
			Esperar 4 Segundos
		FinSi
	Mientras Que juega<>"N" y resultado=0
	Si juega="N" y resultado=0 Entonces
		resultado=2
		Escribir "Tu renuncia nunca será perdonada por tus marines"
		Esperar 2 Segundos
		Limpiar Pantalla
		Escribir "Asi quedó el tablero contrario:"
		dibujartablero(matriz)
		Esperar 4 Segundos
	FinSi
FinSubProceso

SubProceso Jugando(matriz Por Referencia,vac Por Referencia,resultado Por Referencia)
	Definir coord, coordletra, coordnum Como Caracter
	Definir i, j, coordL, coordN, coordBotI, coordBotJ, acump, acumG Como Entero
	Definir juega Como Caracter
	definir valida Como Logico
	Hacer
		acump=0
		acumG=0
		Limpiar Pantalla
		Escribir ""
		Esperar 1 Segundos
		Hacer
			valida=Verdadero			
			Escribir "Establezca una coordenada para disparar por ejemplo: A01"
			Leer coord
			coordletra=Concatenar("| ",Concatenar(Mayusculas(Subcadena(coord,0,0))," "))
			coordnum=Subcadena(coord,1,2)
			Si coordnum<"11" y coordnum>"00" entonces
				Para i<-1 Hasta 10 Hacer
				si matriz[i,0]=coordnum Entonces
					coordN=i
				FinSi
			FinPara
			Para j<-1 Hasta 10 Hacer
				si matriz[0,j]=coordletra Entonces
					coordL=j
					valida=Falso
				FinSi
				FinPara
			FinSi
			Si valida Entonces
				Escribir "Fuera de rango, reintente"
			FinSi
		Mientras que valida
		Si matriz[coordN,coordL] <> "|   " Entonces
			Escribir "Le diste"
			matriz[coordN,coordL] = "|-X-"
		SiNo
			Escribir "Agua"
			matriz[coordN,coordL] = "|-O-"
		FinSi
		Escribir ""
		Escribir "BOT"
		dibujartablero(matriz)
		Escribir ""
		coordBotI=Aleatorio(1,10)
		coordBotJ=Aleatorio(1,10)
		Si	vac[coordBotI,coordBotJ] <> "|   " Entonces
			Escribir "Le dieron a un barco tuyo"
			vac[coordBotI,coordBotJ] = "|-X-"
		SiNo
			Escribir "No le dieron a tus barcos"
			vac[coordBotI,coordBotJ] = "|-O-"
		FinSi
		Escribir "Jugador"
		dibujartablero(vac)
		Escribir ""
		Escribir "Desea seguir? S/N"
		Leer juega
		juega=Mayusculas(juega)
		para i<-1 Hasta 10 Hacer
			para j<-1 Hasta 10 Hacer
				si matriz[i,j]="| 2 " o matriz[i,j]="| 3 " o matriz[i,j]="| 4 " o acumG>0 Entonces
					acumG=acumG+1
					resultado=0
				FinSi
				si vac[i,j]="| 2 " o vac[i,j]="| 3 " o vac[i,j]="| 4 " o acump>0 Entonces
					resultado=0
					acump=acump+1					
				FinSi
			FinPara
		FinPara
		si acumG=0 Entonces
			resultado=1
			Escribir "Felicidades, ha ganado"
			Esperar 1 Segundos
		FinSi
		si acump=0 Entonces
			resultado=2
			Escribir "Que lastima, perdiste"
			Esperar 1 Segundos
		FinSi
	Mientras Que juega<>"N" y resultado=0
	Si juega="N" y resultado=0 Entonces
		resultado=2
	FinSi
FinSubProceso

SubProceso tablerovacio (matriz Por Referencia)
	Definir i,j Como Entero
	matriz[0,0]="##"
	para i<-1 Hasta 9 Hacer
		matriz[i,0]=Concatenar("0",ConvertirATexto(i))
	FinPara
	matriz[10,0]="10"
	matriz[0,1]="| A "
	matriz[0,2]="| B "
	matriz[0,3]="| C "
	matriz[0,4]="| D "
	matriz[0,5]="| E "
	matriz[0,6]="| F "
	matriz[0,7]="| G "
	matriz[0,8]="| H "
	matriz[0,9]="| I "
	matriz[0,10]="| J "
FinSubProceso

SubProceso Bot (matriz Por Referencia)
	Definir i,j Como Entero
	matriz[0,0]="##"
	para i<-1 Hasta 9 Hacer
		matriz[i,0]=Concatenar("0",ConvertirATexto(i))
	FinPara
	matriz[10,0]="10"
	matriz[0,1]="| A "
	matriz[0,2]="| B "
	matriz[0,3]="| C "
	matriz[0,4]="| D "
	matriz[0,5]="| E "
	matriz[0,6]="| F "
	matriz[0,7]="| G "
	matriz[0,8]="| H "
	matriz[0,9]="| I "
	matriz[0,10]="| J "
	barcode4(matriz)
	barcode3(matriz)
	barcode3(matriz)
	barcode3(matriz)
	barcode2(matriz)
	barcode2(matriz)
	barcode2(matriz)
	barcode2(matriz)
FinSubProceso

SubProceso dibujartablero (matriz Por Referencia)
	Definir i,j Como Entero
	Escribir "Tablero"
	matriz[0,0]="##"
	para i<-1 Hasta 9 Hacer
		matriz[i,0]=Concatenar("0",ConvertirATexto(i))
	FinPara
	matriz[10,0]="10"
	matriz[0,1]="| A "
	matriz[0,2]="| B "
	matriz[0,3]="| C "
	matriz[0,4]="| D "
	matriz[0,5]="| E "
	matriz[0,6]="| F "
	matriz[0,7]="| G "
	matriz[0,8]="| H "
	matriz[0,9]="| I "
	matriz[0,10]="| J "
	para i<-0 Hasta 10 Hacer
		para j<-0 Hasta 10 Hacer
			Escribir sin saltar matriz[i,j]
		FinPara
		Escribir sin saltar "|"
		Escribir ""
	FinPara
FinSubProceso

SubProceso BlanquearTablero(v Por Referencia)
	Definir i, j Como Entero
	para i<-0 Hasta 10 Hacer
		para j<-0 Hasta 10 Hacer
			v[i,j]="|   "
		FinPara
	FinPara
FinSubProceso

SubProceso IniciarJuego(v Por Referencia)
	Limpiar Pantalla
	dibujartablero(v)
	Escribir "Este es su tablero, será llenado con barcos al azar..."
	Esperar 1 Segundos
	Limpiar Pantalla
	barcode4(v)
	barcode3(v)
	barcode3(v)
	barcode3(v)
	barcode2(v)
	barcode2(v)
	barcode2(v)
	barcode2(v)
	dibujartablero(v)
	Escribir "Por favor, leer bien"
	Esperar 1 Segundos
FinSubProceso

SubProceso barcode4 (matriz Por Referencia)
	Definir i,j,randomi, randomj,verthor Como Entero
	Definir salida Como Logico
	salida=Verdadero
	Hacer
	randomi=Aleatorio(1,10)
	randomj=Aleatorio(1,10)
	verthor=Aleatorio(0,1) 				//verthor = 0 Horizontal; verthor = 1 Vertical
	Si matriz(randomi,randomj)="|   "
		Si verthor=0 Entonces
			Si randomi+3 <11
				
				Si matriz(randomi,randomj)="|   " y matriz(randomi+1,randomj)="|   " y matriz(randomi+2,randomj)="|   " y matriz(randomi+3,randomj)="|   " Entonces
			para i<-randomi Hasta randomi+3 Hacer
				si matriz(i,randomj)="|   " Entonces
					matriz(i,randomj)="| 4 "
					salida=Falso
				FinSi
			FinPara
			FinSi
		FinSi
		SiNo
			Si randomj+3<11
				Si matriz(randomi,randomj)="|   " y matriz(randomi,randomj+1)="|   " y matriz(randomi,randomj+2)="|   " y matriz(randomi,randomj+3)="|   " Entonces
				Para j<-randomj Hasta randomj+3 Hacer
					si matriz(randomi,j)="|   " Entonces
						matriz(randomi,j)="| 4 "
						salida=Falso
					FinSi
				FinPara
				FinSi
			FinSi
		FinSi
	FinSi
	Mientras Que salida
FinSubProceso

SubProceso barcode3 (matriz Por Referencia)
	Definir i,j,randomi, randomj,verthor Como Entero
	Definir salida Como Logico
	salida=Verdadero
	Hacer
		randomi=Aleatorio(1,10)
		randomj=Aleatorio(1,10)
		verthor=Aleatorio(0,1) 				//verthor = 0 Horizontal; verthor = 1 Vertical
		Si matriz(randomi,randomj)="|   "
			Si verthor=0 Entonces
				Si randomi+2 <11
					Si matriz(randomi,randomj)="|   " y matriz(randomi+1,randomj)="|   " y matriz(randomi+2,randomj)="|   " Entonces
					para i<-randomi Hasta randomi+2 Hacer
						si matriz(i,randomj)="|   " Entonces
							matriz(i,randomj)="| 3 "
							salida=Falso
						FinSi
					FinPara
					FinSi
				FinSi
			SiNo
				Si randomj+2<11
					Si matriz(randomi,randomj)="|   " y matriz(randomi,randomj+1)="|   " y matriz(randomi,randomj+2)="|   " Entonces
					Para j<-randomj Hasta randomj+2 Hacer
						si matriz(randomi,j)="|   " Entonces
							matriz(randomi,j)="| 3 "
							salida=Falso
						FinSi
					FinPara
					FinSi
				FinSi
			FinSi
		FinSi
	Mientras Que salida
FinSubProceso

SubProceso barcode2 (matriz Por Referencia)
	Definir i,j,randomi, randomj,verthor Como Entero
	Definir salida Como Logico
	salida=Verdadero
	Hacer
		randomi=Aleatorio(1,10)
		randomj=Aleatorio(1,10)
		verthor=Aleatorio(0,1) 				//verthor = 0 Horizontal; verthor = 1 Vertical
		Si matriz(randomi,randomj)="|   "
			Si verthor=0 Entonces
				Si randomi+1 <11
					Si matriz(randomi,randomj)="|   " y matriz(randomi+1,randomj)="|   " Entonces
					para i<-randomi Hasta randomi+1 Hacer
						si matriz(i,randomj)="|   " Entonces
							matriz(i,randomj)="| 2 "
							salida=Falso
						FinSi
					FinPara
					FinSi
				FinSi
			SiNo
				Si randomj+1<11
					Si matriz(randomi,randomj)="|   " y matriz(randomi,randomj+1)="|   " Entonces
					Para j<-randomj Hasta randomj+1 Hacer
						si matriz(randomi,j)="|   " Entonces
							matriz(randomi,j)="| 2 "
							salida=Falso
						FinSi
					FinPara
					FinSi
				FinSi
			FinSi
		FinSi
	Mientras Que salida
FinSubProceso
