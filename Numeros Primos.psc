//Calculo de Numero Primo
Proceso Primo
    Definir N, j, Iteracion, laRaiz Como Entero //Definimos variables
	Definir esPrimo Como Logico // Definimos esPrimo como logico 
    Escribir "Ingrese N: "; //Solicitamos al usuario que ingrese un n�mero
    Leer N;
	Si N < 2 Entonces // Condicionamos que si el numero es menos a 2 automaticamente NO ES PRIMO
		Escribir "El N�mero: ", N , " -NO- es primo ";
		esPrimo = Falso;  //Si n es menor o igual a 1, no es primo
		Sino
			SI N = 2 Entonces // Condicionamos que si el numero ingresado es 2, automaticamente ser�a un n�mero primo
				esPrimo = Verdadero; 
			  SiNo
				Si N MOD 2 = 0 Entonces // Descartamos todos los n�meros pares 
					esPrimo=Falso;
					Escribir "El N�mero: ", N , " -NO- es primo ";
			  SiNo
				laRaiz <- redon(RC(N)); //Calcular la ra�z cuadrada de n y convertirla a entero
				Para Iteracion = 3 Hasta laRaiz Con Paso 2; // Colocamos un bucle Para para iterar desde 3 Hasta la raiz cuadrada del n�mero, con paso 2, logramos contar todos los IMPARES 
				  escribir Iteracion; // test de iteracion
				  esPrimo = Verdadero; //Suponemos que n es primo
				  Para J=3 hasta RC(iteracion) con paso 2 hacer //Bucle para seleccionar solo numeros primos, que seran divididos entre el n�mero dado 
					  Si Iteracion mod j = 0 entonces 
						  esPrimo=Falso;
						  J=redon(rc(iteracion)); //hace la funcion de break de pyton, para el bucle -Para-
					  FinSi
					FinPara
				  Si esPrimo Entonces // Ahora que sabemos que el divisor en primo lo dividimos entre el Numero Dado
				       Si N MOD Iteracion = 0 Entonces // Si el resto de dividir el NUMERO entre iteracion da 0, automaticamente descartamos que sea primo.
						   Escribir "El N�mero: ", N , " -NO- es primo ";
						   esPrimo = Falso;  //Si n es divisible por i, no es primo
					       Iteracion = laRaiz;//Salir del bucle, y no esperar mas. Una especie de break
				    	FinSi
				  FinSi
				FinPara	
			   
			FinSi
			
		FinSi
    FinSi
	Si esPrimo Entonces // Comprobamos la condicion l�gica. Si la variable esPrimo es verdadera Imprimimos que el n�mero es primo
      Escribir "El N�mero: ", N , " ** �Es un n�mero primo! ** ";
    FinSi	
FinProceso

