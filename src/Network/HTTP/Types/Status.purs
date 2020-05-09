module Network.HTTP.Types.Status where 

type Status
    = { code    :: Int
      , message :: String 
      }

status200 :: Status 
status200 = { code: 200, message: "ok" } 

-- | Moved Permanently 301
status301 :: Status
status301 = { code: 301, message: "moved permanently" }

-- | Not Modified 304
status304 :: Status
status304 = { code: 304, message: "not modified" }

  -- | Use Proxy 305
status305 :: Status
status305 = { code: 305, message: "use proxy" }

-- | Temporary Redirect 307
status307 :: Status
status307 = { code: 307, message: "temporary redirect" }

-- | Permanent Redirect 308
status308 :: Status
status308 = { code: 308, message: "permanent redirect" }

-- | Bad Request
status400 :: Status
status400 = { code: 400 , message: "bad request" }

-- | Unauthorized
status401 :: Status
status401 = { code: 401 , message: "unauthorized" }

-- | Payment Required
status402 :: Status
status402 = { code: 402 , message: "payment required" }

-- | Forbidden
status403 :: Status
status403 = { code: 403 , message: "forbidden" }

-- | Not Found
status404 :: Status
status404 = { code: 404 , message: "not found" }

-- | Method Not Allowed
status405 :: Status
status405 = { code: 405 , message: "method not allowed" }

-- | Not Acceptable
status406 :: Status
status406 = { code: 406 , message: "not acceptable" }

-- | Proxy Authentication Required
status407 :: Status
status407 = { code: 407 , message: "proxy authentication required" }

-- | Request Timeout
status408 :: Status
status408 = { code: 408 , message: "request timeout" }

-- | Conflict
status409 :: Status
status409 = { code: 409 , message: "conflict" }

-- | Gone
status410 :: Status
status410 = { code: 410 , message: "gone" }

-- | Length Required
status411 :: Status
status411 = { code: 411 , message: "length required" }

-- | Precondition Failed
status412 :: Status
status412 = { code: 412 , message: "precondition faileds" }

-- | Payload Too Large
status413 :: Status
status413 = { code: 413 , message: "payload too large" }

-- | URI Too Long
status414 :: Status
status414 = { code: 414 , message: "uri too long" }

-- | Unsupported Media Type
status415 :: Status
status415 = { code: 415 , message: "unsupported mediatype" }

-- | Range Not Satisfiable
status416 :: Status
status416 = { code: 416 , message: "range not satisfiable" }

-- | Expectation Failed
status417 :: Status
status417 = { code: 417 , message: "expectation failed" }

-- | Upgrade Required
status426 :: Status
status426 = { code: 426 , message: "upgraderequired" }

-- | Internal Server Error
status500 :: Status
status500 = { code: 500 , message: "internal server error" }

-- | Not Implemented
status501 :: Status
status501 = { code: 501 , message: "not implemented" }

-- | Bad Gateway
status502 :: Status
status502 = { code: 502 , message: "bad gateway" }

-- | Service Unavailable
status503 :: Status
status503 = { code: 503 , message: "service unavailable" }

-- | Gateway Timeout
status504 :: Status
status504 = { code: 504 , message: "gateway timeout" }

-- | HTTP Version Not Supported
status505 :: Status
status505 = { code: 505 , message: "http version not supported" }