import GHC.IO.Handle (hPutStr)
import System.IO (hFlush, stdout)
import Text.Read (readMaybe)
import GHC.RTS.Flags (ProfFlags(descrSelector))
-- Registro en Haskell
-- Con esto decir que el tipo de dato Alumno va a tener nombre (String) y nota (Double)
data Alumno = Alumno { nombre :: String , nota :: Double}


-- printeo del contenido del alumno 
printPersona :: Alumno -> String
printPersona (Alumno  nombre nota) =
    "Nombre: " ++ nombre ++ " nota " ++ show nota
-- Casteo la nota a double
casteoDouble :: String -> Maybe Double 
casteoDouble str = readMaybe str
--Main

main :: IO()
main = do 
    putStr "Introduzca el nombre del alumno: "
    hFlush stdout 
    nombre <- getLine
    putStr "Introduzca su nota:"
    hFlush stdout
    input <- getLine
   
    case casteoDouble input of 
        Nothing -> putStrLn "Error al introducir la nota"
        Just nota -> do 
            let alumno = Alumno nombre nota
            -- Mostrar la descripción de la persona
            putStrLn $ printPersona alumno
