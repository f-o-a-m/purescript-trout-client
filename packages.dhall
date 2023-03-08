let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.7-20230306/packages.dhall
        sha256:0757626c7422b8b5b5b1d0df3d3628e5deac755d7f89c433a9bf89009787dcbd

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
        , version = "purs-0.15"
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
        , repo = "https://github.com/f-o-a-m/purescript-smolder.git"
        , version = "ps-0.14"
        }
      }

in  upstream // overrides // additions
