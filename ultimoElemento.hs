--Defina una función en Haskell, ultimo, 
--que reciba como parámetro una lista no vacía de enteros
--y devuelva su último elemento. Evidentemente está prohibido usar la función predefinida <<last>>

--Función que devuelve el último elemento de una lista 
ultimo :: [Int]->Int
ultimo [x]= x
ultimo (x:xs) = ultimo xs

--Función que pasa el string a una lista de enteros 
crearLista :: String -> [Int]
crearLista = map read . words
--main
main :: IO()

main = do
    putStrLn "Introduzca una lista de números"
    input <- getLine
    let lista = crearLista input
    putStrLn $ "El último elemento de la lista que ha introducido es: " ++ show(ultimo lista)