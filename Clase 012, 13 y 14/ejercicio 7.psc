Funcion retorno <- convertir (num Por Referencia)
	definir retorno  Como Entero
	retorno = ConvertirANumero(num)
Fin Funcion
Algoritmo sin_titulo
	Definir num Como Caracter
	Escribir "Ingrese un numero"
	Leer num
	si ConvertirANumero(num) < 999 Entonces
		Escribir convertir(num) + 1
	FinSi
	
FinAlgoritmo
