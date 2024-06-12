import System.IO (hFlush, stdout)
import Text.Read (readMaybe)
-- SOLO FUNCIONA PARA ELEMENTOS ENTEROS
-- Vamos a declarar la función que nos va a permitir eliminar elementos
-- Va a recibir como parámetros la lista de enteros, el elemento a eliminar
-- Va a devolver una lista sin todas las repeticiones de ese elementos
eliminar :: [Int]-> Int -> [Int]
-- nombre param1 param2 = operacion 
eliminar lista elemento = filter (/= elemento) lista

--filter operación donde se aplica
-- genera un nueva lista con todos solo los elementos distintos a los que le queremos pasar


-- Nos pasa el string declarado por teclado a una lista de enteros 
-- Nos lo pasa a entero porque lo hemos delacrado nosotros en la declaración de la variable
genLista :: String -> [Int]
genLista = map read . words

-- Función para leer un entero del teclado de manera segura
leerEntero :: IO Int
leerEntero = do
    putStr "Introduzca el elemento que quiere eliminar de la lista: "
    hFlush stdout -- Nos aseguramos de que no podamos meter el input antes de que sala el mensaje 
    input <- getLine
    case readMaybe input of -- Si no nos pasa un entero le damos otra oportunidad
        Just n  -> return n
        Nothing -> do
            putStrLn "Entrada no válida, por favor introduce un número entero."
            leerEntero  -- Intenta de nuevo


main :: IO()
main = do 
    putStrLn "Introduzca una lista de elementos separados por espacios"
    input<- getLine
    let lista = genLista input
    elemento  <- leerEntero
    -- El $ nos permite pasarle a putStrLn varios elementos 
    -- putStrLn ("La lista es" ++ show lista ++ " y ha decidido eliminar " ++ elemento )
    -- show nos castea un elemento a algo imprimible
    putStrLn $ "La lista es " ++ show lista ++ " y ha decidido eliminar " ++ show elemento 
    putStrLn $ "La lista resultado es " ++ show (eliminar lista elemento)