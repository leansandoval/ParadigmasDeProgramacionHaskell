-- 5 - Implementar una función que invierta una lista.

-- Ejemplo: invertir [1,2,3] = [3,2,1]
--          invertir [5,4,3,2,1] = [1,2,3,4,5]

invertirLista :: [lista] -> [lista]
invertirLista [] = []
invertirLista (cabeza:cola) = invertirLista cola ++ [cabeza]

listaEnteros :: [Integer]
listaEnteros = [1, 2, 3, 4, 5]

listaString :: [String]
listaString = ["Hola", "mundo"]

main :: IO ()
main = print(invertirLista listaEnteros, invertirLista listaString)

{-  Operador ++: Agarra dos listas y las une -}
