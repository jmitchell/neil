
module Paper.Util.IO where

import System.Directory
import System.IO

readFile' x = do
    e <- doesFileExist x
    putStr $ if not e then "Missing file: " ++ show x else ""
    h <- openFile x ReadMode
    s <- hGetContents h
    seq (length s) $ do
        hClose h
        return s
