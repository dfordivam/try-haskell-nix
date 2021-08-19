module Main where


import qualified Data.Vector.Generic as G
import qualified Data.Vector.Generic.Mutable as M
import qualified Data.Vector.Unboxed as U

main = do
  vectorMove

vectorMove = do
  let v = G.fromList [0,1,2] :: U.Vector Int
      len = 2
      srcOff = 1
      dstOff = 0
      fin = G.modify (\ mv -> M.move (M.slice dstOff len mv) (M.slice srcOff len mv)) v
  print v
  print fin
  if (fin /= G.fromList [1, 2, 2])
    then putStrLn "failed"
    else putStrLn "pass"

 
