Se crea dos estructuras de datos llenas: Una lista y un Map.

Como desea imprimir el resultado con Nombre y Coincidencias, se usa un Map<String, int> que recibe como parámetros las dos estructuras de datos antes mencionadas.

Se inicializa dos contadores en cero para cada IA. Mediante un ciclo for y condicionales if, se cuentan las coincidencias que hay entre las dos estructuras de datos y cada contador va sumando las coincidencias.

El mapa termina retornando los valores totales para cada IA.

En el main se crea una variable que representa al mapa con sus parámetros de estructuras de datos. La variable es recorrida por un forEach, donde se hace unos arreglos en el print para que se vea presentable.

Se tomó la decisión técnica debido a que la Lista solo toma un parámetro para las características, mientras que el Map toma dos debido al nombre de la IA y las características que representa

La función, es decir el Map denominado result, toma ambas estructuras de datos y comienza a trabajar en base a ellas.

Lo demás ya es sencillo.