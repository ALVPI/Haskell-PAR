import Data.Char(isDigit)
soloDigitos :: String->Bool
--Como ahora vamos a usar filter no necesitamos caso base
--Lo que hacemos es lo siguiente:
--
--length(filter isDigit xs) nos devuelve el número de caráctes que son dígitos de la cadena
--length(xs) nos devuelve la longitud de la lista
--Si ambas cifras son iguales, devuelve true, sino false
soloDigitos xs = length (filter isDigit xs) == length xs


main :: IO()
main = do  
    putStrLn "Introduzca una cadena formada por solo números"
    input <- getLine
    if soloDigitos input
        then putStrLn "La cadena solo está constituida por dígitos"
        else putStrLn "La cadena presenta al menos un elemento que no es un número"