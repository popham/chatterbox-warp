module Chatterbox.Data.Command.Invite
( Invite(..)
) where

  import Data.Aeson
  import Control.Applicative ((<$>), (<*>))
  import Data.Text (pack)

  data Invite = Invite
    { targets :: [Int]
    , message :: String }
    deriving (Show)

  instance FromJSON Invite where
    parseJSON (Object json) = Invite <$>
      json .: pack "targetConversants" <*>
      json .: pack "message"
