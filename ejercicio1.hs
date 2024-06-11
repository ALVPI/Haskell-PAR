import Data.Char(isDigit)
-- Función soloDigitos que va a recibir una cadena y va a retornar true si está formada por números
soloDigitos :: String -> Bool

soloDigitos [] = False -- Caso base de la función
soloDigitos(x:xs)  -- Caso recursivo
    -- Manera razonable de hacerlo usando el ascii
    -- |  x >= '0' && x <='9' = soloDigitos xs  Si el 1º elemento es un número pasamos el resto 
    -- como parametro a la función (recursividad)
    | isDigit x = soloDigitos xs -- isDigit es una función que comprueba si lo pasado es un num
    | otherwise =  False   -- Si no es un dígito, retornamos false inmediatamente 

--Definimos el main como una función InputOutput
main :: IO()
main = do  --Definimos que va a hacer el main
    putStrLn "Introduzca una cadena formada solo por núemeros" --pedimos una cadena por teclado
    input <- getLine  -- almacenamos esa cadena en input
    if soloDigitos input -- pasamos el input a la función como parámetro 

        then putStrLn "La cadena introducida esta solo formada por números" -- si devuelve true 
        else putStrLn "La cadena tiene al menos un caracter que no es un número" -- si devuelve false
