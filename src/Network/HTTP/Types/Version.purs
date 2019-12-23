module Network.HTTP.Types.Version where 

import Prelude 

-- | HTTP Version.
-- Note that the Show instance is intended merely for debugging.
newtype HttpVersion
    = HttpVersion { major :: Int
                  , minor :: Int
                  }

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