////Queremos realizar una encuesta a 6 personas, en esta encuesta:

////o Indicaremos el sexo 1= masculino, 2=femenino

////o sí trabaja 1=si trabaja 2=no trabaja

////o Su sueldo (que estará entre 600 y 2000, valor entero, siempre y cuando trabaje sino es 0)

////o Calcule y muestre:
////a) Porcentaje de hombres / porcentaje de mujeres
////b) Porcentaje de hombres que trabajan / porcentaje de mujeres que trabajan
////c) Sueldo promedio de los hombres que trabajan / sueldo promedio de las mujeres q trabajan
////d) muestre los datos del 5 trabajador

/// en este ejercicio nos encontramos bajo legislacion Uruguaya
Algoritmo sin_titulo
    Definir matriz Como Entero
	Dimension matriz[6,3]
	///              i  j  
	///   ==        n  m
	///   ==        f  c
	///   ==     fila columnas
	rellenar(matriz)
FinAlgoritmo

SubProceso rellenar(matriz)
	Definir i Como Entero
	para i = 0 Hasta 5 Con Paso 1
		para j = 0 Hasta 2 Con Paso 1
			Escribir "Ingrese sexo "
			Escribir "1femenino, 2masculino"
			Leer sexo
			Repetir
				segun sexo hacer
				1:
					Escribir 'Femenino'
				2: 
					Escribir 'Masculino'
				De Otro Modo:
					Escribir "Error"
			    FinSegun
		    Mientras Que  sexo <> 1 && sexo <> 2  
		FinPara
	FinPara
FinSubProceso
	