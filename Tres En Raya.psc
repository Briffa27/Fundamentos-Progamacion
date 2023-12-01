Algoritmo TresEnRaya
	//Defino Variables
	Definir X,N,Jugador Como Entero
	Definir Vector Como Caracter
	Dimension Vector[9]
	//Escrtuctura del Arreglo
	Para X = 1 Hasta 9 Con Paso 1 Hacer
		Vector(X) = " "
	FinPara
	//Tablero
	X = 1
	Jugador = azar(2) + 1
	Mientras X <= 9 Hacer
		Escribir "Ingresa una posicion jugador", Jugador 
		Escribir "1,2,3", "           ", Vector(1), "," , Vector(2), ",", Vector(3)
		Escribir "4,5,6", "           ", Vector(4), "," , Vector(5), ",", Vector(6)
		Escribir "7,8,9", "           ", Vector(7), "," , Vector(8), ",", Vector(9)
		Leer N 
		//Condiciones de juego y victorias de ambos jugadores
		Si N > 0 y N < 10 Entonces
			Si Jugador == 1 Entonces
				Si Vector(N) == " " Entonces
					Vector(N) = "X"
					Jugador = 2
					Si Vector(1) == "X" y Vector(2) == "X" y Vector(3) == "X" Entonces
						Escribir "El Jugador 1 ha Ganado"
						X = 9
					FinSi
					Si Vector(4) == "X" y Vector(5) == "X" y Vector(6) == "X" Entonces
						Escribir "El Jugador 1 ha Ganado"
						X = 9
					FinSi
					Si Vector(7) == "X" y Vector(8) == "X" y Vector(9) == "X" Entonces
						Escribir "El Jugador 1 ha Ganado"
						X = 9
					FinSi
					Si Vector(1) == "X" y Vector(4) == "X" y Vector(7) == "X" Entonces
						Escribir "El Jugador 1 ha Ganado"
						X = 9
					FinSi
					Si Vector(2) == "X" y Vector(5) == "X" y Vector(8) == "X" Entonces
						Escribir "El Jugador 1 ha Ganado"
						X = 9
					FinSi
					Si Vector(3) == "X" y Vector(6) == "X" y Vector(9) == "X" Entonces
						Escribir "El Jugador 1 ha Ganado"
						X = 9
					FinSi
					Si Vector(1) == "X" y Vector(5) == "X" y Vector(9) == "X" Entonces
						Escribir "El Jugador 1 ha Ganado"
						X = 9
					FinSi
					Si Vector(3) == "X" y Vector(5) == "X" y Vector(7) == "X" Entonces
						Escribir "El Jugador 1 ha Ganado"
						X = 9
					FinSi
				SiNo
					Escribir "Esa Posición Está Ocupada"
				FinSi
			SiNo
				Si Vector(N) == " " Entonces
					Vector(N) = "O"
					Jugador = 1
					Si Vector(1) == "O" y Vector(2) == "O" y Vector(3) == "O" Entonces
						Escribir "El Jugador 2 ha Ganado"
						X = 9
					FinSi
					Si Vector(4) == "O" y Vector(5) == "O" y Vector(6) == "O" Entonces
						Escribir "El Jugador 2 ha Ganado"
						X = 9
					FinSi
					Si Vector(7) == "O" y Vector(8) == "O" y Vector(9) == "O" Entonces
						Escribir "El Jugador 2 ha Ganado"
						X = 9
					FinSi
					Si Vector(1) == "O" y Vector(4) == "O" y Vector(7) == "O" Entonces
						Escribir "El Jugador 2 ha Ganado"
						X = 9
					FinSi
					Si Vector(2) == "O" y Vector(5) == "O" y Vector(8) == "O" Entonces
						Escribir "El Jugador 2 ha Ganado"
						X = 9
					FinSi
					Si Vector(3) == "O" y Vector(6) == "O" y Vector(9) == "O" Entonces
						Escribir "El Jugador 2 ha Ganado"
						X = 9
					FinSi
					Si Vector(1) == "O" y Vector(5) == "O" y Vector(9) == "O" Entonces
						Escribir "El Jugador 2 ha Ganado"
						X = 9
					FinSi
					Si Vector(3) == "O" y Vector(5) == "O" y Vector(7) == "O" Entonces
						Escribir "El Jugador 2 ha Ganado"
						X = 9
					FinSi
				SiNo
					Escribir "Esa Posición Está Ocupada"
				FinSi
			FinSi
		SiNo 
			Escribir "Posisión Incorrecta";
		FinSi
		X = X + 1
	FinMientras
		//Mostrar el tablero con el resultado Final
		Escribir "1,2,3", "           ", Vector(1), "," , Vector(2), ",", Vector(3)
		Escribir "4,5,6", "           ", Vector(4), "," , Vector(5), ",", Vector(6)
		Escribir "7,8,9", "           ", Vector(7), "," , Vector(8), ",", Vector(9)
FinAlgoritmo
 