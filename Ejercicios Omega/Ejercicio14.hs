-- 14 - Definir una función que elimine los duplicados de una lista.

-- Ejemplo: eliminarDuplicados [1,2,3,1,2] = [1,2,3]
--          eliminarDuplicados [5,4,3,2,1] = [5,4,3,2,1]

eliminarDuplicados :: [Integer] -> [Integer]
eliminarDuplicados [] = []
eliminarDuplicados [elemento] = [elemento]
eliminarDuplicados (elementoABuscar:restoDeLaLista) =
  if elem elementoABuscar restoDeLaLista
    then eliminarDuplicados restoDeLaLista
  else elementoABuscar:eliminarDuplicados restoDeLaLista

listaInteger :: [Integer]
listaInteger = [1, 2, 3, 2, 1, 3]

main :: IO ()
main = print (eliminarDuplicados listaInteger)

{-  La funcion elem busca el valor en la lista. 
Si lo encontro llamo de nuevo a la funcion y ya no importa si lo pierdo. 
El en el caso del else, o sea que no lo encuentra, lo necesito. 
Entonces volvemos a pegarlo en la lista.  -}
