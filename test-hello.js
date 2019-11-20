const { loadWebAssembly } = require('./loader')

// 自执行
require('./out/hello-emcc.js')

loadWebAssembly('./out/hello-wasi.wasm').then(apis => {
  apis._start()
})
