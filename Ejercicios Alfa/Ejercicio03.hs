-- 3 - Definir una función menor que devuelve el menor de sus dos argumentos enteros

menor :: Int -> Int -> Int
menor x y =
    if x > y
    then y
    else x

main :: IO ()
main = print(menor 15 1, menor 5 10, menor 5 (-10))

-- Haskell tiene una funcion propia para sacar el menor llamada min
