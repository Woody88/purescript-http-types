module Network.HTTP.Types.Method where 

import Prelude

import Data.Maybe (Maybe(..))

-- | constructor.
type Method = String 

data StdMethod 
    = GET
    | HEAD
    | POST
    | PUT
    | DELETE
    | CONNECT
    | OPTIONS
    | TRACE
    | PATCH

instance showMethod :: Show StdMethod where 
    show = case _ of 
        GET        -> "GET"
        HEAD       -> "HEAD"
        POST       -> "POST"
        PUT        -> "PUT"
        DELETE     -> "DELETE"
        CONNECT    -> "CONNECT"
        OPTIONS    -> "OPTIONS"
        TRACE      -> "TRACE"
        PATCH      -> "PATCH"

methodGet :: Method 
methodGet = show GET

methodPost :: Method 
methodPost = show POST

methodHead :: Method 
methodHead = show HEAD

methodPut :: Method 
methodPut = show PUT

methodDelete :: Method 
methodDelete = show DELETE

methodTrace :: Method 
methodTrace = show TRACE

methodConnect :: Method 
methodConnect = show CONNECT

methodOptions :: Method 
methodOptions = show OPTIONS

methodPatch :: Method 
methodPatch = show PATCH

parseMethod :: Method -> Maybe StdMethod
parseMethod "GET"     = pure GET
parseMethod "HEAD"    = pure HEAD
parseMethod "POST"    = pure POST
parseMethod "PUT"     = pure PUT
parseMethod "DELETE"  = pure DELETE
parseMethod "CONNECT" = pure CONNECT
parseMethod "OPTIONS" = pure OPTIONS
parseMethod "TRACE"   = pure TRACE
parseMethod "PATCH"   = pure PATCH
parseMethod _         = Nothing