# 把 C/C++ 编译成 WebAssembly

参考文章：[《从零开始把 C/C++ 编译成 WebAssembly》](https://www.atatech.org/articles/156083)

## 源代码

```
./
 ├── fib.c    # 斐波那契函数
 └── hello.c  # 输出 Hello World！
```

## 编译代码

首先安装依赖：

1. [Emscripten](https://emscripten.org/docs/getting_started/downloads.html)
2. [wasi-sdk](https://github.com/CraneStation/wasi-sdk)
3. [WABT (WebAssembly Binary Toolkit)](https://github.com/WebAssembly/wabt)

然后执行下方命令即可编译所有代码，具体每行命令的含义，参考文件内的注释。

```bash
./build.sh
```

## 测试代码

首先安装 Node.js ，然后在当前目录下执行 `npm install`，然后就可以执行如下测试：

### 1. 测试 hello.c

```bash
node test-hello.js
```

将会得到两行输出，分别由 Emscripten 和 wasi-sdk 编译而来：

```
Hello World!
Hello World!
```

### 2. 测试 fib.c

```bash
node test-fib.js
```

将会得到两行输出：

```
[emcc] fib(3) = 2
[wasi] fib(3) = 2
```

可以在命令后指定要计算的数字：

```bash
node test-fib.js 17
```

输出：

```
[wasi] fib(17) = 1597
[emcc] fib(17) = 1597
```

## 使用独立运行时

可以使用独立的 WebAssembly 运行时执行编译出来的代码，以 [Wasmtime]() 为例：

```bash
# 输出 Hello World!
wasmtime out/hello-wasi.wasm
```

```bash
# 调用 wasi-sdk 编译出来的 fib 函数
wasmtime out/fib-wasi.wasm --invoke fib 8
```

```bash
# 调用 Emscripten 编译出来的 fib 函数
wasmtime out/fib-emcc.wasm --invoke _fib 11
```
