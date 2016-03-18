module FileParsing where

import Types
import Data.List.Split

-- Parsing a file to two dimentional array
parseFile :: String -> [[String]]
parseFile s = map splitLine $ lines s
-- Splits line to array, by space character
splitLine :: String -> [String]
splitLine = Data.List.Split.splitOn " "
-- Get top element of two dimentional array
getTopElm :: [[alpha]] -> alpha
getTopElm list = head $ head list

initInfo :: [[String]] -> Info
initInfo [[x, y, drones, turns, maxPayload], products] = Info (read x,read y) (read drones) (read turns) (read maxPayload) (map read products)

initWh :: [[String]] -> Wh
initWh [[x,y],items] = Wh (read x, read y) (map read items)

initOrder :: [[String]] -> Order
initOrder [[x,y], ignore, items] = Order (read x, read y) (map read items)

initWhs:: [[String]] -> [Wh]
initWhs [] = []
initWhs x = [(initWh $ take 2 x)] ++ (initWhs $ drop 2 x)

initOrders :: [[String]] -> [Order]
initOrders [] = []
initOrders x = [(initOrder $ take 3 x)] ++ (initOrders $ drop 3 x)

initData :: [[String]] -> Data
initData file = Data (initInfo infoFile) (initWhs whFile) (initOrders ordFile)
  where infoFile = [(head file)] ++ [(head $ drop 2 file)]
  -- allows use drop 3 once for warehouse and order processing
        whOrdFile = drop 3 file
        whNo = read (getTopElm whOrdFile)::Int
        whFile = take (whNo * 2) $ tail whOrdFile
        ordFile = tail $ drop (whNo * 2) $ tail whOrdFile
