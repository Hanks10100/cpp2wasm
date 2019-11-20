(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (type (;4;) (func (result i32)))
  (type (;5;) (func))
  (import "env" "a" (func (;0;) (type 3)))
  (import "env" "b" (func (;1;) (type 2)))
  (import "env" "c" (func (;2;) (type 0)))
  (import "env" "d" (func (;3;) (type 3)))
  (import "env" "e" (func (;4;) (type 3)))
  (import "env" "f" (func (;5;) (type 3)))
  (import "env" "__table_base" (global (;0;) i32))
  (import "env" "memory" (memory (;0;) 256 256))
  (import "env" "table" (table (;0;) 6 6 anyfunc))
  (func (;6;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 1
    set_local 7
    get_global 1
    i32.const 48
    i32.add
    set_global 1
    get_local 7
    i32.const 32
    i32.add
    set_local 6
    get_local 7
    tee_local 3
    get_local 0
    i32.load offset=28
    tee_local 5
    i32.store
    get_local 3
    get_local 0
    i32.load offset=20
    get_local 5
    i32.sub
    tee_local 5
    i32.store offset=4
    get_local 3
    get_local 1
    i32.store offset=8
    get_local 3
    get_local 2
    i32.store offset=12
    get_local 3
    i32.const 16
    i32.add
    tee_local 1
    get_local 0
    i32.load offset=60
    i32.store
    get_local 1
    get_local 3
    i32.store offset=4
    get_local 1
    i32.const 2
    i32.store offset=8
    i32.const 146
    get_local 1
    call 0
    tee_local 4
    i32.const -4096
    i32.gt_u
    if  ;; label = @1
      i32.const 2704
      i32.const 0
      get_local 4
      i32.sub
      i32.store
      i32.const -1
      set_local 4
    end
    block  ;; label = @1
      block  ;; label = @2
        get_local 4
        get_local 2
        get_local 5
        i32.add
        tee_local 5
        i32.eq
        br_if 0 (;@2;)
        i32.const 2
        set_local 8
        get_local 3
        set_local 1
        get_local 4
        set_local 3
        loop  ;; label = @3
          get_local 3
          i32.const 0
          i32.ge_s
          if  ;; label = @4
            get_local 1
            i32.const 8
            i32.add
            get_local 1
            get_local 3
            get_local 1
            i32.load offset=4
            tee_local 9
            i32.gt_u
            tee_local 4
            select
            tee_local 1
            get_local 3
            get_local 9
            i32.const 0
            get_local 4
            select
            i32.sub
            tee_local 9
            get_local 1
            i32.load
            i32.add
            i32.store
            get_local 1
            get_local 1
            i32.load offset=4
            get_local 9
            i32.sub
            i32.store offset=4
            get_local 6
            get_local 0
            i32.load offset=60
            i32.store
            get_local 6
            get_local 1
            i32.store offset=4
            get_local 6
            get_local 8
            get_local 4
            i32.const 31
            i32.shl
            i32.const 31
            i32.shr_s
            i32.add
            tee_local 8
            i32.store offset=8
            block i32  ;; label = @5
              get_local 5
              get_local 3
              i32.sub
              tee_local 5
              set_local 10
              i32.const 146
              get_local 6
              call 0
              tee_local 3
              i32.const -4096
              i32.gt_u
              if  ;; label = @6
                i32.const 2704
                i32.const 0
                get_local 3
                i32.sub
                i32.store
                i32.const -1
                set_local 3
              end
              get_local 10
            end
            get_local 3
            i32.eq
            br_if 2 (;@2;)
            br 1 (;@3;)
          end
        end
        get_local 0
        i32.const 0
        i32.store offset=16
        get_local 0
        i32.const 0
        i32.store offset=28
        get_local 0
        i32.const 0
        i32.store offset=20
        get_local 0
        get_local 0
        i32.load
        i32.const 32
        i32.or
        i32.store
        get_local 8
        i32.const 2
        i32.eq
        if i32  ;; label = @3
          i32.const 0
        else
          get_local 2
          get_local 1
          i32.load offset=4
          i32.sub
        end
        set_local 2
        br 1 (;@1;)
      end
      get_local 0
      get_local 0
      i32.load offset=44
      tee_local 1
      get_local 0
      i32.load offset=48
      i32.add
      i32.store offset=16
      get_local 0
      get_local 1
      i32.store offset=28
      get_local 0
      get_local 1
      i32.store offset=20
    end
    get_local 7
    set_global 1
    get_local 2)
  (func (;7;) (type 1) (param i32) (result i32)
    (local i32)
    get_local 0
    get_local 0
    i32.load8_s offset=74
    tee_local 1
    get_local 1
    i32.const 255
    i32.add
    i32.or
    i32.store8 offset=74
    get_local 0
    i32.load
    tee_local 1
    i32.const 8
    i32.and
    if i32  ;; label = @1
      get_local 0
      get_local 1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
    else
      get_local 0
      i32.const 0
      i32.store offset=8
      get_local 0
      i32.const 0
      i32.store offset=4
      get_local 0
      get_local 0
      i32.load offset=44
      tee_local 1
      i32.store offset=28
      get_local 0
      get_local 1
      i32.store offset=20
      get_local 0
      get_local 1
      get_local 0
      i32.load offset=48
      i32.add
      i32.store offset=16
      i32.const 0
    end)
  (func (;8;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32)
    get_global 1
    set_local 3
    get_global 1
    i32.const 32
    i32.add
    set_global 1
    get_local 3
    get_local 0
    i32.load offset=60
    i32.store
    get_local 3
    i32.const 0
    i32.store offset=4
    get_local 3
    get_local 1
    i32.store offset=8
    get_local 3
    get_local 3
    i32.const 20
    i32.add
    i32.store offset=12
    get_local 3
    get_local 2
    i32.store offset=16
    i32.const 140
    get_local 3
    call 5
    tee_local 0
    i32.const -4096
    i32.gt_u
    if i32  ;; label = @1
      i32.const 2704
      i32.const 0
      get_local 0
      i32.sub
      i32.store
      i32.const -1
    else
      get_local 0
    end
    i32.const 0
    i32.lt_s
    if i32  ;; label = @1
      get_local 3
      i32.const -1
      i32.store offset=20
      i32.const -1
    else
      get_local 3
      i32.load offset=20
    end
    set_local 4
    get_local 3
    set_global 1
    get_local 4)
  (func (;9;) (type 1) (param i32) (result i32)
    (local i32)
    get_global 1
    set_local 1
    get_global 1
    i32.const 16
    i32.add
    set_global 1
    get_local 1
    get_local 0
    i32.load offset=60
    i32.store
    i32.const 6
    get_local 1
    call 3
    tee_local 0
    i32.const -4096
    i32.gt_u
    if  ;; label = @1
      i32.const 2704
      i32.const 0
      get_local 0
      i32.sub
      i32.store
      i32.const -1
      set_local 0
    end
    get_local 1
    set_global 1
    get_local 0)
  (func (;10;) (type 4) (result i32)
    call 14
    i32.const 0)
  (func (;11;) (type 0) (param i32 i32 i32) (result i32)
    i32.const 1
    call 1
    i32.const 0)
  (func (;12;) (type 1) (param i32) (result i32)
    i32.const 0
    call 1
    i32.const 0)
  (func (;13;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    get_local 2
    i32.const 8192
    i32.ge_s
    if  ;; label = @1
      get_local 0
      get_local 1
      get_local 2
      call 2
      drop
      get_local 0
      return
    end
    get_local 0
    set_local 4
    get_local 0
    get_local 2
    i32.add
    set_local 3
    get_local 0
    i32.const 3
    i32.and
    get_local 1
    i32.const 3
    i32.and
    i32.eq
    if  ;; label = @1
      loop  ;; label = @2
        get_local 0
        i32.const 3
        i32.and
        if  ;; label = @3
          get_local 2
          i32.eqz
          if  ;; label = @4
            get_local 4
            return
          end
          get_local 0
          get_local 1
          i32.load8_s
          i32.store8
          get_local 0
          i32.const 1
          i32.add
          set_local 0
          get_local 1
          i32.const 1
          i32.add
          set_local 1
          get_local 2
          i32.const 1
          i32.sub
          set_local 2
          br 1 (;@2;)
        end
      end
      get_local 3
      i32.const -4
      i32.and
      tee_local 2
      i32.const -64
      i32.add
      set_local 5
      loop  ;; label = @2
        get_local 0
        get_local 5
        i32.le_s
        if  ;; label = @3
          get_local 0
          get_local 1
          i32.load
          i32.store
          get_local 0
          get_local 1
          i32.load offset=4
          i32.store offset=4
          get_local 0
          get_local 1
          i32.load offset=8
          i32.store offset=8
          get_local 0
          get_local 1
          i32.load offset=12
          i32.store offset=12
          get_local 0
          get_local 1
          i32.load offset=16
          i32.store offset=16
          get_local 0
          get_local 1
          i32.load offset=20
          i32.store offset=20
          get_local 0
          get_local 1
          i32.load offset=24
          i32.store offset=24
          get_local 0
          get_local 1
          i32.load offset=28
          i32.store offset=28
          get_local 0
          get_local 1
          i32.load offset=32
          i32.store offset=32
          get_local 0
          get_local 1
          i32.load offset=36
          i32.store offset=36
          get_local 0
          get_local 1
          i32.load offset=40
          i32.store offset=40
          get_local 0
          get_local 1
          i32.load offset=44
          i32.store offset=44
          get_local 0
          get_local 1
          i32.load offset=48
          i32.store offset=48
          get_local 0
          get_local 1
          i32.load offset=52
          i32.store offset=52
          get_local 0
          get_local 1
          i32.load offset=56
          i32.store offset=56
          get_local 0
          get_local 1
          i32.load offset=60
          i32.store offset=60
          get_local 0
          i32.const -64
          i32.sub
          set_local 0
          get_local 1
          i32.const -64
          i32.sub
          set_local 1
          br 1 (;@2;)
        end
      end
      loop  ;; label = @2
        get_local 0
        get_local 2
        i32.lt_s
        if  ;; label = @3
          get_local 0
          get_local 1
          i32.load
          i32.store
          get_local 0
          i32.const 4
          i32.add
          set_local 0
          get_local 1
          i32.const 4
          i32.add
          set_local 1
          br 1 (;@2;)
        end
      end
    else
      get_local 3
      i32.const 4
      i32.sub
      set_local 2
      loop  ;; label = @2
        get_local 0
        get_local 2
        i32.lt_s
        if  ;; label = @3
          get_local 0
          get_local 1
          i32.load8_s
          i32.store8
          get_local 0
          get_local 1
          i32.load8_s offset=1
          i32.store8 offset=1
          get_local 0
          get_local 1
          i32.load8_s offset=2
          i32.store8 offset=2
          get_local 0
          get_local 1
          i32.load8_s offset=3
          i32.store8 offset=3
          get_local 0
          i32.const 4
          i32.add
          set_local 0
          get_local 1
          i32.const 4
          i32.add
          set_local 1
          br 1 (;@2;)
        end
      end
    end
    loop  ;; label = @1
      get_local 0
      get_local 3
      i32.lt_s
      if  ;; label = @2
        get_local 0
        get_local 1
        i32.load8_s
        i32.store8
        get_local 0
        i32.const 1
        i32.add
        set_local 0
        get_local 1
        i32.const 1
        i32.add
        set_local 1
        br 1 (;@1;)
      end
    end
    get_local 4)
  (func (;14;) (type 5)
    (local i32 i32 i32 i32)
    i32.const 1024
    i32.load
    tee_local 0
    i32.load offset=76
    i32.const -1
    i32.gt_s
    if i32  ;; label = @1
      i32.const 1
    else
      i32.const 0
    end
    drop
    block i32  ;; label = @1
      call 17
      tee_local 1
      set_local 3
      get_local 0
      i32.load offset=76
      drop
      get_local 3
    end
    get_local 1
    get_local 0
    call 15
    tee_local 2
    get_local 1
    get_local 1
    get_local 2
    i32.ne
    select
    i32.ne
    i32.const 31
    i32.shl
    i32.const 31
    i32.shr_s
    i32.const 0
    i32.lt_s
    if i32  ;; label = @1
      i32.const -1
    else
      block i32  ;; label = @2
        get_local 0
        i32.load8_s offset=75
        i32.const 10
        i32.ne
        if  ;; label = @3
          get_local 0
          i32.load offset=20
          tee_local 1
          get_local 0
          i32.load offset=16
          i32.lt_u
          if  ;; label = @4
            get_local 0
            get_local 1
            i32.const 1
            i32.add
            i32.store offset=20
            get_local 1
            i32.const 10
            i32.store8
            i32.const 0
            br 2 (;@2;)
          end
        end
        get_local 0
        call 16
      end
    end
    drop)
  (func (;15;) (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    i32.const 1152
    set_local 4
    block  ;; label = @1
      block  ;; label = @2
        get_local 1
        i32.load offset=16
        tee_local 2
        br_if 0 (;@2;)
        get_local 1
        call 7
        if i32  ;; label = @3
          i32.const 0
        else
          get_local 1
          i32.load offset=16
          set_local 2
          br 1 (;@2;)
        end
        set_local 3
        br 1 (;@1;)
      end
      get_local 2
      get_local 1
      i32.load offset=20
      tee_local 3
      i32.sub
      get_local 0
      i32.lt_u
      if  ;; label = @2
        get_local 1
        i32.const 1152
        get_local 0
        get_local 1
        i32.load offset=36
        i32.const 3
        i32.and
        i32.const 2
        i32.add
        call_indirect 0
        set_local 3
        br 1 (;@1;)
      end
      get_local 0
      i32.eqz
      get_local 1
      i32.load8_s offset=75
      i32.const 0
      i32.lt_s
      i32.or
      if  ;; label = @2
        i32.const 0
        set_local 2
      else
        block  ;; label = @3
          get_local 0
          set_local 2
          loop  ;; label = @4
            get_local 2
            i32.const -1
            i32.add
            tee_local 5
            i32.const 1152
            i32.add
            i32.load8_s
            i32.const 10
            i32.ne
            if  ;; label = @5
              get_local 5
              if  ;; label = @6
                get_local 5
                set_local 2
                br 2 (;@4;)
              else
                i32.const 0
                set_local 2
                br 3 (;@3;)
              end
              unreachable
            end
          end
          get_local 1
          i32.const 1152
          get_local 2
          get_local 1
          i32.load offset=36
          i32.const 3
          i32.and
          i32.const 2
          i32.add
          call_indirect 0
          tee_local 3
          get_local 2
          i32.lt_u
          br_if 2 (;@1;)
          get_local 2
          i32.const 1152
          i32.add
          set_local 4
          get_local 0
          get_local 2
          i32.sub
          set_local 0
          get_local 1
          i32.load offset=20
          set_local 3
        end
      end
      get_local 3
      get_local 4
      get_local 0
      call 13
      drop
      get_local 1
      get_local 0
      get_local 1
      i32.load offset=20
      i32.add
      i32.store offset=20
      get_local 0
      get_local 2
      i32.add
      set_local 3
    end
    get_local 3)
  (func (;16;) (type 1) (param i32) (result i32)
    (local i32 i32 i32)
    get_global 1
    set_local 2
    get_global 1
    i32.const 16
    i32.add
    set_global 1
    get_local 2
    i32.const 10
    i32.store8
    block  ;; label = @1
      block  ;; label = @2
        get_local 0
        i32.load offset=16
        tee_local 1
        br_if 0 (;@2;)
        get_local 0
        call 7
        if i32  ;; label = @3
          i32.const -1
        else
          get_local 0
          i32.load offset=16
          set_local 1
          br 1 (;@2;)
        end
        set_local 1
        br 1 (;@1;)
      end
      get_local 0
      i32.load offset=20
      tee_local 3
      get_local 1
      i32.lt_u
      if  ;; label = @2
        i32.const 10
        tee_local 1
        get_local 0
        i32.load8_s offset=75
        i32.ne
        if  ;; label = @3
          get_local 0
          get_local 3
          i32.const 1
          i32.add
          i32.store offset=20
          get_local 3
          i32.const 10
          i32.store8
          br 2 (;@1;)
        end
      end
      get_local 0
      get_local 2
      i32.const 1
      get_local 0
      i32.load offset=36
      i32.const 3
      i32.and
      i32.const 2
      i32.add
      call_indirect 0
      i32.const 1
      i32.eq
      if i32  ;; label = @2
        get_local 2
        i32.load8_u
      else
        i32.const -1
      end
      set_local 1
    end
    get_local 2
    set_global 1
    get_local 1)
  (func (;17;) (type 4) (result i32)
    (local i32 i32 i32)
    i32.const 1152
    set_local 0
    loop  ;; label = @1
      get_local 0
      i32.const 4
      i32.add
      set_local 1
      get_local 0
      i32.load
      tee_local 2
      i32.const -16843009
      i32.add
      get_local 2
      i32.const -2139062144
      i32.and
      i32.const -2139062144
      i32.xor
      i32.and
      i32.eqz
      if  ;; label = @2
        get_local 1
        set_local 0
        br 1 (;@1;)
      end
    end
    get_local 2
    i32.const 255
    i32.and
    if  ;; label = @1
      loop  ;; label = @2
        get_local 0
        i32.const 1
        i32.add
        tee_local 0
        i32.load8_s
        br_if 0 (;@2;)
      end
    end
    get_local 0
    i32.const 1152
    i32.sub)
  (func (;18;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    get_global 1
    set_local 3
    get_global 1
    i32.const 32
    i32.add
    set_global 1
    get_local 3
    i32.const 16
    i32.add
    set_local 4
    get_local 0
    i32.const 3
    i32.store offset=36
    get_local 0
    i32.load
    i32.const 64
    i32.and
    i32.eqz
    if  ;; label = @1
      get_local 3
      get_local 0
      i32.load offset=60
      i32.store
      get_local 3
      i32.const 21523
      i32.store offset=4
      get_local 3
      get_local 4
      i32.store offset=8
      i32.const 54
      get_local 3
      call 4
      if  ;; label = @2
        get_local 0
        i32.const -1
        i32.store8 offset=75
      end
    end
    get_local 0
    get_local 1
    get_local 2
    call 6
    set_local 5
    get_local 3
    set_global 1
    get_local 5)
  (func (;19;) (type 1) (param i32) (result i32)
    (local i32 i32)
    get_global 1
    set_local 2
    get_local 0
    get_global 1
    i32.add
    set_global 1
    get_global 1
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    set_global 1
    get_local 2)
  (global (;1;) (mut i32) (i32.const 4000))
  (export "g" (func 10))
  (export "h" (func 19))
  (elem (get_global 0) 12 9 11 18 8 6)
  (data (i32.const 1024) "\04\04\00\00\05")
  (data (i32.const 1040) "\01")
  (data (i32.const 1064) "\01\00\00\00\02\00\00\00\98\04\00\00\00\04")
  (data (i32.const 1088) "\01")
  (data (i32.const 1103) "\0a\ff\ff\ff\ff")
  (data (i32.const 1152) "Hello World!"))
