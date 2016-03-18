import Data.List.Split
import Types

filename = "/home/don/DEV/HashCode2016-GDGNE/mother_of_all_warehouses.in"

splitLine :: String -> [String]
splitLine = Data.List.Split.splitOn " "

parseInfo :: [[String]] -> Info
parseInfo s = initInfo $ head s

initInfo :: [String] -> Info
initInfo [x, y, drones, turns, maxPayload] = Info (read x) (read y) (read drones) (read turns) (read maxPayload)

main1 = do input <- readFile filename
           putStrLn $ show $ parseInfo $ map splitLine $ lines input
