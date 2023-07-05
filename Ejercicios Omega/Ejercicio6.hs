-- 6 - Definir una función que determine si una lista está ordenada de forma ascendente.

estaOrdenadaAscendente :: Ord lista => [lista] -> Bool
estaOrdenadaAscendente [] = True
estaOrdenadaAscendente [_] = True
estaOrdenadaAscendente (elemento:elementoSiguiente:restoDeLaLista) = elemento <= elementoSiguiente && estaOrdenadaAscendente (elementoSiguiente:restoDeLaLista)

listaEnteros :: [Integer]
listaEnteros = [1, 2, 3, 4, 5, 6]

listaFlotantes :: [Double]
listaFlotantes = [1.4, 15.10, 10.2]

listaCaracteres :: [Char]
listaCaracteres = ['a', 'b', 'c', 'd', 'e']

main :: IO ()
main = print (estaOrdenadaAscendente listaEnteros, estaOrdenadaAscendente listaFlotantes, estaOrdenadaAscendente listaCaracteres)

{-  La restricción de clase Ord a se utiliza en lugar de [lista] en la firma de tipo para indicar que los elementos 
de la lista deben ser ordenables. 

La diferencia entre los operadores => y -> en Haskell es la siguiente:

=>: Este operador se utiliza en las firmas de tipo para especificar restricciones de clase. 

->: Este operador se utiliza para indicar el tipo de una función y su aridad (número de argumentos). 

En resumen, => se utiliza para indicar restricciones de clase en las firmas de tipo, mientras que -> se utiliza 
para especificar el tipo de una función y su aridad.    -}
