-- trimr es una función que va a recibir como parámetro una cadena y va a devolver otra
trimr :: String -> String
-- foldr coge un elemento de la lista y aplica una función 
-- acumulador es donde vamos a ir introduciendo los caracteres que no son ' '
-- Valor inicial es []
-- el filtro solo se va a aplicar a x 
-- if x == ' ' && null acumulador then acumulador nos asegura que no metemos espacios en el acumulador
-- Si x es ' ' y acumulador es [] entonces retornamos [] porque hemos llegado al final de la lista
-- Si no concatenamos x a acumulador al inicio
trimr = foldr (\x acumulador -> if x == ' ' && null acumulador then acumulador else x : acumulador) []

main :: IO ()
main = do
    putStrLn "Introduzca una cadena de texto:"
    input <- getLine
    putStrLn $ "La cadena original es: " ++ input ++ "."
    putStrLn $ "La cadena sin espacio al final es: " ++ trimr input ++ "."
