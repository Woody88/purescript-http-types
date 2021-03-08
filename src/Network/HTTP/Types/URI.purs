module Network.HTTP.Types.URI where

import Prelude

import Data.Array as Array
import Data.Maybe (Maybe(..), fromMaybe)
import Data.String (Pattern(..))
import Data.String as String
import Data.Tuple (Tuple(..))
import JSURI (decodeURIComponent)

type QueryItem = Tuple String (Maybe String)

type Query = Array QueryItem
-- | will return the request url as an array of string
-- | root will return an empty array
-- |
-- | > req = Wai.defaulRequest { url = "/hello/world" } :: Request
-- | > pathInfo req 
-- | ["hello", "world"] 
-- | 
-- | > req = Wai.defaulRequest { url = "/" } :: Request
-- | > pathInfo req 
-- | [] 
parsePath :: String -> Array String 
parsePath = decodeUri >>> split "?" >>> first >>> split "/" >>> nonempty 
  where
    decodeUri u = (fromMaybe u $ decodeURIComponent u)
    nonempty = Array.filter ((/=) "")
    split = Pattern >>> String.split
    first = Array.head >>> fromMaybe ""

-- | TODO: Need a solution for decoding url percent (%) and plus (+) characters. 
parseQuery :: String -> Array (Tuple String (Maybe String))
parseQuery "" = []
parseQuery url = case split "?" (fromMaybe url $ decodeURIComponent url) of 
  [_, ""] -> []
  [_, qstr] -> parseQueryString qstr
  otherwise -> []
  where 
    parseQueryString = map (splitAt (flip Tuple Nothing) "=") <<< String.split (Pattern "&")
    second = case _ of 
            [_ , qstr] ->  qstr
            _         -> ""
    split = Pattern >>> String.split
    splitAt k p str =
        case String.indexOf (Pattern p) str of
          Just i -> Tuple (String.take i str) (Just $ String.drop (i + String.length p) str)
          Nothing -> k str
