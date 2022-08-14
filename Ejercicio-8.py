#  Crear una tupla en Python con el nombre de “Historial4” la cual contenga los siguientes valores:
#  7510, 7960, 76180, 800, 4100
#  Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Olivia”. 
#  Cree una función para determinar el valor mínimo de atención gastada en “Olivia” mostrándolo en pantalla.

Historial4 = (7510, 7960, 76180, 800, 4100)

#Metodo 1
def minimoValor(valores):
    menor = valores[0]

    for n in valores:
        if n < menor:
            menor = n
    print("Valor minimo de atencion gastada: " + str(menor))

#Metodo 2
def minimoValor2(valores):
    print("Valor minimo de atencion gastada: " + str(min(valores)))



minimoValor(Historial4)
print("\n")
minimoValor2(Historial4)
    
