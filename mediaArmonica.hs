-- Le vamos a pasar una lista y vamos a retornar su media como double
mediaArmonica :: [Double] -> Double 
mediaArmonica xs = 
    -- Acciones que debemos hacer antes de calcular nada
    let 
        -- Vamos a ignorar todos los elementos que son 0
        sinCeros = filter (/= 0) xs
        -- Vamos a dividir 1 entre cada uno de los elementos no nulos de la lista 
        partidos = map (1/)  sinCeros
        -- Vamos a ir sumando todos los elementos de partidos
        -- fold1 (operación) acumulador listaOriginal
        --  el acumulador es dónde vamos a ir guardando las sumas y posteriormente será el valor de suma
        suma = foldl (+) 0 partidos 
        -- también podríamos usar sum partidos
        -- Almacenamos los elementos que no son 0
        -- Ojo tenemos que castearlo a double porque no podemos dividir entero/doule
        n = fromIntegral (length sinCeros)
    in 
        if n == 0 
            then 0 
            else n/suma
  

quitaEspacios :: String -> [Double]
-- map operación lista ->  aplica esa operación a toda cada elemento de la lista
-- read nos permite hacer que todos los elemenos de la lista sean casteados a un tipo (el de la definición)
-- . básicamente nos permite concatenar funciones 
-- words nos permite crear una lista con los elementos del parámetro
quitaEspacios =  map read . words 
main :: IO()
main = do
    putStrLn "Introduzca una serie de números separados por espacios:"
    input <- getLine 
    let numeros = quitaEspacios input
    putStrLn $ "La media armónica de " ++ show numeros ++ " es: " ++ show (mediaArmonica numeros)