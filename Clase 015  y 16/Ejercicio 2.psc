//// Crear un procedimiento que calcule la temperatura media de un día a partir de la temperatura
////
//// máxima y mínima. Crear un programa principal, que, utilizando un procedimiento, vaya pi-
//// diendo la temperatura máxima y mínima de n días y vaya mostrando la media de cada día. El
////
//// programa pedirá el número de días que se van a introducir.
Algoritmo sin_titulo
	Definir i, max, min, dias Como Real
	
	Escribir "De cuantos dias desea ver el promedio? "
	leer dias
	////   5
	/// 12345
	/// 01234
	para i = 0 Hasta  dias-1 Hacer
		Escribir "Ingrese la temperatura maxima"
		Leer max
		Escribir "Ingrese la temperatura minima"
		Leer min
		Escribir ""
		Escribir Sin Saltar "El promedio de temperatura del dia sera de: "
		promedio_temperatura(max, min)
		Escribir ""
	FinPara
	
FinAlgoritmo

SubProceso promedio_temperatura(max Por Referencia, min Por Referencia)
	Definir promedio Como Real
	promedio = (max+min) / 2
	Escribir promedio
FinSubProceso
