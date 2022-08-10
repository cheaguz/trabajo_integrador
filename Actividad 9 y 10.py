#Acividad 9

#9 Crear una tupla en Python con el nombre de “Historial5” la cual contenga los siguientes valores:

    #8520, 9510, 7530, 3570, 1590

#Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Toto”. 

#Crear una función para determinar el valor máximo de atención gastada en “Toto”.



Historial5 = (8520, 9510, 7530, 3570, 1590)

def toto ():
    maximo = 0
    for x in Historial5:
        if x > maximo:
            maximo= x
    
    print("El valor máximo de atención gastada en Toto es: " , maximo)

toto()

#Actividad 10

#10) Crear una lista denominada “Clientes” con los nombres de los diferentes  dueños de perros.

#Juan,  Mario,  Ariel,  Josefina,  Marianella.

#Ordenarla alfabéticamente y mostrarla por pantalla.



clientes = ["Juan" ,"Mario","Ariel","Josefina", "Marianella"]

def OrdenarClientes():
    listaOrdenada= sorted(clientes)
    print(listaOrdenada)

OrdenarClientes()
