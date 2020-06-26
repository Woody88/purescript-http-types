module Network.HTTP.Types.Status where 

import Prelude 

type Status
    = { code    :: Int
      , message :: String 
      }

-- | OK 200
status200 :: Status 
status200 = { code: 200, message: "OK" } 

-- | OK 200
ok200 :: Status 
ok200 = status200

-- | Created 201
status201 :: Status
status201 = { code: 201, message: "Created" } 

-- | Created 201
created201 :: Status
created201 = status201

-- | Accepted 202
status202 :: Status
status202 = { code: 202, message: "Accepted" }  

-- | Accepted 202
accepted202 :: Status
accepted202 = status202

-- | Non-Authoritative Information 203
status203 :: Status
status203 = { code: 203, message: "Non-Authoritative Information" }

-- | Non-Authoritative Information 203
nonAuthoritative203 :: Status
nonAuthoritative203 = status203

-- | No Content 204
status204 :: Status
status204 = { code: 204, message: "No Content" }

-- | No Content 204
noContent204 :: Status
noContent204 = status204

-- | Reset Content 205
status205 :: Status
status205 = { code: 205, message: "Reset Content" }

-- | Reset Content 205
resetContent205 :: Status
resetContent205 = status205

-- | Partial Content 206
status206 :: Status
status206 = { code: 206, message: "Partial Content" }  

-- | Partial Content 206
partialContent206 :: Status
partialContent206 = status206

-- | Multiple Choices 300
status300 :: Status
status300 = { code: 300, message: "Multiple Choices" }

-- | Multiple Choices 300
multipleChoices300 :: Status
multipleChoices300 = status300
-- | Moved Permanently 301
status301 :: Status
status301 = { code: 301, message: "Moved Permanently" }

-- | Moved Permanently 301
movedPermanently301 :: Status
movedPermanently301 = status301

-- | Found 302
status302 :: Status
status302 = { code: 302, message: "Found" }

-- | Found 302
found302 :: Status
found302 = status302

-- | See Other 303
status303 :: Status
status303 = { code: 304, message: "See Other" } 

-- | See Other 303
seeOther303 :: Status
seeOther303 = status303

-- | Not Modified 304
status304 :: Status
status304 = { code: 304, message: "Not Modified" }

-- | Not Modified 304
notModified304 :: Status
notModified304 = status304

  -- | Use Proxy 305
status305 :: Status
status305 = { code: 305, message: "Use Proxy" }

-- | Use Proxy 305
useProxy305 :: Status
useProxy305 = status305

-- | Temporary Redirect 307
status307 :: Status
status307 = { code: 307, message: "Temporary Redirect" }

-- | Temporary Redirect 307
temporaryRedirect307 :: Status
temporaryRedirect307 = status307

-- | Permanent Redirect 308
status308 :: Status
status308 = { code: 308, message: "Permanent Redirect" }

-- | Permanent Redirect 308
permanentRedirect308 :: Status
permanentRedirect308 = status308

-- | Bad Request 400
status400 :: Status
status400 = { code: 400 , message: "Bad Request" }

-- | Bad Request 400
badRequest400 :: Status
badRequest400 = status400

-- | Unauthorized
status401 :: Status
status401 = { code: 401 , message: "Unauthorized" }

-- | Unauthorized 401
unauthorized401 :: Status
unauthorized401 = status401

-- | Payment Required 402
status402 :: Status
status402 = { code: 402 , message: "Payment Required" }

-- | Payment Required 402
paymentRequired402 :: Status
paymentRequired402 = status402

-- | Forbidden 403
status403 :: Status
status403 = { code: 403 , message: "Forbidden" }

-- | Forbidden 403
forbidden403 :: Status
forbidden403 = status403

-- | Not Found 404
status404 :: Status
status404 = { code: 404 , message: "Not Found" }

-- | Not Found 404
notFound404 :: Status
notFound404 = status404

-- | Method Not Allowed 405
status405 :: Status
status405 = { code: 405 , message: "Method Not Allowed" }

-- | Method Not Allowed 405
methodNotAllowed405 :: Status
methodNotAllowed405 = status405

-- | Not Acceptable 406 
status406 :: Status
status406 = { code: 406 , message: "Not Acceptable" }

-- | Not Acceptable 406
notAcceptable406 :: Status
notAcceptable406 = status406

-- | Proxy Authentication Required 407
status407 :: Status 
status407 = { code: 407 , message: "Proxy Authentication Required" }

-- | Proxy Authentication Required 407
proxyAuthenticationRequired407 :: Status
proxyAuthenticationRequired407 = status407

-- | Request Timeout 408
status408 :: Status
status408 = { code: 408 , message: "Request Timeout" }

-- | Request Timeout 408
requestTimeout408 :: Status
requestTimeout408 = status408

-- | Conflict 409
status409 :: Status
status409 = { code: 409 , message: "Conflict" }

-- | Conflict 409
conflict409 :: Status
conflict409 = status409

-- | Gone 410
status410 :: Status
status410 = { code: 410 , message: "Gone" }

-- | Gone 410
gone410 :: Status
gone410 = status410

-- | Length Required 411
status411 :: Status
status411 = { code: 411 , message: "Length Required" }

-- | Length Required 411
lengthRequired411 :: Status
lengthRequired411 = status411

-- | Precondition Failed 412
status412 :: Status
status412 = { code: 412 , message: "Precondition Faileds" }

-- | Precondition Failed 412
preconditionFailed412 :: Status
preconditionFailed412 = status412

-- | Payload Too Large 413
status413 :: Status
status413 = { code: 413 , message: "Payload Too Large" }

-- | Request Entity Too Large 413
requestEntityTooLarge413 :: Status
requestEntityTooLarge413 = status413

-- | URI Too Long 414
status414 :: Status
status414 = { code: 414 , message: "Uri Too Long" }

-- | URI Too Long 414
requestURITooLong414 :: Status
requestURITooLong414 = status414

-- | Unsupported Media Type 415
status415 :: Status
status415 = { code: 415 , message: "Unsupported Mediatype" }

-- | Unsupported Media Type 415
unsupportedMediaType415 :: Status
unsupportedMediaType415 = status415

-- | Range Not Satisfiable 416
status416 :: Status
status416 = { code: 416 , message: "Range Not Satisfiable" }

-- | Requested Range Not Satisfiable 416
requestedRangeNotSatisfiable416 :: Status
requestedRangeNotSatisfiable416 = status416

-- | Expectation Failed 417
status417 :: Status
status417 = { code: 417 , message: "Expectation Failed" }

-- | Expectation Failed 417
expectationFailed417 :: Status
expectationFailed417 = status417


-- | I'm a teapot 418
status418 :: Status
status418 = { code: 418 , message: "I'm a teapot" } 

-- | I'm a teapot 418
imATeapot418 :: Status
imATeapot418 = status418

-- | Unprocessable Entity 422
-- (<https://tools.ietf.org/html/rfc4918 RFC 4918>)
status422 :: Status
status422 = { code: 422 , message: "Unprocessable Entity" }

-- | Unprocessable Entity 422
-- (<https://tools.ietf.org/html/rfc4918 RFC 4918>)
unprocessableEntity422 :: Status
unprocessableEntity422 = status422

-- | Upgrade Required 426
status426 :: Status
status426 = { code: 426 , message: "Upgrade Required" }

-- | Upgrade Required 426
-- (<https://tools.ietf.org/html/rfc7231#section-6.5.15>)
upgradeRequired426 :: Status
upgradeRequired426 = status426

-- | Precondition Required 428
-- (<https://tools.ietf.org/html/rfc6585 RFC 6585>)
status428 :: Status
status428 = { code: 428 , message: "Precondition Required" }

-- | Precondition Required 428
-- (<https://tools.ietf.org/html/rfc6585 RFC 6585>)
preconditionRequired428 :: Status
preconditionRequired428 = status428

-- | Too Many Requests 429
-- (<https://tools.ietf.org/html/rfc6585 RFC 6585>)
status429 :: Status
status429 = { code: 429 , message: "Too Many Requests" }

-- | Too Many Requests 429
-- (<https://tools.ietf.org/html/rfc6585 RFC 6585>)
tooManyRequests429 :: Status
tooManyRequests429 = status429

-- | Request Header Fields Too Large 431
-- (<https://tools.ietf.org/html/rfc6585 RFC 6585>)
status431 :: Status
status431 = { code: 431 , message: "Request Header Fields Too Large" }

-- | Request Header Fields Too Large 431
-- (<https://tools.ietf.org/html/rfc6585 RFC 6585>)
requestHeaderFieldsTooLarge431 :: Status
requestHeaderFieldsTooLarge431 = status431

-- | Internal Server Error 500 
status500 :: Status
status500 = { code: 500 , message: "Internal Server Error" }

-- | Internal Server Error 500
internalServerError500 :: Status
internalServerError500 = status500

-- | Not Implemented 501
status501 :: Status
status501 = { code: 501 , message: "Not Implemented" }

-- | Not Implemented 501
notImplemented501 :: Status
notImplemented501 = status501

-- | Bad Gateway 502
status502 :: Status
status502 = { code: 502 , message: "Bad Gateway" }

-- | Bad Gateway 502
badGateway502 :: Status
badGateway502 = status502

-- | Service Unavailable 503
status503 :: Status
status503 = { code: 503 , message: "Service Unavailable" }

-- | Service Unavailable 503
serviceUnavailable503 :: Status
serviceUnavailable503 = status503

-- | Gateway Timeout 504
status504 :: Status
status504 = { code: 504 , message: "Gateway Timeout" }


-- | Gateway Timeout 504
gatewayTimeout504 :: Status
gatewayTimeout504 = status504

-- | HTTP Version Not Supported 505
status505 :: Status
status505 = { code: 505 , message: "Http Version Not Supported" }

-- | HTTP Version Not Supported 505
httpVersionNotSupported505 :: Status
httpVersionNotSupported505 = status505

-- | Network Authentication Required 511
-- (<https://tools.ietf.org/html/rfc6585 RFC 6585>)
status511 :: Status
status511 = { code: 511 , message: "Network Authentication Required" }

-- | Network Authentication Required 511
-- (<https://tools.ietf.org/html/rfc6585 RFC 6585>)
networkAuthenticationRequired511 :: Status
networkAuthenticationRequired511 = status511

-- | Informational class
statusIsInformational :: Status -> Boolean
statusIsInformational {code} =  code >= 100 && code < 200

-- | Successful class
statusIsSuccessful :: Status -> Boolean
statusIsSuccessful {code} = code >= 200 && code < 300

-- | Redirection class
statusIsRedirection :: Status -> Boolean
statusIsRedirection {code} = code >= 300 && code < 400

-- | Client Error class
statusIsClientError :: Status -> Boolean
statusIsClientError {code} = code >= 400 && code < 500

-- | Server Error class
statusIsServerError :: Status -> Boolean
statusIsServerError {code} = code >= 500 && code < 600