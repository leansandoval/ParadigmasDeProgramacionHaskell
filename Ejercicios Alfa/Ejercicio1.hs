-- 1 - Dado dos números enteros A y B, implemente una función que retorne la división entera de 
-- ambos por el método de las restas sucesivas

divisionEntera :: Int -> Int -> Int
divisionEntera dividendo divisor
  | divisor == 0        = error "Error en la division"
  | dividendo < divisor = 0
  | otherwise           = 1 + divisionEntera (dividendo - divisor) divisor

main :: IO ()
main = print (divisionEntera 15 3, divisionEntera 4 3)

-- main = print (divisionEntera 4 0)