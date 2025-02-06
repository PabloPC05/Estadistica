# EPIGRAFE 1
 # APARTADO 1.3 - Scripts
  #Ejemplo 1.3.1 
    # Muestras de tamaño 50 de una distribucion normal de media 2 y desviacion estandar 3 
    x <- rnorm(50, 2, 3)
    y <- rnorm(50, 2, 3)
    # Graficamos los puntos 
    plot(x,y)
    # Calculamos la correlacion entre x y y, y lo imprimimos
    print(cor.test(x,y))
    # APARTADO 1.5 - Lenguaje R
      #Ejemplo 1.5.1
        # Si intentamos calcular la media del vector de variables con distribucion normal x, obtendremos un error 
        (media.x <- mean(x)
        # Ésto devuelve esto: 
          # >   (media.x <- mean(x)
          # +  (media.x <- mean(x)
          # +  (media.x <- mean(x)
          # +  (media.x <- mean(x)
          # +
        #Cuando si la entrada fuera (media.x <- mean(x)), obtendriamos el valor de la media: 
          (media.x <- mean(x))
        #Nos devuelve: 
          #>     (media.x <- mean(x))
          #[1] 2.34787
      # SUBAPARTADO 1.5.1 - Calculo 
        #Ejemplo 1.5.1.1
          #Si introducimos en la consola de comandos la instruccion: exp(2)+5
          # Obtendremos el valor de la exponencial de 2 mas 5, i.e. devuelve: 
          # > exp(2)+5
          # [1] 12.38906
          
        # Ejemplo 1.5.1.2
          #Al igual que en la artimética tradicional, R respeta el orden de los factores según el uso de paréntesis y de las operaciones
          # Es decir, si introducimos en la consola: 7-5 * 4 + 3, la consola nos devolverá: [1] -10
          # Sin embargo, si introducimos por la consola la instruccion: (7-5) * 4 + 3, la consola nos devolverá: [1] 11
        # SUBAPARTADO 1.5.2 - Asignacion
          #Ejemplo 1.5.2.1
            # Para asignar valores o resultados a una variable, se utiliza el operador de asignacion "<-"
            # Por ejemplo, si asignamos a la variable x, una variable aleatoria con distribucion normal de media 2 y desviacion estandar 3
            x <- rnorm(50, 2, 3)
            # Al introducir en la consola la instruccion: x, obtendremos los valores de la variable x, es decir, la consola nos devolverá:
            # [1]  5.34867449 -0.66844804 -0.81601469 -4.76439655  0.59017439  3.79892356  2.62494964 -0.17386802  7.49084754
            # [10]  5.67181197 -1.31521802  6.95677534 -3.75334413  0.69986357  7.99450023 -0.08778885  1.85062842  4.55701369
            # [19] -0.60450689  0.89202457 -0.91991836  6.13245039  1.36166973  2.35580786  4.88900325  1.96852177  1.64648627
            # [28]  6.63334000  6.14978398  1.81982632  4.39811195  2.09812136  2.44410753  0.63365097  0.99299369  5.04405840
            # [37]  2.64484793  1.51373443  5.18808556  0.49557838  4.22269412  0.31085538  3.69460600 -1.16941483  0.97417845
            # [46]  3.17449809  0.67301711  5.12619069 -1.03436458  7.63839844
        
            # Como la x agrupa las 50 muestras, siempre que hablemos de la misma, se tendrán en cuenta todos los valores del vector
            # Por ejemplo, si introducimos en la consola la instruccion: mean(x), obtendremos la media de los valores del vector x, es decir, la consola nos devolverá:
            mean(x)
            # [1] 2.34787
            # Y si quisieramos crear un objeto que contenga la media de los valores del vector x, lo haríamos de la siguiente manera:
            (media.x <- mean(x)) # Teniendolo que escribir entre paréntesis para poder manejarlo y visualizarlo
            # Si quisieramos eliminarlo, tenemos que escribir: 
            rm(media.x)
            # Pudiendo obtener la "confirmacion" de la eliminacion visualizando los objetos que estamos tratando con la instruccion objects()
            objects()
            # La que nos devuelve en este caso: [1] "media.x" "x" "y" (Previamente a la eliminacion)
            # Y tras la eliminacion: [1] "x" "y"

            #Ejemplo 1.5.2.2
              # Dado que existen diferentes estructuras de datos para almacenar las variables aleatorias
              # Existen diferentes métodos para obtener información sobre los mismos
              # Por ejemplo, continuando con las variables aleatorias anteriores, si introducimos: 
              mode(x)
              # Esta instruccion nos devuelve el tipo de estructura de datos de la variable, en nuestro caso: [1] "numeric"
              length(x)
              # Esta instruccion nos devuelve la longitud de la variable, en nuestro caso: [1] 50
              mode(mean)
              # Dado que mean es una funcion, nos devuelve: [1] "function"
            #Ejempo 1.5.2.3
              # Existen vectores de muestras que están presentes de forma predeterminada. Una de ellas es la Nile: 
              # Si introducimos en la consola la instruccion: 
              Nile
              #, obtendremos los valores de la variable Nile, es decir, la consola nos devolverá:
              # Time Series:
              # Start = 1871
              # End = 1970
              # Frequency = 1
              # [1] 1120 1160  963 1210 1160 1160  813 1230 1370 1140  995  935 1110  994 1020  960 1180  799  958 1140 1100 1210
              # [23] 1150 1250 1260 1220 1030 1100  774  840  874  694  940  833  701  916  692 1020 1050  969  831  726  456  824
              # [45] 702 1120 1100  832  764  821  768  845  864  862  698  845  744  796 1040  759  781  865  845  944  984  897
              # [67] 822 1010 771 676 649 846 812 742 801 1040 860 874 848 890 744 749 838 1050 918 986 797 923 975 815 1020 906
              # [89] 901 1170 912 746 919 718 714 740
              # Si quisieramos conocer los atributos de Nile, introducimos la instrucción: 
              attributes(Nile)
              # y obtendremos:
              # $tsp
              # [1] 1871 1970    1
              # $class
              # [1] "ts"
              # Con la instruccion str(Nile), obtenemos la estructura de la variable:
              # Time-Series [1:100] from 1871 to 1970: 1120 1160 963 1210 1160 1160 813 1230 1370 1140 ...
            # Ejemplo 1.5.2.4
              # Si queremos crear una matriz 2x2,de todo unos, introducimos la instrucción: 
              num <- c(1,1,1,1)
              # De manera que al introducir por consola la instrucción
              num
              # Obtenenemos: [1] 1 1 1 1
              # Y para obtener un atributo en concreto usamos la instrucción attr: 
              attr(num, "dim") <- c(2,2)
              # De manera que al introducirlo, obtenemos: 
              # [,1] [,2]
              # [1,]    1    1
              # [2,]    1    1
# EPÍRGRAFE 2: Vectores
  # APARTADO 2.1 - Vectores numéricos
    # Ejemplo 2.1.1
      # Si quisieramos crear un vector de los 5 primeros naturales y asignarlo a la variable v, lo hacemos introduciendo la siguiente instrucción: 
      v <- c(1,2,3,4,5)
      # De manera que al introducir por consola la instrucción: 
      v
      # Obtenemos: 
      # [1] 1 2 3 4 5
    # Ejemplo 2.1.2
      # El ejemplo anterior se podría haber hecho usando la instrucción assign: 
      assign("v", c(1,2,3,4,5))
      # De manera que al introducir por consola la instrucción: v
      v
      # Obtenemos:
      # [1] 1 2 3 4 5
    # Ejemplo 2.1.3
      # Una vez existe un vector como objeto podemos operar sobre él y crear nuevos vectores a partir del mismo: 
      exp(v)
      # Obtenemos: [1]   2.718282   7.389056  20.085537  54.598150 148.413159
      # Y si a partir de v quisieramos crear un nuevo objeto-vector tras operar introducimos, por ejemplo: 
      w <- c(2*v, 0, 0, v)
      w 
      # Con la que obtenemos un vector de tamaño 9:  [1]  2  4  6  8 10  0  0  1  2  3  4  5
  # APARTADO 2.2 - Operaciones aritméticas
    # Ejemplo 2.2.1 
      # Las operaciones entre vectores se realizan elemento a elemento de forma que si alguno de los vectores es mas corto que el otro, 
      # se rellenan los valores vacíos
      # Por ejemplo, al crear 2 vectores y operar entre ellos: 
      d <- c(1,2,3)
      d
      e <- c(d, 0, 0, 0, 2*d)
      e
      # Obtenemos: 
      # [1] 1 2 3 
      # [1] 1 2 3 0 0 0 2 4 6
      w <- d + e
      w
      # Y al asignar el resultado de hacer -d+e a w, obtenemos que w es de la forma: [1] 2 4 6 1 2 3 3 6 9
      # Y si en lugar de tener e con la longitud que tiene, hacemos que tenga una longitud menor
      e <- c(d, 0, 0, 2*d)
      e
      # Para que sea de la forma: [1] 1 2 3 0 0 2 4 6
      # Y hacemos la misma operación que antes,  
      w <- d + e
      # Obtenemos un aviso de que la longitud del vector mayor (e) no es múltiplo de la longitud del vector menor (d): 
      # Aviso:
      # In d + e :
      #  longitud de objeto mayor no es múltiplo de la longitud de uno menor
    # Ejemplo 2.2.2
      # También existen las funciones típicas además de las operaciones habituales, por ejemplo: 
      w 
      # [1] 2 4 6 1 2 3 3 6 9
      diff(range(w)))
      # Obtenemos, la diferencia entre el máximo y el mínimo del vector w: [1] 8
      length(w)
      # Obtenemos la longitud del vector w: [1] 9
      sum(w)
      # Obtenemos la suma de los elementos del vector w: [1] 36
      prod(w)
      # Obtenemos el producto de los elementos del vector w: [1] 46656
      w^2
      # Obtenemos el cuadrado de los elementos del vector w: [1]  4 16 36  1  4  9  9 36 81
    # Ejemplo 2.2.3
      # En las ocasiones en las que neceistamos un vector con una sucesión de valores, podemos usar la instruccion seq()
      f <- seq(1,10)
      # Obtenemos los numeros del 1 al 10:  [1]  1  2  3  4  5  6  7  8  9 10
      f <- seq(2, length = 4)
      # Obtenemos los numeros del 2 al 5: [1] 2 3 4 5
      (f <- seq(2, length = 4, by = 0.5))
      # Obtenemos: [1] 2.0 2.5 3.0 3.5
      rep(1 : 3, 2)
      # Obtenemos un vector en el que se repite 2 veces cada uno de los valores del 1 al 3: [1] 1 2 3 1 2 3
      rep(1 : 3, 2, each = 2)
      # Obtenemos un vector en el que se repite 2 veces cada uno de los valores del 1 al 3, 2 veces:  [1] 1 1 2 2 3 3 1 1 2 2 3 3
  # APARTADO 2.3 - Vectores lógicos
    # Ejemplo 2.3.1
      # Si queremos crear un vector con valores booleanos, usamos una instrucción junto a un predicado lógico
      # De forma cada posición i del vector, tiene un valor u otro dependiendo si el elemento i cumple el predicado o no
      logi1 <- f >= 3
      logi1
      # Obtenemos: [1] FALSE FALSE  TRUE  TRUE
      # Pudiendo usar cualquier operador lógico para obtener estos vectores lógicos
  # APARTADO 2.4 - Vectores ausentes ("missing values")
    #Ejempo 2.4.1 
      # Existe el valor NA que se usa para cuando un dato no está disponible o no se conoce
        l <- c(NA, 0.7071068, 0.0000000, NaN, 1.0000000, 0.7071068, 0.0000000)
        l
      # Devuelve un vector de numeros entre los que se encuentra el valor NA - Not Available y NaN - not a number 
      # Para identificar que elementos del vector no están disponibles (NA) y cuales no son numeros (Nan) existen instrucciones específicas
        is.na(l)
        is.nan(l)
      #Que devuvelven, respectivamente: [1]  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE Y [1] FALSE FALSE FALSE  TRUE FALSE FALSE FALSE
#EPÍGRAFE 3: Matrices y "Arrays"
  #Ejemplo 3.1
    # Podemos crear a partir de un vector de elementos una matriz de n filas y m columnas
      w #  [1]  2  4  6  8 10  0  0  1  2  3  4  5
      dim(w) <- c(2,6)
      w
      # Nos devuelve una matriz de 2 filas y 6 columnas cuyos elementos son: 
      #     [,1] [,2] [,3] [,4] [,5] [,6]
      #[1,]    2    6   10    0    4    2
      #[2,]    4    8    0    1    5    3
      # Si ahora quisieramos la matriz traspuesta a la obtenida anteriormente, la podemos obtener de forma idéntica: 
      dim(w) <- c(6,2)
      w
      # Nos devuelve la matriz dada anteriormente pero con 6 filas y 2 columnas: 
      #      [,1] [,2]
      # [1,]    2    0
      # [2,]    4    1
      # [3,]    6    2
      # [4,]    8    3
      # [5,]   10    4
      # [6,]    0    5
      # Si quisieramos la representación de la matriz en una forma más allá de la segunda dimensión, podemos usar la misma instrucción
      # Asignado un nuevo parámetro para que se tome como "el numero de matrices"
      dim(w) <- c(2,3,2)
      w
      # Nos devuelve 2 matrices de 2 filas y 3 columnas:
      # , , 1
      #      [,1] [,2] [,3]
      # [1,]    2    6   10
      # [2,]    4    8    0
      # , , 2
      #      [,1] [,2] [,3]
      # [1,]    0    2    4
      # [2,]    1    3    5
    # Ejemplo 3.2
      # Si quisieramos obtener el elemento en una posicion concreta usamos el operador [x1, x2, ...., xn]
      # Siendo cada una de las xi las coordenadas del elemento. 
      # En el caso anterior, si quisieramos obtener un elemento de la doble matriz tenemos que usar el operador [i, j, k]
      w[2,2,1]
      # Con el que obtenemos el elemento de la segunda fila y segunda columna de la primera matriz: [1] 8 
    # Ejemplo 3.3
      # Siguiendo con el ejemplo anterior, además de poder leer un solo elemento de las matrices, podriamos leer un vector en forma de columna o fila de alguna de las matrices
      w[,2,1] # Nos devuelve la segunda columna de la primera matriz: [1] 6 8
      # Asimismo tambien podemos tomar submatrices de las matrices
      w[, 2, ] # Nos devuelve la segunda columna de las dos matrices:
      #      [,1] [,2]
      # [1,]    6    2
      # [2,]    8    3
    # Ejemplo 3.4
      #
      
      


      
      

      
              
    
    
    

    