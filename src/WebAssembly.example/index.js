WebAssembly.instantiateStreaming(fetch('play.wasm'), { console })
  .then(obj => obj.instance.exports.main() )
