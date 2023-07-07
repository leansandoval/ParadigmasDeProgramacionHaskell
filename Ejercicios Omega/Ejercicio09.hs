-- 9 - Definir una función que calcule el máximo común divisor de dos números.

-- Ejemplo: mcd 10 5 = 5
--          mcd 5 3 = 1

mcd :: Int -> Int -> Int
mcd x y = if y == 0
          then x
          else mcd y (mod x y)

main :: IO ()
main = print (mcd 10 5, mcd 5 3)
