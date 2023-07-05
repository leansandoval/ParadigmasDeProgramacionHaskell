-- 3 - Definir una función que determine si un número es par o impar.

-- Ejemplo: esPar 4 = True
--          esPar 5 = False

esPar :: Int -> Bool
esPar numero = mod numero 2 == 0

main :: IO ()
main = print (esPar 4)

-- Haskell tiene su funcion propia para saber si un numero es par o no, se llama even
-- main = print (even 5)
