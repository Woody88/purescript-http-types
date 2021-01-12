[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/Woody88/purescript-http-types/blob/master/LICENSE)
![CI](https://github.com/Woody88/purescript-warp/workflows/CI/badge.svg?branch=master)

<div align="center">
  <h1>
    <code>http-types</code>: Generic HTTP types for Purescript (for both client and server code)
  </h1>
</div>

## Installation

***This library is not yet published to pursuit.***  
You can install this package by adding the details below to your packages.dhall:


<summary><strong>Using Spago</strong></summary>

```dhall
let additions =
      { http-types =
        { dependencies = [ "tuples", "unicode", "generics-rep" ]
        , repo = "https://github.com/Woody88/purescript-http-types.git"
        , version = "master"
        }
      }
```

```console
user@user:~$ spago install http-types
```

</br>

## Contributing

If you are interested in fixing issues and contributing directly to the code base,
please see the [contributing guidelines](https://github.com/Woody88/purescript-http-types/blob/master/CONTRIBUTING.md).

## Changelog

Change log details can be found [here](https://github.com/Woody88/purescript-http-types/blob/master/CHANGELOG.md) 

## License

Licensed under the [MIT](https://github.com/Woody88/purescript-http-types/blob/master/LICENSE) license.
Copyright (c) 2021 Woodson Delhia. All rights reserved.