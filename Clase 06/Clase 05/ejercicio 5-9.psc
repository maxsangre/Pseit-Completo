Algoritmo sin_titulo
	Definir palabra como cadena
	escribir "Ingrese una palabra: "
	leer palabra
	palabra = Minusculas(palabra)
	si Subcadena(palabra, 0, 0) = Subcadena(palabra,Longitud(palabra)-1 ,Longitud(palabra)-1) Entonces
		Escribir "CORRECTO"
	sino 
		Escribir "INCORRECTO"
	FinSi
	
FinAlgoritmo
