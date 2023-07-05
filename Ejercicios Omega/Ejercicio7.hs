-- 7 - Escribir una función que cuente la cantidad de elementos en una lista.

cantidadDeElementos :: [lista] -> Int
cantidadDeElementos [] = 0
cantidadDeElementos (_:cola) = 1 + cantidadDeElementos cola

listaEnteros :: [Integer]
listaEnteros = [1, 10, 100, 100]

listaCaracteres :: [Char]
listaCaracteres = ['a', 'b', 'C', 'd', 'E']

main :: IO ()
main = print(cantidadDeElementos listaEnteros, cantidadDeElementos listaCaracteres)