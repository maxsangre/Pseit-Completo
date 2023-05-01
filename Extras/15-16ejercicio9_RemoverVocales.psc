//9. Diseñar un procedimiento que reciba una frase, y el programa remueva todas las vocales repetidas. Al final el procedimiento mostrará la frase final.
//Por ejemplo:
//Entrada: "Habia una vez un barco"
//Salida: "Habi un vez n brco"
//Se marcan en rojo las repetidas sólo para explicar la consigna. Las vocales ?e?, ?i? y ?o? quedan al no estar repetidas
Algoritmo RemoverVocales
	definir frase Como Caracter
	escribir "Ingrese una frase"
	Leer frase
	RemVocal(frase)
	Escribir frase	
FinAlgoritmo
SubProceso RemVocal(frase por referencia)
	definir n, i, cont Como Entero
	definir aux, letra Como Caracter
	definir voc, voca, voce, voci, voco, vocu Como Logico
	n=longitud(frase)
	aux=""
	cont=0
	Para i<-0 Hasta n Con Paso 1 Hacer
		letra=subcadena(frase, i, i)
		voc=(letra="a" o letra="e" o letra="i" o letra="o" o letra="u")
		si letra="a" y cont=0 Entonces
			aux=Concatenar(aux, subcadena(frase, i, i))
			cont=1
		SiNo
			si voc=verdadero y cont>0
				aux=aux
			SiNo
				aux=Concatenar(aux, subcadena(frase, i, i))
			FinSi
		FinSi		
	Fin Para
	frase=aux
FinSubProceso
