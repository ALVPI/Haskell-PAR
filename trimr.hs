-- trimr es una función que va a recibir como parámetro una cadena y va a devolver otra
trimr :: String -> String
trimr [] = []
trimr (x:xs)
    -- Si restoCadena es cadena vacía y el primer caracter también, retornaremos restoCadena (cadena vacía)
    | null restoCadena && x == ' ' = restoCadena
    -- Si x no es cadena vacía
    | otherwise = x : restoCadena
-- Con where definimos la variable restoCadena
  where
    restoCadena = trimr xs

main :: IO ()
main = do
    putStrLn "Introduzca una cadena de texto:"
    input <- getLine
    putStrLn $ "La cadena original es: " ++ input ++ "."
    putStrLn $ "La cadena sin espacio al final es: " ++ trimr input ++ "."
