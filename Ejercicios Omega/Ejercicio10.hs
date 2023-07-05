-- 10 - Implementar una función que calcule la suma de los dígitos de un número entero.

-- Ejemplo: sumaDigitos 123 = 6
--          sumaDigitos 12345 = 15

sumaDigitos :: Int -> Int
sumaDigitos 0 = 0
sumaDigitos numero = mod numero 10 + sumaDigitos (div numero 10)

main :: IO ()
main = print (sumaDigitos 123, sumaDigitos 12345)

{-  En la primera entro con 123, me quedo con el 3 (mod numero 10) y 
luego invoco de nuevo pero con lo restante (sumaDigitos(12)). 
Luego en la segunda llamada me quedo con el 2 y luego invoco a sumaDigitos(1)  -}
