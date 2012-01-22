module Chatterbox.Data.Command.Parser.Speak
( Speak(..)
) where

  import Data.Aeson
  import Control.Applicative ((<$>), (<*>))
  import Data.Text (pack)

  data Speak = Speak
    { conversation :: Int
    , message :: String }
    deriving (Show)

  instance FromJSON Speak where
    parseJSON (Object json) = Speak <$>
      json .: pack "conversationId" <*>
      json .: pack "message"
