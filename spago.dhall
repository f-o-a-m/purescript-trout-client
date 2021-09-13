{ name = "trout-client"
, license = "MPL-2.0"
, repository = "https://github.com/purescript-hyper/purescript-trout-client.git"
, dependencies =
  [ "affjax"
  , "prelude"
  , "psci-support"
  , "trout"
,"aff"
,"argonaut"
,"arrays"
,"bifunctors"
,"console"
,"effect"
,"either"
,"foldable-traversable"
,"http-methods"
,"maybe"
,"parsing"
,"strings"
,"tuples"
,"uri"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
