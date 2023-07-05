invertirLista :: [lista] -> [lista]
invertirLista [] = []
invertirLista (cabeza:cola) = invertirLista cola ++ [cabeza]

-- 13 - Implementar una función que verifique si una cadena de texto es un palíndromo.

esPalindromo :: String -> Bool
esPalindromo texto = texto == invertirLista texto

esPalindromoProfe :: String -> Bool
esPalindromoProfe [] = True
esPalindromoProfe [_] = True
esPalindromoProfe (x:xs) = x == last xs && esPalindromoProfe (init xs)

-- Resolucion del profe
main :: IO ()
main = print (esPalindromo "Hola", esPalindromoProfe "reconocer")