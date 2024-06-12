import System.IO (hFlush, stdout)
import Data.List.Split (splitOn)
import Text.Read (readMaybe)
import Control.Monad (when)

-- Función para convertir una cadena de texto a una lista de listas de enteros
convertirEntrada :: String -> Maybe [[Int]]
-- Vamos por partes de derecha a izquierda 
-- splitOn "," input divide la entrada del usuario por las comas en subcadenas
-- mapM readMaybe .words
--      .words  1º divide cada subcadena por espacios
--      mapM readMaybe intenca combertir cada elemento de la la sublista a un enetero
--      y crea una lista 
-- mapM (mapM readMaybe .words ) (splitOn "," input) crea una lista que aglutina las sublistas

convertirEntrada input = mapM (mapM readMaybe .words ) (splitOn "," input)

numSubListas :: [[Int]]-> Int
numSubListas = map length 
main :: IO()

main = do 
    putStr "Introduzca una matriz"
    putStrLn " en forma de cadena cuyos elementos estén separados por espacios y las filas por ,"
    input <-getLine
    let lista  = convertirEntrada input
    let nsub = numSubListas lista
    putStr $  show nsub