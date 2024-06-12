import System.IO (hFlush, stdout, nativeNewline)
import Text.Read (readMaybe)

leerEntero :: IO Int
leerEntero = do 
    putStr "Introduzca un número por favor: "
    hFlush stdout 
    input <- getLine
    case readMaybe input of 
-- readMaybe input intenta convertir la cadena input a un número entero.
-- El resultado es de tipo Maybe Int.
        Just n -> return n
        Nothing -> do 
            putStrLn "No es un enetero"
            leerEntero 
-- Vamos a crear una lista que guarda cada una de las cifras del número 
crearLista :: Int -> [Int]
-- si el número es 0 retornamos lista vacía 
crearLista 0 = []
-- Si no lo que hacemos es lo siguiente 
-- Llamamos a la función pasándole el resutlado de dividir el número entre 10
-- vamos guardando los restos de dividir entre 10 en la lista resultado 
crearLista num = crearLista (num `div` 10 ) ++ [num `mod` 10]

--Vamos a comprobar si e número es flipante o no 
flipante :: Int -> Bool
-- llamamos a la función flipante con el número
-- Esta función retornará true siempre y cuando la suma del cubo de los elementos del número
-- sea exactamente el número  
flipante n = n == sum (map (^3) (crearLista n))
main :: IO()
main = do
    input <- leerEntero
    if flipante input
        then putStrLn $ "El número introducido "++ show input ++ " es flipante"
        else putStrLn $ "El número introducido "++ show input ++ " no es flipante"