#Definimos la variable
n:int
#La pedimos al usuario
n = int(input("Ingrese n: "))

#Establecemos la condicion de que un numero menor o igual a 1 no es primo
if n <= 1:
    print("El número ",n,"no es primo.")
#Establecemos la condicion de que un numero igual a 2 es primo
elif n == 2:
    print("El número ",n,"es primo.")
else:
# Comprobamos si el numero que introdujo el usuario es divisible entre 2 o 3
    if n % 2 == 0:
#Si lo es no es primo ya que los numeros primos solo son divisibles entre 1 y el mismo numero
        print("El número ",n,"no es primo.")
    elif n % 3 == 0:
        print("El número ",n,"no es primo.")
    else:
#Creamos la variable "d" y le asignamos el valor 5 por que ya comprobamos si el numero es divisible entre 2 y 3
        d = 5
#Creamos una condicion para el bucle para reducir la cantidad de operaciones ya que al encontrar divisor debe ser menor o igual a la raiz del numero.
        while d * d <= n:
#Establecemos la condicion de que un numero que divido entre la variable su modulo nos de 0 no es primo
            if n % d == 0:
                print("El número ",n,"no es primo.")
#Ademas añadimos la misma condicion pero sumando 2 a la variable "d" para evitar la verificacion de numeros pares,estos ya se han comprobado en pasos anteriores
            elif n % (d + 2) == 0:
                print("El número ",n,"no es primo.")
                break
#Ponemos "d += 6" para optimizar nuestro algoritmo ya que nos permite comprobar si un numero es primo o no saltando numeros que ya sabemos que no son primos
            d += 6
#Si no cumplen estas estas condiciones lo mostramos como un numero primo
        else:
            print("El número ",n,"es primo.")