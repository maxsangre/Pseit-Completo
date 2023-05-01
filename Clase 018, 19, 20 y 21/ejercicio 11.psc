////Crear dos vectores que tengan el mismo tamaño (el tamaño se pedirá por teclado) y
////almacenar en uno de ellos nombres de personas como cadenas. En el segundo vector se
////debe almacenar la longitud de cada uno de los nombres (para ello puedes usar la función
////	Longitud() de PseInt). Mostrar por pantalla cada uno de los nombres junto con su longitud.
Algoritmo sin_titulo
	vectores()
FinAlgoritmo

SubProceso vectores()
	Definir vector2, i, j, num Como Entero
	Definir vector1, nombre Como Caracter
	
	Escribir "Ingrese el tamaño de los vectores: "
	Leer num
	
	Dimension vector1[num]
	Dimension vector2[num]
	
	Para i = 0 Hasta num-1
		Escribir "Ingrese un nombre"
		Leer nombre
		vector1[i] = nombre
		vector2[i] = Longitud(vector1[i])
	FinPara
	Escribir ""
	para j = 0 Hasta num-1
		Escribir "El nombre ", Mayusculas(Subcadena(vector1[j], 0, 0)), Subcadena(vector1[j], 1, Longitud(vector1[j])), " tiene una longitud de ", vector2[j], " letras."
	FinPara
	Escribir ""
FinSubProceso
	