-- 2 - Escribir una función para hallar la potencia de un número

potencia :: Int -> Int -> Int
potencia base exponente
  | exponente < 0   = error "Exponente debe ser no negativo"
  | exponente == 0  = 1
  | otherwise       = base * potencia base (exponente - 1)

main :: IO ()
main = print (potencia 2 0, potencia 2 3)
-- main = print (potencia 2 (-3))