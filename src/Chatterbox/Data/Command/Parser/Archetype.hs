module Chatterbox.Data.Command.Parser.Archetype
( invite
, initialize
, speak
, close
, eject
) where

  import Data.ByteString.Lazy.Char8 (pack)

  invite = pack "{\"command\":\"invite\",\"targetConversants\":[2,3,4],\"message\":\"Let us talk.\"}"

  initialize = pack "{\"command\":\"initialize\",\"conversationId\":18}"

  speak = pack "{\"command\":\"speak\",\"conversationId\":18,\"message\":\"Hello?\"}"

  close = pack "{\"command\":\"close\",\"conversationId\":18}"

  eject = pack "{\"command\":\"eject\",\"conversationId\":18,\"ejecteeIds\":[1,3]}"
