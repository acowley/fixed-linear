{-# LANGUAGE TypeFamilies, FlexibleInstances, MultiParamTypeClasses #-}
module Data.Vector.Fixed.Linear where
import Data.Vector.Fixed.Internal
import Linear

type instance Dim V2 = S (S Z)
type instance Dim V3 = S (S (S Z))
type instance Dim V4 = S (S (S (S Z)))

instance Vector V2 a where
  construct = Fun V2
  inspect (V2 x y) (Fun f) = f x y

instance Vector V3 a where
  construct = Fun V3
  inspect (V3 x y z) (Fun f) = f x y z

instance Vector V4 a where
  construct = Fun V4
  inspect (V4 x y z w) (Fun f) = f x y z w
