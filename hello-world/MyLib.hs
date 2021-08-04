{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
module MyLib (someFunc) where

import Reflex.Dom
import Control.Lens

data MyData = MyData
  { _myData_foo :: Int
  , _myData_bar :: Bool
  }
  deriving (Show)

makeLenses ''MyData

someFunc :: IO ()
someFunc = do
  putStrLn "someFunc"
  let s = MyData 1 True & myData_foo %~ (+ 1)
  print s

  mainWidget $ do
    el "h2" $ text "Working reflex"
    display =<< count =<< button "test"
