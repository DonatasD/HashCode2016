import FileParsing

filename = "/home/don/DEV/HashCode2016-GDGNE/data/test.in"
filename1 = "/home/don/DEV/HashCode2016-GDGNE/data/mother_of_all_warehouses.in"

main1 = do input <- readFile filename
           putStrLn $ show $ initData $ parseFile input
