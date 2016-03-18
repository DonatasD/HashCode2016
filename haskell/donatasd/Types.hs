module Types where

data Wh = Wh {wxloc::Integer, wyloc::Integer, store::Storage} deriving (Eq, Ord, Show)
data Order = Order {oxloc::Integer, oyloc::Integer, items::[Item]} deriving (Eq, Ord, Show)
data Info = Info {ixlock::Integer, iylock::Integer, idrones::Integer, iturns:: Integer, imaxPayload::Integer} deriving (Eq, Ord, Show)
data Item = Item {itype::Integer, number::Integer} deriving (Eq, Ord, Show)

type Product = Integer
type Storage = [Integer]
