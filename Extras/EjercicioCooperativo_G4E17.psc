
Algoritmo EjercicioCooperativo_G4E17
	
	Menu()
	
	Escribir "***** F I N *****"
	
FinAlgoritmo

//***********************************************************************
SubProceso Menu()
	
	Definir Opc Como Entero
	Definir superficie, LargoVig, Alto, salida Como Real
	
	Escribir " MENU "
	Escribir " 1 - Calcular Muro de Ladrillo. "
	Escribir " 2 - Calcular Viga de Hormigon. "
	Escribir " 3 - Calcular Columnas de Hormigon. "
	Escribir " 4 - Calcular Contrapiso. "
	Escribir " 5 - Calcular Techo. "
	Escribir " 6 - Calcular Pisos. "
	Escribir " 7 - Calcular Pintura. "
	Escribir " 8 - Calcular Iluminacion. "
	Escribir " 9 - Salir. "
	Escribir " "
	Escribir "ELIJA UNA OPCION"
	Escribir " "
	Leer Opc
	
	Si Opc <> 9 Entonces
		
		Segun Opc Hacer
			
			1 : superficie = CalcSup()
				
				CalcMuro(superficie)
				
				Elegir()
			 
			2 : Escribir "Ingrese Largo de la Viga en Mts : "
				Leer LargoVig
				
				CalcViga(LargoVig)
				
				Elegir()
				
			3 : Escribir "Ingrese el Alto de la Columna en Mts : "
				Leer Alto
				
				CalcCol(Alto)
				
				Elegir()
				
			4 :  CalcContraPiso()
				
				Elegir()
				
			5 :  CalcTecho()
				
				Elegir()
				
			6 :  Piso()
				
				Elegir()
				
			7 :  Pintura()
				
				Elegir()
				
	    	8 : Iluminacion()
				
	    FinSegun
		
	SiNo
		
		Limpiar Pantalla
		
		Escribir "SALIENDO DEL MENU"
		Escribir " "
		
	FinSi
	
FinSubProceso

//****************************************************************

//****************************************************************

Funcion retorno <- CalcSup()
	
	Definir retorno, largo, altura, A Como Real
	
	Escribir "Ingrese el Largo en Mts. : "
	Leer largo
	
	Escribir "Ingrese la Altura en Mts. : "
	Leer altura
	
	A = largo * altura
	
	retorno = A
	
FinFuncion

//*****************************************************************

Funcion retorno <- CalcVol()
	
	Definir retorno, espesor, ancho, largo Como Real
	
	Escribir "Ingrese el Espesor en Mts. "
	Leer espesor
	Escribir "Ingrese el Ancho en Mts. "
	Leer ancho
	Escribir "Ingrese el Largo en Mts. "
	Leer largo
	
	retorno = espesor * ancho * Largo
	
FinFuncion

//*****************************************************************

SubProceso CalcMuro(superficie Por Referencia)
	
	Definir Espesor Como Entero
	
	Escribir " Elija el Espesor del Muro : 1 - 20cm "
	Escribir "                             2 - 30cm "
	Leer Espesor
	
	Limpiar Pantalla
	
	Escribir "La Superfice del Muro es de " superficie " Mts2 "
	
	Si Espesor = 1 Entonces
		
		Escribir "Los Materiales Necesarios Seran : "
		Escribir (10.9 * superficie) " Kgs de Cemento "
		Escribir (0.09 * superficie) " mt3 de Arena "
		Escribir (90 * superficie) " Ladrillos "
		
	SiNo
		
		Escribir "Los Materiales Necesarios Seran : "
		Escribir (15.2 * superficie) " Kgs de Cemento "
		Escribir (0.115 * superficie) " mt3 de Arena "
		Escribir (120 * superficie) " Ladrillos "
		
	FinSi
	
FinSubProceso

//***********************************************************************************

SubProceso CalcViga(LargoVig Por Referencia)
	
	Limpiar Pantalla
	
	Escribir " Los Materiales Necesarios para la Viga seran : "
	Escribir " Cemento = " (9 * LargoVig) " Kgs "
	Escribir " Arena = " (0.02 * LargoVig) " Mts3 "
	Escribir " Piedra = " (0.02 * LargoVig) " Mts2 "
	Escribir " Hierro del 8 = " (4 * LargoVig) " Mts "
	Escribir " Hierro del 4 = " (3 * LargoVig) " Mts "
	
FinSubProceso

//**************************************************************************************

SubProceso CalcCol(Alto Por Referencia)
	
	Escribir " Los Materiales Necesarios para la Columna seran : "
	Escribir " Cemento = " (7.5 * Alto) " Kgs "
	Escribir " Arena = " (0.016 * Alto) " Mts3 "
	Escribir " Piedra = " (0.016 * Alto) " Mts2 "
	Escribir " Hierro del 10 = " (6 * Alto) " Mts "
	Escribir " Hierro del 4 = " (3 * Alto) " Mts "
	
FinSubProceso

//******************************************************************************************

SubProceso CalcContraPiso()
	
	Definir Espesor, Ancho, Largo, VolPiso Como Real
	
	Escribir "Ingrese Espesor del Piso en Mts. : "
	Leer Espesor
	Escribir "Ingrese Ancho del Piso en Mts. : "
	Leer Ancho
	Escribir "Ingrese Largo del Piso en Mts. : "
	Leer Largo
	
	VolPiso = CalcVol()
	
	Limpiar Pantalla
	
	Escribir " Los Materiales Necesarios para el Piso seran : "
	Escribir " Cemento = " (105 * VolPiso) " Kgs "
	Escribir " Arena = " (0.45 * VolPiso) " Mts3 "
	Escribir " Piedra = " (0.9 * VolPiso) " Mts2 "
	
FinSubProceso

//*************************************************************************************************

SubProceso CalcTecho()
	
	Definir Techo Como Real
	
	Techo = CalcSup()
	
	Limpiar Pantalla
	
	Escribir " Los Materiales Necesarios para el Techo seran : "
	Escribir " Cemento = " (33 * Techo) " Kgs "
	Escribir " Arena = " (0.072 * Techo) " Mts3 "
	Escribir " Piedra = " (0.072 * Techo) " Mts2 "
	Escribir " Hierro del 8 = " (7 * Techo) " Mts "
	Escribir " Hierro del 6 = " (4 * Techo) " Mts "
	
FinSubProceso

//*****************************************************************************

SubProceso Piso()
	
	Definir SupPiso Como Real
	
	SupPiso = CalcSup()
	
	Pano = SupPiso + ((SupPiso * 10)/100)
	
	Escribir "La superficie del Paño es de " Pano " Mts2 "
	
FinSubProceso

//********************************************************************************

SubProceso Pintura()
	
	Definir A Como Real
	
	A = CalcSup()
	
	Limpiar Pantalla
	
	Escribir " La Superficie es " A
	Escribir " "
	Escribir " Se Necesitarian " (A / 6) " Litros "
	
FinSubProceso

//**********************************************************************************

SubProceso Iluminacion()
	
	Definir hab Como Real
	
	hab = CalcSup()
	
	Escribir "La cantidad minima de iluminacion natural para una superficie de " hab " es " hab*0.20
	
FinSubProceso

//************************************************************************************

SubProceso  elegir()
	
	Definir salida, Opc Como Entero
	
	Escribir "Desea Continuar con el Menu? 1 = SI   2 = NO"
	Leer salida
	
	Si salida = 1 Entonces
		
		menu()
		
	SiNo
		
		Opc = 9
		
	FinSi
	
FinSubProceso

//***************************************************************************************

//  Vamos a programar una calculadora de materiales para construir
//	Primero leeremos todo el ejercicio y luego dividiremos tareas en el equipo.
//	El algoritmo principal sólo debe llamar al subPrograma menu()
//	Cada subPrograma puede descomponerse, si hiciera falta, en otros subProgramas a creatividad del programador
//		El menú debe quedar de la siguiente manera:
//			1. Calcular muro de ladrillo
//			2. Calcular viga de hormigón
//			3. Calcular columnas de hormigón
//			4. Calcular contrapisos
//			5. Calcular techo
//			6. Calcular pisos
//			7. Calcular pintura
//			8. Calcular iluminación
//			9. Salir
//
//  Subprogramas calcularSuperficie y calcularVolumen
//		Haremos ambos para usarlos dentro de los otros subprogramas. El usuario no puede acceder a ellos.

//	Subprograma calcularMuro
//		Nos debe pedir primero si el muro será de 20 o 30 cm de espesor. Luego el largo y el alto. A partir de estos datos
//      se debe mostrar al usuario la superficie del muro y la cantidad de materiales que necesitaremos para construirlo.
//	    Si el muro es de 30cm necesitaremos por metro cuadrado: 15.2 kg de cemento, 0.115 m3 de arena y 120 ladrillos.
//		Si el muro es de 20cm necesitaremos por metro cuadrado: 10.9 kg de cemento, 0.09 m3 de arena y 90 ladrillos.
//				
//	Subprograma calcularViga
//		Nos debe pedir el largo de la viga. Por metro lineal de viga se necesitarán: 9 kg de cemento, 0.02 m3 de arena, 
//      0.02 m2 de piedra, 4 m de hierro del 8 y 3 m de hierro del 4. Debemos mostrar al usuario la cantidad de materiales
//      necesaria.
//
//	Subprograma calcularColumna
//		Nos debe pedir el largo de la columna. Por metro lineal de columna se necesitarán: 7.5 kg de cemento, 0.016 m3 de arena,
//  	0.016 m2 de piedra, 6 m de hierro del 10 y 3 m de hierro del 4. Debemos mostrar al usuario la cantidad de materiales
//		necesaria.
//
//	Subprograma calcularContrapisos
//		Nos debe pedir espesor, ancho y largo del contrapiso a calcular. Por metro cúbico de contrapiso se necesita: 
// 		105 kg de cemento, 0.45 m3 de arena y 0.9 m3 de	piedra. Debemos mostrar al usuario la cantidad de materiales necesaria.
//
//	Subprograma calcularTecho
//		Nos debe pedir espesor, ancho y largo del techo a calcular.Por metro cuadrado de techo se necesita: 33 kg de cemento, 
//		0.072 m3 de arena, 0.072 m3 de piedra, 7 m de hierro del 8 y 4 m de hierro del 6.Debemos mostrar al usuario la cantidad 
//		de materiales necesaria.
//
//	Subprograma calcularPisos
//		Nos debe pedir ancho y largo del paño de piso a colocar. Teniendo esos datos se debe calcular la superficie y añadirle
//		un 10% extra por recortes. Mostrar el resultado en m2
//
//	Subprograma calcularPintura
//		Nos debe pedir la superficie del muro y mostrar cuánta pintura necesitamos teniendo en cuenta que rinde 6 m2 por litro
//		de pintura.
//
//	Subprograma calcularIluminacion
//		Nos debe pedir la superficie de la habitación. La iluminación la calculamos de la siguiente forma: superficie * 0.20. 
//		Eso nos da la cantidad mínima de superficie de iluminación natural (ventanas y puertas de vidrio). Mostrar resultado




