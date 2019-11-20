const fs = require('fs')
const path = require('path')
const WASI = require('wasi')

// 编译并实例化 wasm 模块，返回导出的接口
async function loadWebAssembly (filename, env) {
  const wasi = new WASI({})
  const filePath = path.resolve(__dirname, filename)

  // 读入 wasm 文件的二进制代码
  const buffer = fs.readFileSync(filePath)

  // 将 wasm 包实例化并传入外部接口，因为没有外部依赖，不传 env 也可以的
  const result = await WebAssembly.instantiate(buffer, {
    env: Object.assign({
      '__memory_base': 0,
      '__table_base': 0,
      memory: new WebAssembly.Memory({ initial: 256, maximum: 256 }),
      table: new WebAssembly.Table({ initial: 0, maximum: 128, element: 'anyfunc' })
    }, env),
    wasi_unstable: wasi.exports
  })

  // 返回实例化好之后的接口
  if (result && result.instance && result.instance.exports) {
    wasi.setMemory(result.instance.exports.memory)
    return result.instance.exports
  }
}

module.exports = {
  loadWebAssembly
}

// loadWebAssembly('./hello-wasi.wasm').then(apis => {
//   console.log(Object.keys(apis))
//   console.log(apis._start())
// })
