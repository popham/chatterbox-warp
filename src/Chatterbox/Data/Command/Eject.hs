module Chatterbox.Data.Command.Eject
( Eject(..)
) where

  import Data.Aeson
  import Control.Applicative ((<$>), (<*>))
  import Data.Text (pack)

  data Eject = Eject
    { conversation :: Int
    , ejectees :: [Int] }
    deriving (Show)

  instance FromJSON Eject where
    parseJSON (Object json) = Eject <$>
      json .: pack "conversationId" <*>
      json .: pack "ejecteeIds"
