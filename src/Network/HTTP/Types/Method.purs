module Network.HTTP.Types.Method where 

import Prelude 
-- | A list of common methods. If it's non-common, use the 'Custom'
-- | constructor.
data Method = GET
    | HEAD
    | POST
    | PUT
    | DELETE
    | CONNECT
    | OPTIONS
    | TRACE
    | PATCH
    | Custom String


instance showMethod :: Show Method where 
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
        (Custom v) -> v


-- All HTTP Methods are case-sensitive.
fromString :: String -> Method
fromString "GET"     = GET
fromString "HEAD"    = HEAD
fromString "POST"    = POST
fromString "PUT"     = PUT
fromString "DELETE"  = DELETE
fromString "CONNECT" = CONNECT
fromString "OPTIONS" = OPTIONS
fromString "TRACE"   = TRACE
fromString "PATCH"   = PATCH
fromString s         = Custom s