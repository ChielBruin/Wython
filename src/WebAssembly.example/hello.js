
const logStringFactory = memory => (position, length) => {
  const bytes = new Uint8Array(memory.buffer, position, length);
  const s = new TextDecoder('utf8').decode(bytes);
  console.log(s);
};

const memory = new WebAssembly.Memory({initial: 2});

WebAssembly.instantiateStreaming(fetch('hello.wasm'), {
  memory: {
    memory,
  },
  console,
  lib: {
    logString: logStringFactory(memory),
  },
}).then(obj => obj.instance.exports.main());
