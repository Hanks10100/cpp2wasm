#!/bin/bash

# 依赖的工具
# Emscripten: https://emscripten.org/docs/getting_started/downloads.html
# wasi-sdk: https://github.com/CraneStation/wasi-sdk
# WebAssembly Binary Toolkit: https://github.com/WebAssembly/wabt

# 配置 wasi-sdk 的路径
WASI_SDK="$HOME/bin/wasi-sdk-8.0"
SYSROOT="$WASI_SDK/share/wasi-sysroot"

#########################  编译 hello.c  #########################

echo " => 编译 hello.c"

# 编译成原生二进制
# clang hello.c -O3 -o out/hello

# 使用 Emscripten 编译 hello.c
emcc hello.c -O3 -o out/hello-emcc.js

# 使用 wasi-sdk 编译 hello.c
$WASI_SDK/bin/clang --sysroot $SYSROOT hello.c -O3 -o out/hello-wasi.wasm

# 把生成的 wasm 包转成对等的文本表示
wasm2wat out/hello-emcc.wasm -o out/hello-emcc.wat
wasm2wat out/hello-wasi.wasm -o out/hello-wasi.wat

# 使用 Wasmtime 运行 wasm 模块
# wasmtime out/hello-wasi.wasm


##########################  编译 fib.c  ##########################

echo " => 编译 fib.c"

# 使用 Emscripten 编译 fib.c
emcc fib.c -s EXPORTED_FUNCTIONS='["_fib"]' -O3 -o out/fib-emcc.wasm

# 使用 wasi-sdk 编译 hello.c
$WASI_SDK/bin/clang --sysroot $SYSROOT fib.c \
  -nostartfiles -fvisibility=hidden \
  -Wl,--no-entry,--export=fib \
  -O3 -o out/fib-wasi.wasm

# 把生成的 wasm 包转成对等的文本表示
wasm2wat out/fib-emcc.wasm -o out/fib-emcc.wat
wasm2wat out/fib-wasi.wasm -o out/fib-wasi.wat

# 使用 Wasmtime 调用 fib 函数
# wasmtime out/fib-wasi.wasm --invoke fib 6
# wasmtime out/fib-emcc.wasm --invoke _fib 6
