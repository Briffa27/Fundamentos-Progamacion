#Defino Variables
Valores = {"I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M":1000}
Arabigos = 0
#Pido Variables
Romano = str (input ("Introduzca Numero Romano:"))
#Ejecucion Programa
for i in range (len(Romano)):
    if i > 0 and Valores [Romano[i]] > Valores [Romano[i - 1]]:
        Arabigos += Valores [Romano[i]] - 2 * Valores [Romano[i - 1]]
    else:
        Arabigos += Valores [Romano[i]]
print ("El Numero Romano", (Romano), "Es Igual a", (Arabigos))
print (Valores ["I"])
