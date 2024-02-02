# Lua TOML Encoder/Decoder Library

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

A Lua library for encoding and decoding TOML file formats to/from JSON and Lua tables.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
  - [Encoding](#encoding)
  - [Decoding](#decoding)
- [Example](#example)
- [Contributing](#contributing)
- [License](#license)

## Installation

To use this library in your Lua project, simply include the `toml_encoder_decoder.lua` file in your project and require it in your code.

```lua
local toml = require("toml_encoder_decoder")
```

## Usage

### Encoding

Encode Lua tables or JSON strings to TOML.

```lua
local luaTable = { key1 = "value1", key2 = { nestedKey = "nestedValue" } }
local tomlString = toml.encode(luaTable)
```

```lua
local jsonString = '{"key1":"value1","key2":{"nestedKey":"nestedValue"}}'
local tomlString = toml.encode(jsonString, { format = "json" })
```

### Decoding

Decode TOML strings to Lua tables or JSON strings.

```lua
local tomlString = 'key1 = "value1"\n[key2]\nnestedKey = "nestedValue"'
local luaTable = toml.decode(tomlString)
```

```lua
local jsonString = '{"key1":"value1","key2":{"nestedKey":"nestedValue"}}'
local luaTable = toml.decode(jsonString, { format = "json" })
```

## Example

```lua
local toml = require("toml_encoder_decoder")

-- Encoding
local luaTable = { key1 = "value1", key2 = { nestedKey = "nestedValue" } }
local tomlString = toml.encode(luaTable)
print("Encoded TOML:")
print(tomlString)

-- Decoding
local decodedTable = toml.decode(tomlString)
print("\nDecoded Lua Table:")
for key, value in pairs(decodedTable) do
    print(key, value)
end
```

## Contributing

Feel free to contribute to this project. Fork it, make changes, and create a pull request. Any contributions are welcome!

## License

This library is open-sourced under the [MIT License](LICENSE).