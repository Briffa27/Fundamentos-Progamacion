f = open("ArchivoEntrada.txt")
linea = f.readline()
conteo = 0
while linea != "":
    conteo = conteo + 1
    linea = f.readline()

f.close()
conteo = conteo + 1

# Verificar cuantas líneas tiene el archivo, se recorre linea a linea llevando un contador

g = open("ArchivoSalida.txt","w")

MyPos = 1  # Linea del archivo actual
paginas = 4 # Cantidad de veces que se que se repite

while MyPos < conteo:

    f = open("ArchivoEntrada.txt")
    linea = f.readline()
    linea = linea.replace("\n", "")
    a = 1
    while a != MyPos:
        linea = f.readline()
        linea = linea.replace("\n", "")
        a = a + 1

    LineaN = linea
    AuxNew = int(linea[0:8])

    if AuxNew > AuxAnt:  
        ID1 = int(linea[0:8])
        AuxAnt = ID1

# Verificar que sea mayor al anterior que tenia, si no fuera mayor salta la linea
        j = 1
        while j < paginas:
            linea = f.readline()
            linea = linea.replace("\n", "")
            ID2 = int(linea[0:8])

            while ID1 != ID2:
                linea = f.readline()
                linea = linea.replace("\n", "")
                ID2 = int(linea[0:8])
            
            LineaN = LineaN + linea[9:]
            j = j + 1

        g.write(LineaN.strip()  +'\n')

# Impresión de la linea

    MyPos = MyPos + 1
    f.close()

g.close()
