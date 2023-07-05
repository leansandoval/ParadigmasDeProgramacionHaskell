-- 1 - Escribir una función que sume dos números enteros.

-- Ejemplo: suma 3 4 = 7
--          suma 5 2 = 7

suma :: Int -> Int -> Int
suma x y = x + y

main :: IO ()
main = print (suma 3 4)