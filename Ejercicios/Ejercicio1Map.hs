import Data.Char (isDigit)  -- Importar la función isDigit desde Data.Char
soloDigitos :: String -> Bool
-- map es un for que va a pasar por todos los elementos de la cadena
-- $ lo que hace es enlazar el resultado de isDigit al and
-- es decir, va a pasar todos los resultados de isDigit (true o false)
-- al and que lo que hará será aplicar la operación lógica and entre todos 
-- si todos son true devolverá true si al menos uno es false, pues retornará false.
-- la manera lógica de hacer esto es utilizando all
-- quedaría de la siguiente manera: soloDigitos cadena = all isDigit cadena
soloDigitos cadena = and $ map isDigit cadena
main :: IO()
main = do
    putStrLn "Introduzca una cadena que solo contenga número"
    cadena <-getLine
    let resultado = soloDigitos cadena
    if resultado
        then putStrLn "La cadena solo contiene números"
        else putStrLn "La cadena contiene al menos un caracter que no es un número"