module Chatterbox.Data.Command.Parser.Close
( Close(..)
) where

  import Data.Aeson
  import Control.Applicative ((<$>), (<*>))
  import Data.Text (pack)

  data Close = Close
    { conversation :: Int }
    deriving (Show)

  instance FromJSON Initialize where
    parseJSON (Object json) = Close <$>
      json .: pack "conversationId"
