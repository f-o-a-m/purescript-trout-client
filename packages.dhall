let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.14.4-20210905/packages.dhall
        sha256:140f3630801f2b02d5f3a405d4872e0af317e4ef187016a6b00f97d59d6275c6

let overrides =
      { trout =
        { dependencies =
          [ "argonaut"
          , "media-types"
          , "prelude"
          , "smolder"
          , "spec"
          , "spec-discovery"
          , "uri"
          , "aff"
          , "argonaut-core"
          , "arrays"
          , "bifunctors"
          , "effect"
          , "either"
          , "free"
          , "integers"
          , "lists"
          , "maybe"
          , "newtype"
          , "strings"
          , "these"
          , "tuples"
          ]
        , repo = "https://github.com/f-o-a-m/purescript-trout.git"
        , version = "v14"
        }
      , hyper =
        { dependencies =
          [ "aff"
          , "avar"
          , "argonaut"
          , "arrays"
          , "console"
          , "control"
          , "effect"
          , "foldable-traversable"
          , "http-methods"
          , "indexed-monad"
          , "media-types"
          , "node-buffer"
          , "node-fs-aff"
          , "node-http"
          , "ordered-collections"
          , "psci-support"
          , "random"
          , "smolder"
          , "spec"
          , "spec-discovery"
          , "strings"
          , "transformers"
          , "record-extra"
          ]
        , repo = "https://github.com/f-o-a-m/hyper.git"
        , version = "v14"
        }
      , hypertrout =
        { dependencies =
          [ "hyper"
          , "prelude"
          , "psci-support"
          , "spec"
          , "spec-discovery"
          , "trout"
          , "aff"
          , "argonaut"
          , "arrays"
          , "effect"
          , "either"
          , "foldable-traversable"
          , "foreign-object"
          , "http-methods"
          , "indexed-monad"
          , "lazy"
          , "maybe"
          , "media-types"
          , "smolder"
          , "strings"
          , "transformers"
          , "tuples"
          ]
        , repo = "https://github.com/f-o-a-m/purescript-hypertrout.git"
        , version = "v14"
        }
      , js-uri =
        { dependencies = [ "functions", "maybe" ]
        , repo = "https://github.com/srghma/purescript-js-uri.git"
        , version = "main"
        }
      , node-http =
              upstream.node-http
          //  { repo = "https://github.com/srghma/purescript-node-http.git"
              , version = "master"
              }
      }

let additions =
      { smolder =
        { dependencies = [ "prelude", "js-uri" ]
        , repo = "https://github.com/nsaunders/purescript-smolder.git"
        , version = "ps-0.14"
        }
      }

in  upstream // overrides // additions
