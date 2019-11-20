(module
  (type (;0;) (func (param i32) (result i32)))
  (func (;0;) (type 0) (param i32) (result i32)
    get_local 0
    i32.const 1
    i32.lt_s
    if  ;; label = @1
      i32.const 0
      return
    end
    get_local 0
    i32.const 3
    i32.lt_s
    if i32  ;; label = @1
      i32.const 1
    else
      get_local 0
      i32.const -2
      i32.add
      call 0
      get_local 0
      i32.const -1
      i32.add
      call 0
      i32.add
    end)
  (export "_fib" (func 0)))
