module Main
  ( main
  ) where

import           Control.Monad.IO.Class
import           Control.Monad.Logger
import           Data.Text
import           Lib                    (evenOrOdd)

main :: IO ()
main = runStderrLoggingT actions

actions :: MonadIO m => LoggingT m ()
actions = do
  myLog "test 1"
  myLog "test 2"
  myLog "Does this work?"
  (myLog . evenOrOdd) (11 :: Int)

myLog :: (MonadLogger m) => String -> m ()
myLog = logDebugN . pack
