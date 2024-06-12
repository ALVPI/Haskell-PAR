f :: [Int]->[Int]
f [] = []
f (x:xs) = 
    -- Empezamos por zip, lo que hace es concatener las dos listas
    -- De tal manera que hace el primer elemento de la lista con el primero de la cola (de la propia lista)
    -- filter 
    -- aplica un filtro que nos hace quedarnos con solo los pares diferentes
    -- map lo que hace es crear una nueva lista que será el return de la función
    -- quedándose con solo el primer elemento de cada par.
    map (\(c,_)->c)$
    filter (\(a,b)-> a/=b)$
    zip (x:xs) xs       
crearLista :: String -> [Int]
crearLista =  map  read . words 
main :: IO()
main = do  
    putStrLn "Introduzca una cadena de número"
    input <- getLine
    let lista = crearLista input
    putStrLn $ "La lista de elementos introducidos es:" ++ show lista
    putStrLn $ "La lista tras aplica f es :" ++ show (f lista)