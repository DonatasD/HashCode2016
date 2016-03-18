module Types where

-- Warehouse: indicates it's location and products it contains
data Wh = Wh {whCoord::Coord, whStorage::[Item]} deriving (Eq, Ord, Show)
-- Order: indicates it's location and number of items to be delivered of certain product
data Order = Order {oCoord::Coord, oItems::[Item]} deriving (Eq, Ord, Show)
-- Info: indicates bounds for drones to fly, number of drones, maximum number
-- of turns, maximum weight each drone can carry and product details (weight)
data Info = Info {iArea::Area, iDrones::Integer, iTurns:: Integer, iMaxPayload::Integer, iProducts::[Product]} deriving (Eq, Ord, Show)
-- Data: combines Info, order and warehouse information. Initial object for given
-- data files.
data Data = Data {dInfo::Info, dWhs::[Wh], dOrders::[Order]} deriving (Eq, Ord, Show)
-- Item specification in weight
type Product = Integer
-- Number of item that is meant to be delivered or is stored in warehouse
type Item = Integer
-- Bounds (maxX, maxY), minX and minxY are assumed to be 0
type Area = (Integer, Integer)
-- Location (x,y)
type Coord = (Integer, Integer)
