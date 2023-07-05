-- 12 - Escribir una función que obtenga el enésimo número de la secuencia de Fibonacci.

-- Ejemplo: fibonacci 0 = 0
--          fibonacci 1 = 1
--          fibonacci 5 = 5

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

fibonacciHelper :: Int -> Integer -> Integer -> Integer
fibonacciHelper numero resultadoAnteriorDelAnterior resultadoAnterior =
    if numero == 0
    then resultadoAnteriorDelAnterior
    else fibonacciHelper (numero - 1) resultadoAnterior (resultadoAnteriorDelAnterior + resultadoAnterior)

fibonacciMejorado :: Int -> Integer
fibonacciMejorado numero = fibonacciHelper numero 0 1
 
main :: IO ()
main = print (fibonacci 0, fibonacci 1, fibonacciMejorado 5) 
