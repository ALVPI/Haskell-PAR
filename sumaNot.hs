
{-
Se quiere actuatizar las notas de los alumnos de una asignatura sumando
los resultados obtenidos en el último examen parcial. 
Tanto las notas globales como los resultados del examen se almacenan
en listas de tuplas (nombre, nota), donde nombre es de tipo String y nota es de tipo Double. 
Ambas listas están ordenadas por nombre y es posible que la lista del examen
tenga menos elementos que la de notas (alumnos que no se han presentado), 
pero no puede suceder el caso contrario (alumno presentado al examen que
no esté en el listado de notas).

Crear una función Haskell, sumanot, 
que reciba como parámetros la lista de notas y lista del examen
y devuelva la lista de notas actualizadas. 
Ejemplo: La llamada
sumanot [("Abel", 3.5), ("Inés", 7.8), ("Paco", 6.5), ("Zoe",4.8)] [ ("Abel", 0.3),
("Inés", 1.2), ("Zoe", 2.0) ]
devolvería como resultado la siguiente lista:
[("Abel", 3.8), ("Inés", 9.0), ("Paco", 6.5), ("Zoe", 6.8)]
-}
-- Función sumanot 
sumanot :: [(String, Double)]-> [(String, Double)]-> [(String,Double)]
-- Caso base: si la 1º lista (notas globales esta vacía) no podemos hacer nada 
sumanot  [] _ = []
-- Si no ha hecho el examen, no hay nada que hablar, te quedas con la nota inical
sumanot xs _ = xs
-- Caso recursivo 
sumanot ((nom,val):xs) ((nom1,val1):ys)
    --Si el nombre aparece en la lista de continua y en la del examen sumamos las notas 
    -- y posteriormente volvemos a llamar con el resto de la lista
    | nom == nom1 = (nom, val+val1): sumanot xs ys 
    -- Si no está, metemos en la lista resultado el nombre con la nota (porque no hay nada que actualizar)
    -- Y llamamos de manera recursiva al resto de listas con la siguiente posición
    | otherwise = (nom,val) : sumanot xs ((nom1,val1):ys)
-- Asumiendo que las listas siempre están ordenadas alfabéticamente, y que sus elementos se repiten podríamos utilizar zip
-- Usamos zip porque nos permite trabajar con listas de tuplas, la sintaxis sería 
-- sumanot = zip (\ (a,n) (_,m) -> (a,n+m))
-- o zipWith
--sumanot :: [(String, Double)] -> [(String, Double)] -> [(String, Double)]
--sumanot notas examen = map (\((nom, val), (_, val1)) -> (nom, val + val1)) (zip notas examen)


