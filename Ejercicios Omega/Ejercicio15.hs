-- 15 - Implementar una función que obtenga el producto de todos los elementos de una lista.

{-  productoDeElementos :: [Num] -> Num

La clase de tipo Num no se puede aplicar directamente a una lista como [Num]. 
La clase Num es una clase de tipos polimórfica que representa aquellos tipos que 
son numéricos, como Int, Float, Double, etc. 
No es una clase que se pueda aplicar directamente a listas.  -}

productoDeElementos :: Num numero => [numero] -> numero
productoDeElementos [] = 0
productoDeElementos lista = foldl(*) 1 lista

listaEnteros :: [Integer]
listaEnteros = [1, 2, 3, 2, 1, 3]

listaFlotantes :: [Double]
listaFlotantes = [1.0, 2.0, 3.0, 2.0, 1.0, 3.0]

main :: IO ()
main = print (productoDeElementos listaEnteros, productoDeElementos listaFlotantes)