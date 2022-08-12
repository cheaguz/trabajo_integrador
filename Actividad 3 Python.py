//Codigo realizado por Fernandez David User: Odafer91//

#3)  Crear un lista en Python denominado “Perro” que contenga los siguientes valores:

  13,  Puppy,  12/12/2012 , Macho, 123

#Que se corresponde con los datos de un perro de nuestra base de datos 
#(Id_Perro, nombre, fecha de nacimiento, sexo y dni del dueño). 
#Modificar la fecha de nacimiento por 13/12/2012 y reemplazar “dni del dueño” por 28957346

Perro = ["13" , "puppy" , "12/12/2012" , "Macho" , "123"]
#indice = [ 1 , 2 , 3 , 4 , 5 ]

for x in range(len(Perro)):
    if Perro [x] == "12/12/2012":
        Perro [x] = "13/12/2012"


    print(Perro) 

for x in range(len(Perro)):
    if Perro [x] == "123":
        Perro [x] = "28957346"


    print(Perro)






