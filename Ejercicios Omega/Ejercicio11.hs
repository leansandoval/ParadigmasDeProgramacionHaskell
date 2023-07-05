-- 11 - Definir una función que encuentre el elemento mínimo en una lista.

buscarMinimo :: Ord elemento => [elemento] -> elemento
buscarMinimo [] = error "La lista esta vacia"
buscarMinimo [unicoElemento] = unicoElemento
buscarMinimo (posibleMinimo:restoDeLaLista) = min posibleMinimo (buscarMinimo restoDeLaLista)

listaEnteros :: [Int]
listaEnteros = [10, 15, 20, 5, 30, 40]

listaDeUnUnicoElemento :: [Int]
listaDeUnUnicoElemento = [10]

listaVacia :: [Int]
listaVacia = []

main :: IO ()
main = print (buscarMinimo listaEnteros, buscarMinimo listaDeUnUnicoElemento, buscarMinimo listaVacia)