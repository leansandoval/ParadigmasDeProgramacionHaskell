--  Esto es un comentario de linea

{-  Esto es un
    comentario
    por bloques  -}

------------------------------- Introduccion -------------------------------

square :: Integer -> Integer
square x = x * x

-- Obtenemos el cuadrado del numero 42

-- main = print (square 42)

------------------------------- Uso de listas -------------------------------

-- Se declara una lista con numeros enteros nombreLista = [valores, ...]
-- Es una lista, no un array

lista :: [Integer]
lista = [2, 3, 5, 7, 11]

total :: Integer
total = sum (map (3*) lista)

-- main = print total

-- 3* Es equivalente a

multiplicaPorTres :: Integer -> Integer
multiplicaPorTres x = x * 3

-- Luego paso esta funcion en el mapa de la siguiente manera
-- total = sum (map multiplicaPorTres lista)

------------------------------------ Map ------------------------------------

-- Es una funcion que que agarra los elementos de a y los transforma a elementos de b

-- Con esto pregunto cual es el propotipo de map en este caso:
-- :t map
-- map :: forall a b . (a -> b) -> [a] -> [b]

-- Desglosado
-- map (3*) lista
-- [6, 9, 15, 21, 33]

-- sum va a realizar la sumatoria de todos los elementos de la lista

------------------------------ Funciones propias ------------------------------

sumar :: Integer -> Integer -> Integer
sumar x y = x + y

-- main = print (sumar 10 15)

{-
1 - sumar :: Integer -> Integer -> Integer: Es la declaracion de la funcion.
Sirve para restringir los tipos de datos que acepta.
El primer Integer es el primer operando (x), luego el (y) y el ultimo es el de retorno.

2 - sumar x y = x + y: Es la definicion de la funcion. Estos se llaman parametros formales.

3 - sumar 10 15: Estoy invocando una funcion, llamada sumar y a la derecha son los parametros.
Estos parametros se llaman parametros reales.

Si se elimina la linea de declaracion, el programa se va a ejecutar de todas formas.
Si hacemos :t sumar te va a mostrar el tipo de dato de la funcion que infiere por si mismo Haskell.
-}  

-------------------------------- Recursividad --------------------------------

-- Esta es una funcion definida en partes, una funcion recursiva.
-- sumatoria 0 = 0: Es la condicion de corte
-- sumatoria(n - 1): Reitero la funcion con un problema mas chico hasta que converja hasta la condicion de corte

sumatoria :: Int -> Int
sumatoria 0 = 0
sumatoria numero = numero + sumatoria(numero - 1)

-- main = print (sumatoria 10) 

-- Si realizo sumatoria de 0, directamente va a entrar a la parte de la funcion sumatoria 0 = 0

-- Es importante el orden ya que si pongo sumatoria 0 = 0 despues, jamas va a cortar la funcion recursiva

{-  Asi es como lo resuelve Haskell:

5 + sumatoria (5 - 1)
5 + ((5 - 1) + sumatoria((5 - 1) - 1))
5 + (4 + sumatoria(4 - 1))
5 + ... + 0
15

-}

------------------------------ Condicionales ------------------------------

-- even es una funcion que devuelve un booleano si es un numero par
-- then es la parte del verdadero del if, else la parte false
-- Si es un numero par, lo divide por 2, caso contrario lo triplica y le suma 1

hailstone :: Int -> Int
hailstone numero = if even numero
                   then numero `div` 2
                   else 3 * numero + 1

-- main = print (map hailstone [5, 4, 3, 9, 17, 36]) 

-- Para saber si los numeros eran par o impar sin usar hailstone podriamos hacer
-- main = print (map even [5, 4, 3, 9, 17, 36])

-- Otro ejemplo de condicional

-- `div`: Esas comillas `` indica que quiero colocar una funcion que es prefija a infija
-- Como seria div 4 2 a 4 `div` 2

pepe :: Integral a => a -> String
pepe x =  if x `mod` 2 == 0
          then "Hola"
          else if x `mod` 3 == 0
            then "Chau"
            else "Oops"

-- main = print (pepe 7)

---------------------------------- Fibonacci ----------------------------------

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)
-- main = print (fibonacci 10)

---------------------------- Funciones sobre listas ----------------------------

-- ¿Que hace este codigo?

misterio :: [Int] -> Int
misterio [] = 0
misterio (x:xs) = 1 + misterio xs

-- main = print (misterio [1, 2, 3, 4, 5])

-- Devuelve la cantidad de elementos que devuelve una lista

-- (x:xs) = Parte una lista en dos parte, una llamada cabeza, que contiene el primer elemento y la segunda parte contiene la cola, o sea todos los elementos siguientes.
-- Para el primer caso seria Cabeza: [1], Cola: [2, 3, 4, 5]
-- Entonces la funcion va a hacer
-- 1 + misterio [2, 3, 4, 5]
-- 1 + (1 + misterio [3, 4, 5])
-- 1 + (1 + (1 + misterio [4, 5]))
-- 1 + (1 + (1 + (1 + misterio [5])))
-- 1 + (1 + (1 + (1 + (1 + misterio []))))
-- 1 + (1 + (1 + (1 + (1 + 0))))

-- lista = [1, 2, 3, 4, 3, 2, 10]

-- Devuelve el primer elemento de la lista
-- main = print (head lista)

-- Devuelve los demas elementos de la lista
-- main = print (tail list)

-- Devuelve una tupla
-- pipo (x:xs) = (x, xs)
-- main = print (pipo lista)

-- Devuelve una tupla con el primer elemento y el segundo separados de la cola
-- pipo (x, y, xs) = (x, y, xs)
-- main = print (pipo lista)

-- Devuelve el ultimo de la lista
-- main = print (last lista)

-- Devuelve la parte inicial de la lista, sacando el ultimo
-- main = print (init lista)

-- ¿Y este otro?

misterioDos :: [Int] -> [Int]
misterioDos [] = []
misterioDos (x:xs) = (x * x) : (misterioDos xs)

-- main = print (misterioDos [1, 2, 3, 4, 5])

-- Devuelve una lista con el cuadrado de los elementos originales

-- La cabeza tiene el cuadrado de si misma y luego junta la sublista con la cabeza
-- 1 * 1 : 2 * 2 : 3 * 3 : 4 * 4 : 5 * 5 : []

-- Contar elementos pares de una lista

contar :: Int -> Int
contar x = if x `mod` 2 == 0
           then 1
           else 0

contarPares :: [Int] -> Int
contarPares [] = 0
contarPares (x:xs) = (contar x) + contarPares xs

-- main = print (contarPares[1, 2, 3, 4, 5, 6]) 

-- Para la parte de la cabeza de la lista, se llama a la funcion contar, si la cabeza es par devuelve 1, si no 0, y luego sigue trabajando con la sublista de la misma manera

-- Otra forma con mapa:
-- main = print(sum (map contar [1, 2, 3, 4, 5, 6]))

-- ¿Como hacemos para contarlos?

{-  contar :: Int -> Int
contar x = if x `mod` 2 == 0
  then x
  else 0

contarPares :: [Int] -> Int
contarPares [] = 0
contarPares (x:xs) = (contar x) + contarPares xs

main = print (contarPares[1, 2, 3, 4, 5, 6])  -}

------------------------------------------- Contar notables -------------------------------------------

-- Se utiliza esta vez una funcion como parametro (funcionParametro)
-- En vez del ejemplo anterior que encapsulabamos el metodo contar, de esta forma se puede enviar la funcion que querramos

notable :: Int -> Int
notable x = if x `mod` 3 == 0
            then 1
            else 0

contarNotables :: (Int -> Int) -> [Int] -> Int
contarNotables funcionParametro [] = 0
contarNotables funcionParametro (x:xs) = (funcionParametro x) + contarNotables funcionParametro xs

-- main = print (contarNotables notable [1, 2, 3, 4, 5, 6])

----------------------------- Zip: Combina dos listas en una lista de tuplas -----------------------------

numeros1 :: [Integer]
numeros1 = [1, 2, 3, 4]

numeros2 :: [Integer]
numeros2 = [10, 20, 30, 40]

-- main = print (zip numeros1 numeros2)
-- Resultado: [(1,10),(2,20),(3,30),(4,40)]

-- Si una es mas corta que la otra, la que se queda sin pareja no esta
-- numeros1 = [1, 2, 3]
-- numeros2 = [10, 20, 30, 40]
-- main = print (zip numeros1 numeros2)
-- Resultado: [(1,10),(2,20),(3,30)]

-- Aca tengo una lista expresada en forma de comprension en vez de extension
-- numeros1 = [1..4]
-- Es igual numeros1 = [1, 2, 3, 4]

-- Si el fin es mas chico que el inicio
-- numeros1 = [6..-10]
-- numeros2 = [10, 20, 30, 40]
-- main = print (zip numeros1 numeros2)
-- El resultado da una lista vacia []

-- numeros1 = reverse [(-10)..6]
-- numeros2 = [10, 20, 30, 40]
-- main = print (zip numeros1 numeros2)
-- Resultado: [(6,10),(5,20),(4,30),(3,40)]

-- numeros1 = [1..4]
-- numeros2 = [10, 20 .. 40]
-- Reconoce que numeros2 va a de 10 en 10

--------------------------------------------------- Ejemplo practico ---------------------------------------------------

-- Supongamos que tenemos las notas del primer parcial, y del trabajo practico. Queremos conocer el mayor promedio del curso.

notasPrimerParcial :: [Double]
notasPrimerParcial = [4, 8, 7, 9, 2]

notasTrabajoPractico :: [Double]
notasTrabajoPractico = [5, 8, 9, 10, 6]

promedio :: Fractional a => (a, a) -> a
promedio (x, y) = (x + y) / 2

promedios :: [Double]
promedios = map promedio (zip notasPrimerParcial notasTrabajoPractico)

-- Maximun devuelve el valor maximo de la lista

-- main = print (maximum promedios)

------------------------- Fold (Foldl / Foldr): Combina los elementos de una lista en un solo valor -------------------------

-- En este caso realiza la siguiente operacion (((2^1)^2)^3) = 64
-- La diferencia con foldl y foldr es si empieza de izquierda a derecha o derecha a izquierda
-- Es una especie de recursion

numeros :: [Integer]
numeros = [1, 2, 3]

-- main = print (foldl (^) 2 numeros)

-- Esto es lo mismo que sumar todos los elementos
-- main = print (foldl (+) 0 numeros)

-- Esto es lo mismo que multiplicar todos los elementos
-- main = print (foldl (*) 1 numeros)

-------------------------------------- Filter: filtra una lista por una condicion dada --------------------------------------

{-  numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
main = print (filter even numeros)  -}

-- Filtra los numeros pares, en este lenguaje, filter es con lo que yo me quiero quedar.

-- Una tupla no necesariamente son solo 2 conjuntos de valores
-- Puede ser (10, 20, 30)
t :: (Integer, Integer)
t = (10 , 20)

-- Estas funciones son solo para dos tuplas, aunque el lenguaje soporta hasta n elementos
-- main = print (fst t)
-- main = print (snd t)

----------------------------------------------------- Pattern Matching -----------------------------------------------------

{-  Es una tecnica que permite descomponer y comparar patrones de datos estructurados. 
Se utilza para realizar diferentes acciones o tomar decisiones segun los patrones encontrados en los valores de entrada. 
Es el equivalente al polimorfismo  -}

quitaTres :: [elemento] -> [elemento]
quitaTres (_:_:_:xs)  = xs
quitaTres _           = []

-- main = print (quitaTres [1, 2, 3, 4, 5])
-- En este caso, el patron en el que encaja es en este quitaTres (_:_:_:xs) = xs

-- main = print (quitaTres (quitaTres [1, 2, 3, 4, 5, 6, 7, 8]))
-- Aca saco 6, los primeros 3 y despues los otros tres que quedaron primeros

-- main = print (quitaTres [1, 2])
-- En este caso, como es menor a 3 elementos entra por el patron quitaTres _ = []
-- quitaTres []

------------------------------------------------ Dos operadores notables ------------------------------------------------

-- El operador ++ sirve para concatenar dos listas
-- El operador :, en cambio, sirve para agregar elementos antes de las listas

x :: Integer
x = 1

xs :: [Integer]
xs = [2, 3]

y :: Integer
y = 9

ys :: [Integer]
ys = [8, 7]

{-
x:xs    -- Valido
x++xs   -- Invalido

xs:ys   -- Invalido
xs++ys  -- Valido
-}

-- main = print (x:xs)
-- main = print (xs++ys)

-- main = print x:y:[]

---------------------------------------------- Ejercicios ----------------------------------------------

-- 1 - Hacer funciones para manejo de Cola (enqueue / dequeue)

enqueue :: a -> [a] -> [a]
enqueue x xs = xs ++ [x]

-- main = print (enqueue 9 [1, 2, 3])
-- main = print (enqueue 4 [])
{-  Se tiene que agregar un elemento atras, pero para agregar atras no puedo usar : por que 
esto xs:x fallaria, el prototipo es cabeza y cola, no cola y cabeza.  -}

dequeue :: [Int] -> (Int, [Int])
dequeue [] = error "Cola vacia"
dequeue (x:xs) = (x, xs)
-- Esta ultima regla es como una excepcion, simplementa para capturar el caso de error

-- main = print (dequeue [1, 2, 3, 4])
-- main = print (dequeue [])

-- 2 - Hacer funciones para manejo de Pila (push / pop)

push :: a -> [a] -> [a]
push x xs = x:xs

-- main = print (push 9 [1, 2, 3])
-- main = print (push 3 [])

pop :: [Int] -> (Int, [Int])
pop [] = error "Pila vacia"
pop (x:xs) = (x, xs)

-- main = print (pop [1, 2, 3, 4])
-- main = print (pop [])

------------------------------------------------ Currying ------------------------------------------------

{-  Es el proceso de transformar un funcion de multiples argumentos en una secuancia de funciones que toman un solo argumento. 
Esto permite la aplicacion parcial de argumentos y la creacion de funciones mas genericas y flexibles  -}

function :: Int -> Int -> Int
function x y = x + y

fun :: Int -> Int
fun = function 3
-- Cuando no se pone parametros, son los paremetros que le falta al otro.

-- main = print (fun 2)

-- Un ejemplo practico

incrementar :: Integer -> Integer
incrementar = sumar 1
-- Sumar necesita 2 parametros, pero solo le mando 1, el segundo parametro es el que viene del otro lado (10)

-- main = print (incrementar 10)