(module
  (type (;0;) (func (param i32) (result i32)))
  (func $fib (type 0) (param i32) (result i32)
    (local i32)
    i32.const 1
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 1
        i32.ge_s
        br_if 0 (;@2;)
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      i32.const 3
      i32.lt_s
      br_if 0 (;@1;)
      local.get 0
      i32.const -2
      i32.add
      call $fib
      local.get 0
      i32.const -1
      i32.add
      call $fib
      i32.add
      return
    end
    local.get 1)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "fib" (func $fib)))
