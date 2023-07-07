-- 2 - Implementar una función que calcule el área de un círculo dado su radio.

-- Ejemplo: areaCirculo 3 = 28.274333882308138
--          areaCirculo 5 = 78.53981633974483

areaCirculo :: Double -> Double
areaCirculo radio = pi * (radio * radio)

main :: IO ()
main = print (areaCirculo 5)
