module Network.HTTP.Types.Header where 

import Prelude

import Data.Array (cons)
import Data.Char.Unicode (isDigit)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Int as Int
import Data.Maybe (Maybe(..))
import Data.String (Pattern(..), drop, length, null, stripPrefix, take)
import Data.String.CodeUnits (takeWhile)
import Data.Tuple (Tuple(..))
import Data.Tuple.Nested ((/\))

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

data ByteRange
  = ByteRangeFrom Int 
  | ByteRangeFromTo Int Int
  | ByteRangeSuffix Int

-- | RFC 2616 Byte ranges (set).
type ByteRanges = Array ByteRange

derive instance genericByteRange :: Generic ByteRange _ 
derive instance eqByteRange :: Eq ByteRange
derive instance ordByteRange :: Ord ByteRange  
instance showByteRange :: Show ByteRange where 
  show = genericShow

parseByteRanges :: String -> Maybe ByteRanges
parseByteRanges str = do 
  str2      <- stripPrefix (Pattern "bytes=") str
  r /\ str3 <- range str2 
  ranges (cons r) str3
  where 
    range str2 = do 
      (i /\ str3) <- readInt str2 
      if i < 0
      then Just (ByteRangeSuffix i /\ str3)
      else do
        str4 <- stripPrefix (Pattern "-") str3
        case readInt str4 of  
          Just (j /\ str5) | j >= i -> Just (ByteRangeFromTo i j /\ str5)
          _ -> Just (ByteRangeFrom i /\ str4)

    ranges front str3
        | null str3 = Just (front [])
        | otherwise = do
            str4 <- stripPrefix (Pattern ",") str3
            r /\ str5 <- range str4
            ranges (front <<< (cons r)) str5

-- | Reads first int occurrence and returns the remaining string
-- >>> readInt "900, test"
-- Just (Tuple 900 ", test")
-- >>> readInt "-500, test2"
-- Just (Tuple -500 ", test2")
-- >>> readInt "error"
-- Nothing
readInt :: String -> Maybe (Tuple Int String)
readInt str
  | null str = Nothing 
  | otherwise = do 
      let 
        negDash = take 1 str 
        ints = 
          if (negDash == "-")
          then negDash <> (takeWhile isDigit $ drop 1 str)
          else takeWhile isDigit str

      i <- Int.fromString ints 
      pure $ 
        Tuple i (drop (length ints) str)