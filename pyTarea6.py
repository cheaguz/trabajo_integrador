""" 6)       Crear una tupla en Python con el nombre de “Historial2” la cual contenga los siguientes valores:

          23500, 5960, 2300, 10200, 8900

Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Frida”.
 Calcular el monto total gastado a lo largo del tiempo por atención de “Frida”. 
Crear una función que cuente cuantos gastos fueron superiores a 5000 mostrando  el número calculado en pantalla. """


historial2 = [23500, 5960, 2300, 10200, 8900]

def total(historial):
    tot = 0
    for value in historial:
        tot +=value
    return tot

def gastosMayores(historial):
    mayores = 0
    count = 0
    for mayorQue in historial:
        if(mayorQue > 5000):
            mayores+= mayorQue
            count+=1
    return {"total: ":mayores,"items sumados: " : count}


print("total de gastos : ",total(historial2))

print("Total gastos mayores de 5000 : ", gastosMayores(historial2))



