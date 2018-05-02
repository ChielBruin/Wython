WebAssembly.instantiateStreaming(fetch('play.wasm'), { console,
  env:process.env })
  .then(obj => obj.instance.exports.main() )
