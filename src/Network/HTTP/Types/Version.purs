module Network.HTTP.Types.Version 
    ( HttpVersion
    , http09
    , http10
    , http11
    , http20
    , mkHttpVersion
    ) 
    where 

import Prelude 

-- | HTTP Version.
-- Note that the Show instance is intended merely for debugging.
newtype HttpVersion
    = HttpVersion { major :: Int
                  , minor :: Int
                  }

derive instance eqHttpVersion :: Eq HttpVersion
instance showHttpVersion :: Show HttpVersion where
    show (HttpVersion {major, minor}) = "HTTP/" <> show major <> "." <> show minor

-- | HTTP 0.9
http09 :: HttpVersion
http09 = HttpVersion { major: 0, minor: 9 }

-- | HTTP 1.0
http10 :: HttpVersion
http10 = HttpVersion { major: 1, minor: 0 }

-- | HTTP 1.1
http11 :: HttpVersion
http11 = HttpVersion { major: 1, minor: 1 }

-- | HTTP 2.0
http20 :: HttpVersion
http20 = HttpVersion { major: 2, minor: 0 }

mkHttpVersion :: Int -> Int -> HttpVersion
mkHttpVersion major minor = HttpVersion { major, minor }