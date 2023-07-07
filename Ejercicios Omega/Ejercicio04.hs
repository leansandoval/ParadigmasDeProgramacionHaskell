-- 4 - Escribir una función que calcule el factorial de un número.

-- Ejemplo: factorial 5 = 120
--          factorial 3 = 6

factorial :: Integer -> Integer
factorial 0 = 1
factorial numero = numero * factorial(numero - 1)


factorialConFoldl :: Integer -> Integer
factorialConFoldl numero = foldl (*) 1 [1 .. numero]

factorialConProduct :: Integer -> Integer
factorialConProduct numero = product [1 .. numero]

{-  Si utilizas la función factorialConFoldl con el número 0, obtendrás el resultado 1. 
Esto se debe a que el rango [1 .. numero] en el caso de 0 será una lista vacía, y la función product 
aplicada a una lista vacía devuelve el valor de identidad para la multiplicación, que es 1. -}

-- Otra resolucion aplicando Currying

restar :: Integer -> Integer -> Integer
restar x y = x - y

decrementarEnUno :: Integer -> Integer
decrementarEnUno = flip restar 1

factorialCurrying :: Integer -> Integer
factorialCurrying 0 = 1
factorialCurrying numero = numero * factorial (decrementarEnUno numero)

numeroDePrueba :: Integer
numeroDePrueba = 5

main :: IO ()
main = print (factorial numeroDePrueba, factorialConFoldl numeroDePrueba, factorialConProduct numeroDePrueba, factorialCurrying numeroDePrueba)

{-  La función flip toma una función de dos argumentos y devuelve una función que 
toma los mismos argumentos pero en orden inverso. 
Al aplicar flip restar 1, estamos creando una función que resta 1 al número proporcionado.  -}
