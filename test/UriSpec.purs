module Test.UriSpec where 

import Prelude

import Control.Monad.Error.Class (class MonadThrow)
import Data.Maybe (Maybe(..))
import Data.Tuple (Tuple(..))
import Effect.Exception (Error)
import Network.HTTP.Types (parsePath, parseQuery)
import Network.HTTP.Types as H
import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)

pathShouldEqual :: ∀ m. MonadThrow Error m ⇒ String → Array String → m Unit
pathShouldEqual p e = parsePath p `shouldEqual` e

queryShouldEqual :: ∀ m. MonadThrow Error m ⇒ String → H.Query → m Unit
queryShouldEqual p e = parseQuery p `shouldEqual` e

spec :: Spec Unit
spec = do
  describe "Url path" do 
    it "should parse root '/'" do 
      "/" `pathShouldEqual` []

    it "should parse /hello/world" do 
      "/hello/world" `pathShouldEqual` ["hello", "world"]

    it "should decode ignore query" do 
      "/hello/world?my=query&a=b" `pathShouldEqual` ["hello", "world"]

  describe "Query string" do 
    it "should return empty list when no query" do 
      "/hello" `queryShouldEqual` []
    it "should return empty list with empty query string" do 
      "/hello?" `queryShouldEqual` []
    it "should return list with a single tuple when a single query string is present" do
      "/hello?a=b" `queryShouldEqual` [Tuple "a" (Just "b")] 
    it "should return list with multiple tuple when multiple query strings are present" do
      "/hello?a=b&c=d&e=f" `queryShouldEqual` [Tuple "a" (Just "b"), Tuple "c" (Just "d"), Tuple "e" (Just "f")] 