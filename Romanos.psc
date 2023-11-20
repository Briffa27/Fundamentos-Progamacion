//Conversion Numeros Romanos a Arabigos
// DIEGO ALEJANDRO BRIFFA VARGAS
Proceso Romanos
	//Defino Variables
	Definir Romano Como cadena
	//Pido Variables
	Escribir "Ingrese Romano: ";
	Leer Romano;
	//Programa
	N <- Longitud(Romano) // Extrae la cantidad de caracteres de la cadena un numero entero.
 	Arabigos <- 0
	j <- 0
	Para i <- 1 Hasta N Hacer
		Si Subcadena(Romano, i,i) = "M" Entonces // lee primer caracter de la cadena y comprueba si es M
			Arabigos <- Arabigos + 1000
			Si Subcadena(Romano, j,i-1) = "C" Entonces //Para retroceder una posicion en la cadena
				Arabigos <- Arabigos - 200
			FinSi
		FinSi
		
		Si Subcadena(Romano, i,i) = "D" Entonces
			Arabigos <- Arabigos + 500
			Si Subcadena(Romano, j,i-1) = "C" Entonces //Para retroceder una posicion en la cadena
				Arabigos <- Arabigos - 200
			FinSi
		FinSi
		
		Si Subcadena(Romano, i,i) = "C" Entonces
			Arabigos <- Arabigos + 100
			Si Subcadena(Romano, j ,i-1) = "X" Entonces //Para retroceder una posicion en la cadena
				Arabigos <- Arabigos - 20
			FinSi
		FinSi
		
		Si Subcadena(Romano, i,i) = "L" Entonces
			Arabigos <- Arabigos + 50
			Si Subcadena(Romano, j,i-1) = "X" Entonces //Para retroceder una posicion en la cadena
				Arabigos <- Arabigos - 20
			FinSi
		FinSi
		
		Si Subcadena(Romano, i,i) = "X" Entonces
			Arabigos <- Arabigos + 10 
			Si Subcadena(Romano, j,i-1) = "I" Entonces //Para retroceder una posicion en la cadena
				Arabigos <- Arabigos - 2
			FinSi
		FinSi
		
		Si Subcadena(Romano, i,i) = "V" Entonces
			Arabigos <- Arabigos + 5 
			Si Subcadena(Romano, j,i-1) = "I" Entonces //Para retroceder una posicion en la cadena
				Arabigos <- Arabigos - 2 
			FinSi
		FinSi
		
		Si Subcadena(Romano, i,i) = "I" Entonces
			Arabigos <- Arabigos + 1
		FinSi
		j <- j + 1 //contador de j - indice inicial de cadena 
	FinPara
	Escribir "El Numero Romano: ", Romano, " Es el Numero Arabigo: ", Arabigos;
FinProceso

