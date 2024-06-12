main :: IO ()
main = do
    let lista1 = [1, 2, 3, 4, 5, 6]
    let lista2 = [10, 20, 30, 40, 50, 60]
    
    -- Usar map para incrementar cada número en 1
    let incrementados = map (+1) lista1
    print incrementados  -- Salida: [2, 3, 4, 5, 6, 7]
    
    -- Usar filter para filtrar los números pares
    let pares = filter even incrementados
    print pares  -- Salida: [2, 4, 6]
    
    -- Usar foldr para sumar todos los elementos
    let sumaTotal = foldr (+) 0 pares
    print sumaTotal  -- Salida: 12
    
    -- Usar zipWith para sumar dos listas elemento por elemento
    let combinados = zipWith (+) lista1 lista2
    print combinados  -- Salida: [11, 22, 33, 44, 55, 66]
