module Type.Trout.Client.Auth where

import Prelude
import Type.Trout.Header (class ToHeader)

newtype BasicAuth = BasicAuth
  { username :: String
  , password :: String
  }

instance toHeaderBasicAuth :: ToHeader BasicAuth where
  toHeader (BasicAuth auth) = "Basic " <> auth.username <> ":" <> auth.password

--------------------------------------------------------------------------------

data Auth :: forall k. k -> Type
data Auth auth