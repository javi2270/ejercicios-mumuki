
# Lección 5: Atributos

### La mayor parte de los objetos que definamos, van a necesitar variables, o atributos, para poder tener el comportamiento esperado.

### Al definir un objeto, una de las cosas que hay que pensar es cuántos atributos necesita, y qué características debe tener cada uno.

### Los ejercicios de esta guía apuntan a que definas qué atributos son necesarios para definir un objeto. 


## Ejercicio 1: Hornalla

Lo que se pide en este ejercicio parece fácil: modelar una hornalla de gas.

La temperatura de la hornalla es: 180 grados si está prendida, 20 grados si está apagada.

El consumo de gas es: 4 dm3 si está prendida, 0 dm3 si está apagada.

La definición del objeto hornalla debe incluir estos cuatro métodos:

    temperatura():devuelve un número de acuerdo a lo explicado arriba.
    consumo(): devuelve un número de acuerdo a lo explicado arriba.
    prender(): no devuelve ningún valor, realiza una acción.
    apagar(): no devuelve ningún valor, realiza una acción. 

El objeto debe funcionar como se indica abajo:

##### >>> hornalla.prender()
##### >>> hornalla.temperatura()   
180
##### >>> hornalla.consumo()
4
##### >>> hornalla.apagar()
##### >>> hornalla.temperatura()   
20
##### >>> hornalla.consumo()
0

Para que el modelo de hornalla funcione correctamente, hay que incluir variables. ¿Cuántas? Alcanza con una. Si te sale con dos variables está OK, pero mejor si usás una sola.


## Ejercicio 2: Trencito de la alegría

Ahora nos piden hacer un modelo del trencito de la alegría, que entienda estos mensajes: 




    vaCargado():verdadero si lleva más de 40 pasajeros, falso en caso contrario.
    vaTranca(): verdadero si lleva menos de 10 pasajeros, falso en caso contrario.
    subir(cant): aumenta la cantidad de pasajeros en lo que indica cant, un número.
    bajar(cant): disminuye la cantidad de pasajeros en lo que indica cant, un número.
    vaciar(): deja al trencito sin pasajeros.     

Lo que sigue es un ejemplo del comportamiento que se espera.





##### >>> trencito.vaciar()       // no tiene ningún pasajero
##### >>> trencito.vaCargado()    
false
##### >>> trencito.vaTranca()
true
##### >>> trencito.subir(25)      // ahora tiene 25 pasajeros
##### >>> trencito.vaCargado()    
false
##### >>> trencito.vaTranca()
false
##### >>> trencito.subir(20)      // ahora tiene 45 pasajeros
##### >>> trencito.vaCargado()    
true
##### >>> trencito.vaTranca()     // falso
false
##### >>> trencito.bajar(38)      // ahora tiene 7 pasajeros
##### >>> trencito.vaCargado()
false
##### >>> trencito.vaTranca()     
true


## Ejercicio 3: Ema en ciudades

A Ema le gusta vivir viajando, se la pasa yendo de ciudad en ciudad.

En la parte de "Biblioteca" se definen tres ciudades. En este modelo, los objetos que representan ciudades saben responder a cuatro cosas

    haySol(): devuelve un booleano.
    cantidadMuseos(): devuelve un número.
    costoTransporte(): devuelve un número.
    costoHotel(): devuelve un número. 

Se nos pide que programemos el objeto que representa a Ema, que debe entender estos mensajes:

    gastosDiarios(): devuelve un número que es la estimación de cuánto gasta Ema por día. Esto es la suma del costo de hotel
    y el costo de transporte de la ciudad donde esté, más 500 pesos para otros gastos.
    estaComoda(): devuelve un booleano que indica si Ema está cómoda. Para que esto pase, la ciudad donde está debe cumplir 
    dos condiciones: tiene que haber sol, y tiene que tener más de 5 museos.
    mudarse(ciudad): mediante este método se informa que Ema se muda a la ciudad indicada en el argumento. El efecto de este 
    mensaje es realizar una acción, no devuelve ningún valor. 

P.ej. la siguiente secuencia debe funcionar como se indica

##### >>> ema.mudarse(encarnacion)
##### >>> ema.gastosDiarios()
3550
##### >>> ema.estaComoda()
false
##### >>> ema.mudarse(salvadorDeBahia)
##### >>> ema.gastosDiarios()
3200
##### >>> ema.estaComoda()
true
 

En esta secuencia, la primera vez que se le pregunta a Ema si está cómoda, responde que no porque la ciudad donde está, Encarnación, no cumple la condición de los museos.
La segunda vez responde que sí, porque Salvador de Bahía cumple las dos condiciones que pide Ema.
