-- 8 - Implementar una función que obtenga los elementos en posiciones pares de una lista.

listaDePosicionesPares :: [lista] -> [lista]
listaDePosicionesPares [] = []
listaDePosicionesPares [posicionPar] = [posicionPar]
listaDePosicionesPares (posicionPar:_:restoDeLaLista) = posicionPar : listaDePosicionesPares restoDeLaLista

listaEnteros :: [Integer]
listaEnteros = [1, 2, 3, 4, 5, 6, 7, 8, 9]

main :: IO ()
main = print (listaDePosicionesPares listaEnteros)
