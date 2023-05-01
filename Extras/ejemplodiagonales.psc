Algoritmo sin_titulo
	Definir i,j,n, m,matriz Como Entero
	n=  5
	m= 5
	Dimension matriz[n,m]
	para i = 0 Hasta n-1
		para j = 0 Hasta n-1
			matriz[i,j]= Aleatorio(1,9)
		FinPara
	FinPara
	
	/// n = fila
	/// m = columna
	
	/// Dimension matriz[n,m]
	para i = 0 Hasta n-1
		para j = 0 Hasta  n -1
			
			si i== j /// diagonal principal
				Escribir Sin Saltar "[0]"
			SiNo
				si i+j = n-1 /// diagonal inversa
					Escribir Sin Saltar "[0]"
				SiNo
					Escribir Sin Saltar"[", matriz[i,j], "]"
					
				FinSi
			FinSi
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo
