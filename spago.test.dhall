let conf = ./spago.dhall

let dependencies = [ "console", "effect", "psci-support", "spec" ]

let sources = [ "test/**/*.purs" ]

in conf //
  { dependencies = conf.dependencies # dependencies
  , sources = conf.sources # sources
  }