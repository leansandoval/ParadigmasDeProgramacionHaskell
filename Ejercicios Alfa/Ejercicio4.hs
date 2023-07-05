-- 4 - Definir una función maximoDeTres que devuelve el máximo de sus argumentos enteros

mayor :: Integer -> Integer -> Integer
mayor x y =
    if x > y
    then x
    else y

maximoDeTres :: Integer -> Integer -> Integer -> Integer
maximoDeTres x y z = mayor z (mayor x y)

main :: IO ()
main = print(maximoDeTres 5 10 7)
-- main = print(maximoDeTres 5 1 7)
-- main = print(maximoDeTres 50 10 7)

-- Haskell tiene una funcion propia para sacar el mayor llamada max