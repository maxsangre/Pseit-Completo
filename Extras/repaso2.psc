////.Crea un programa que pida al usuario su nombre y apellido y los muestre escritos de la forma correcta
////(Primera letra en mayúsculas, y el resto en minúscula. Siempre debemos pensar que el usuario 
////puede ingresar los datos de una forma distinta a la que yo deseaba que lo hiciera)
Algoritmo sin_titulo
	Definir nombre, apellido Como Caracter
	Escribir "Ingrese su nombre y apellido"
	Leer nombre, apellido
	
	letramayuscula(nombre, apellido)
	
FinAlgoritmo

SubProceso letramayuscula(nombre, apellido)
	
	Escribir Concatenar(Mayusculas(Subcadena(nombre,0,0)), Minusculas(Subcadena(nombre, 1, Longitud(nombre)))), " ",  Concatenar(Mayusculas(Subcadena(apellido,0,0)), Minusculas(Subcadena(apellido, 1, Longitud(apellido))))
	
	
FinSubProceso
	