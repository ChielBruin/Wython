#!/bin/bash

# ARGUMENTS
#
# $1 - The name of the source file, without extension.

# CONSTS

WAST=$1".wast"
WASM=$1".wasm"
JS=$1".js"

HTML="index.html"

# BUILD HTML 

echo "<!DOCTYPE html>
  <html lang=\"en\">
  <head>
    <meta charset=\"UTF-8\">
    <title></title>
  </head>
  <body>
    <script src=\"${JS}\">
    </script>
  </body>
</html>" > $HTML

# BUILD JS

echo "
const logStringFactory = memory => (position, length) => {
  const bytes = new Uint8Array(memory.buffer, position, length);
  const s = new TextDecoder('utf8').decode(bytes);
  console.log(s);
};

const memory = new WebAssembly.Memory({initial: 2});

WebAssembly.instantiateStreaming(fetch('${WASM}'), {
  memory: {
    memory,
  },
  console,
  lib: {
    logString: logStringFactory(memory),
  },
}).then(obj => obj.instance.exports.main());" > $JS

# COMPILE WEBASSEMBLY TO BINARY

~/wabt/bin/wat2wasm $WAST -o $WASM 
