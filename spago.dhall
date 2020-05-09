{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "purescript-http-types"
, dependencies =
  [ "console", "effect", "psci-support", "tuples", "unicode", "uri" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
