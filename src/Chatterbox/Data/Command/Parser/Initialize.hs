module Chatterbox.Data.Command.Parser.Initialize
( Initialize(..)
) where

  import Data.Aeson
  import Control.Applicative ((<$>), (<*>))
  import Data.Text (pack)

  data Initialize = Initialize
    { conversation :: Int }
    deriving (Show)

  instance FromJSON Initialize where
    parseJSON (Object json) = Initialize <$>
      json .: pack "conversationId"
