--          (Si queremos usar isDigit)
--          import Data.Char (isDigit)  -- Importar la función isDigit desde Data.Char
--Vamos a generar una función que de manera recursiva vaya pasando por toda la cadena hasta llegar a lista vacía
soloDigitos :: String -> Bool
--Recursividad funciona igual que en java hay que establecer un caso base y uno recursivo
--Caso base:
soloDigitos "" = True
--Caso recursivo
--Vamos a tratar el string como una lista de chars 
-- c es el primer caracter
-- cs el resto de caracteres
soloDigitos (c:cs)
    --Manera alternativa de hacerlo es invocando la funcion isDigit
    --isDigic c = soloDigitos cs
    | c >= '0' && c<='9' = soloDigitos cs
    | otherwise = False

    
main :: IO ()
main = do
    --recogemos la cadena de texto por teclado
    putStrLn "Introduzca la cadena de caracteres que desee"
    cadena <- getLine --Almacenamos lo introducido por el usuario en cadena
    let resultado = soloDigitos cadena
    if resultado
        then putStrLn "La cadena solo está formada por digitos"
        else putStr "La cadena contiene al menos un caracter que no es un número"
