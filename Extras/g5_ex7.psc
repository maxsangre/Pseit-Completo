Algoritmo g5_ex7
	Definir matriz,mayor Como Entero
	Dimension matriz[7,6], mayor[5]
	llenarMatriz(matriz, mayor)
	totalSemana(matriz)
	mostrarMatriz(matriz)
	informeD(matriz,mayor)
FinAlgoritmo

SubProceso llenarMatriz (matriz Por Referencia, mayor Por Referencia)
	Definir i,j Como Entero
	inicializarMatriz(matriz)
	Para i=0 Hasta 4 Hacer
		mayor[i] = 0
	FinPara
	Para i=0 Hasta 4 Hacer
		Para j=0 Hasta 4 Hacer
			Escribir "Ingrese total de ventas del Producto " i+1 " el dia " Sin Saltar
			Segun j Hacer
				0:
					Escribir "Lunes"
				1:
					Escribir "Martes"
				2:
					Escribir "Miercoles"
				3:
					Escribir "Jueves"
				4:
					Escribir "Viernes"
			FinSegun
			Leer matriz[i,j]
			//Producto mas vendido
			Si matriz[i,j] > mayor[j] Entonces
				mayor[j] = matriz[i,j]
				matriz[6,j] = i+1
			FinSi
			//Total producto
			matriz[i,5] = matriz[i,5] + matriz[i,j]
		FinPara
	FinPara
FinSubProceso

SubProceso totalSemana(matriz Por Referencia)
	Definir i,j Como Entero
	Para j=0 Hasta 4 Hacer
		Para i=0 Hasta 4 Hacer
			matriz[5,j] = matriz[5,j] + matriz[i,j]
		FinPara
	FinPara
FinSubProceso

SubProceso informeD(matriz Por Referencia, mayor Por Referencia)
	Definir i,j Como Entero
	Escribir ""
	Escribir "Informe D"
	Para i=0 Hasta 4 Hacer
		Segun i Hacer
			0:
				Escribir "Producto mas vendido Dia Lunes: Producto " matriz[6,i] " por un total de " mayor[i]
			1:
				Escribir "Producto mas vendido Dia Martes: Producto " matriz[6,i] " por un total de " mayor[i]
			2:
				Escribir "Producto mas vendido Dia Miercoles: Producto " matriz[6,i] " por un total de " mayor[i]
			3:
				Escribir "Producto mas vendido Dia Jueves: Producto " matriz[6,i] " por un total de " mayor[i]
			4:
				Escribir "Producto mas vendido Dia Viernes: Producto " matriz[6,i] " por un total de " mayor[i]
				
		FinSegun
	FinPara
FinSubProceso

SubProceso mostrarMatriz(matriz Por Referencia)
	Definir i,j Como Entero
	Escribir ""
	Escribir "           LUNES MARTES MIERCOLES JUEVES VIERNES TOTAL PRODUCTO"
	Para i=0 Hasta 6 Hacer
		Para j=0 Hasta 5 Hacer
			Si j==0 y i<5 Entonces
				Escribir "Producto " i+1 Sin Saltar
			SiNo
				Si j==0 y i==5 Entonces
					Escribir "Total Dia" Sin Saltar
				SiNo
					si j==0 y i==6 Entonces
						Escribir "Mas Vendido" Sin Saltar
					FinSi
				FinSi
			FinSi
			Si (i <> 6 o j <> 5) y (i <> 5 o j <> 5) Entonces
				Escribir "   " matriz[i,j] "   " Sin Saltar
			FinSi
			
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso inicializarMatriz(matriz Por Referencia)
	Definir i,j Como Entero
	Para i=0 Hasta 6 Hacer
		Para j=0 Hasta 5 Hacer
			matriz[i,j] = 0
		FinPara
	FinPara
FinSubProceso
	