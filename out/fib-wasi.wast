(module
  (type (;0;) (func (param i32) (result i32)))
  (func fib (type 0) (param i32) (result i32)
    (local i32)
    i32.const 1
    set_local 1
    block  ;; label = @1
      block  ;; label = @2
        get_local 0
        i32.const 1
        i32.ge_s
        br_if 0 (;@2;)
        i32.const 0
        set_local 1
        br 1 (;@1;)
      end
      get_local 0
      i32.const 3
      i32.lt_s
      br_if 0 (;@1;)
      get_local 0
      i32.const -2
      i32.add
      call fib
      get_local 0
      i32.const -1
      i32.add
      call fib
      i32.add
      return
    end
    get_local 1)
  (table (;0;) 1 1 anyfunc)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "fib" (func fib)))
