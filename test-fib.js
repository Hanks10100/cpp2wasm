const { loadWebAssembly } = require('./loader')

// 读取 Node.js 传递的命令参数 (node fib.js N)
const args = process.argv.slice(2)
const N = args.length ? parseInt(args[0], 10) : 3

loadWebAssembly('./out/fib-emcc.wasm').then(apis => {
  console.log(`[emcc] fib(${N}) = ${apis._fib(N)}`)
})

loadWebAssembly('./out/fib-wasi.wasm').then(apis => {
  console.log(`[wasi] fib(${N}) = ${apis.fib(N)}`)
})
