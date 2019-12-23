module Network.HTTP.Types.Header where 

import Data.Tuple (Tuple)

-- | Header
type Header = Tuple HeaderName String

-- | Header name
type HeaderName = String 

-- | Request Headers
type RequestHeaders = Array Header

-- | Response Headers
type ResponseHeaders = Array Header

hAccept :: HeaderName
hAccept = "Accept"

hAcceptCharset :: HeaderName
hAcceptCharset = "Accept-Charset"

hAcceptEncoding :: HeaderName
hAcceptEncoding = "Accept-Encoding"

hAcceptLanguage :: HeaderName
hAcceptLanguage = "Accept-Language"

hAcceptRanges :: HeaderName
hAcceptRanges = "Accept-Ranges"

hAge :: HeaderName
hAge = "Age"

hAllow :: HeaderName
hAllow = "Allow"

hAuthorization :: HeaderName
hAuthorization = "Authorization"

hCacheControl :: HeaderName
hCacheControl  = "Cache-Control"

hConnection :: HeaderName
hConnection = "Connection"

hContentEncoding :: HeaderName
hContentEncoding = "Content-Encoding"

hContentLanguage :: HeaderName
hContentLanguage = "Content-Language"

hContentLength :: HeaderName
hContentLength = "Content-Length"

hContentLocation :: HeaderName
hContentLocation = "Content-Location"

hContentMD5 :: HeaderName
hContentMD5 = "Content-MD5"

hContentRange :: HeaderName
hContentRange = "Content-Range"

hContentType :: HeaderName
hContentType = "Content-Type"

hDate :: HeaderName
hDate = "Date"

hETag :: HeaderName
hETag = "ETag"

hExpect :: HeaderName
hExpect = "Expect"

hExpires :: HeaderName
hExpires = "Expires"

hFrom :: HeaderName
hFrom = "From"

hHost :: HeaderName
hHost = "Host"

hIfMatch :: HeaderName
hIfMatch = "If-Match"

hIfModifiedSince :: HeaderName
hIfModifiedSince = "If-Modified-Since"

hIfNoneMatch :: HeaderName
hIfNoneMatch = "If-None-Match"

hIfRange :: HeaderName
hIfRange = "If-Range"

hIfUnmodifiedSince :: HeaderName
hIfUnmodifiedSince = "If-Unmodified-Since"

hLastModified :: HeaderName
hLastModified = "Last-Modified"

hLocation :: HeaderName
hLocation = "Location"

hMaxForwards :: HeaderName
hMaxForwards = "Max-Forwards"

hPragma :: HeaderName
hPragma = "Pragma"

hProxyAuthenticate :: HeaderName
hProxyAuthenticate = "Proxy-Authenticate"

hProxyAuthorization :: HeaderName
hProxyAuthorization = "Proxy-Authorization"

hRange :: HeaderName
hRange = "Range"

hReferer :: HeaderName
hReferer = "Referer"

hRetryAfter :: HeaderName
hRetryAfter = "Retry-After"

hServer :: HeaderName
hServer = "Server"

hTE :: HeaderName
hTE = "TE"

hTrailer :: HeaderName
hTrailer = "Trailer"

hTransferEncoding :: HeaderName
hTransferEncoding = "Transfer-Encoding"

hUpgrade :: HeaderName
hUpgrade = "Upgrade"

hUserAgent :: HeaderName
hUserAgent = "User-Agent"

hVary :: HeaderName
hVary = "Vary"

hVia :: HeaderName
hVia = "Via"

hWWWAuthenticate :: HeaderName
hWWWAuthenticate = "WWW-Authenticate"

hWarning :: HeaderName
hWarning = "Warning"

