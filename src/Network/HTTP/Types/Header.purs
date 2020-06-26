module Network.HTTP.Types.Header where 

import Prelude

import Data.Array (cons)
import Data.Char.Unicode (isDigit)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Int as Int
import Data.Maybe (Maybe(..))
import Data.Newtype (wrap)
import Data.String (Pattern(..), drop, length, null, stripPrefix, take)
import Data.String.CaseInsensitive (CaseInsensitiveString)
import Data.String.CodeUnits (takeWhile)
import Data.Tuple (Tuple(..))
import Data.Tuple.Nested ((/\))

-- | Header
type Header = Tuple HeaderName String

-- | Header name
type HeaderName = CaseInsensitiveString 

-- | Request Headers
type RequestHeaders = Array Header

-- | Response Headers
type ResponseHeaders = Array Header

hAccept :: HeaderName
hAccept = wrap "Accept"

hAcceptCharset :: HeaderName
hAcceptCharset = wrap "Accept-Charset"

hAcceptEncoding :: HeaderName
hAcceptEncoding = wrap "Accept-Encoding"

hAcceptLanguage :: HeaderName
hAcceptLanguage = wrap "Accept-Language"

hAcceptRanges :: HeaderName
hAcceptRanges = wrap "Accept-Ranges"

hAge :: HeaderName
hAge = wrap "Age"

hAllow :: HeaderName
hAllow = wrap "Allow"

hAuthorization :: HeaderName
hAuthorization = wrap "Authorization"

hCacheControl :: HeaderName
hCacheControl  = wrap "Cache-Control"

hConnection :: HeaderName
hConnection = wrap "Connection"

hContentEncoding :: HeaderName
hContentEncoding = wrap "Content-Encoding"

hContentLanguage :: HeaderName
hContentLanguage = wrap "Content-Language"

hContentLength :: HeaderName
hContentLength = wrap "Content-Length"

hContentLocation :: HeaderName
hContentLocation = wrap "Content-Location"

hContentMD5 :: HeaderName
hContentMD5 = wrap "Content-MD5"

hContentRange :: HeaderName
hContentRange = wrap "Content-Range"

hContentType :: HeaderName
hContentType = wrap "Content-Type"

hDate :: HeaderName
hDate = wrap "Date"

hETag :: HeaderName
hETag = wrap "ETag"

hExpect :: HeaderName
hExpect = wrap "Expect"

hExpires :: HeaderName
hExpires = wrap "Expires"

hFrom :: HeaderName
hFrom = wrap "From"

hHost :: HeaderName
hHost = wrap "Host"

hIfMatch :: HeaderName
hIfMatch = wrap "If-Match"

hIfModifiedSince :: HeaderName
hIfModifiedSince = wrap "If-Modified-Since"

hIfNoneMatch :: HeaderName
hIfNoneMatch = wrap "If-None-Match"

hIfRange :: HeaderName
hIfRange = wrap "If-Range"

hIfUnmodifiedSince :: HeaderName
hIfUnmodifiedSince = wrap "If-Unmodified-Since"

hLastModified :: HeaderName
hLastModified = wrap "Last-Modified"

hLocation :: HeaderName
hLocation = wrap "Location"

hMaxForwards :: HeaderName
hMaxForwards = wrap "Max-Forwards"

hPragma :: HeaderName
hPragma = wrap "Pragma"

hProxyAuthenticate :: HeaderName
hProxyAuthenticate = wrap "Proxy-Authenticate"

hProxyAuthorization :: HeaderName
hProxyAuthorization = wrap "Proxy-Authorization"

hRange :: HeaderName
hRange = wrap "Range"

hReferer :: HeaderName
hReferer = wrap "Referer"

hRetryAfter :: HeaderName
hRetryAfter = wrap "Retry-After"

hServer :: HeaderName
hServer = wrap "Server"

hTE :: HeaderName
hTE = wrap "TE"

hTrailer :: HeaderName
hTrailer = wrap "Trailer"

hTransferEncoding :: HeaderName
hTransferEncoding = wrap "Transfer-Encoding"

hUpgrade :: HeaderName
hUpgrade = wrap "Upgrade"

hUserAgent :: HeaderName
hUserAgent = wrap "User-Agent"

hVary :: HeaderName
hVary = wrap "Vary"

hVia :: HeaderName
hVia = wrap "Via"

hWWWAuthenticate :: HeaderName
hWWWAuthenticate = wrap "WWW-Authenticate"

hWarning :: HeaderName
hWarning = wrap "Warning"

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