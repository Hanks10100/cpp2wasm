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
  (import "env" "table" (table (;0;) 6 6 funcref))
  (func (;6;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 1
    local.set 7
    global.get 1
    i32.const 48
    i32.add
    global.set 1
    local.get 7
    i32.const 32
    i32.add
    local.set 6
    local.get 7
    local.tee 3
    local.get 0
    i32.load offset=28
    local.tee 5
    i32.store
    local.get 3
    local.get 0
    i32.load offset=20
    local.get 5
    i32.sub
    local.tee 5
    i32.store offset=4
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 3
    i32.const 16
    i32.add
    local.tee 1
    local.get 0
    i32.load offset=60
    i32.store
    local.get 1
    local.get 3
    i32.store offset=4
    local.get 1
    i32.const 2
    i32.store offset=8
    i32.const 146
    local.get 1
    call 0
    local.tee 4
    i32.const -4096
    i32.gt_u
    if  ;; label = @1
      i32.const 2704
      i32.const 0
      local.get 4
      i32.sub
      i32.store
      i32.const -1
      local.set 4
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        local.get 2
        local.get 5
        i32.add
        local.tee 5
        i32.eq
        br_if 0 (;@2;)
        i32.const 2
        local.set 8
        local.get 3
        local.set 1
        local.get 4
        local.set 3
        loop  ;; label = @3
          local.get 3
          i32.const 0
          i32.ge_s
          if  ;; label = @4
            local.get 1
            i32.const 8
            i32.add
            local.get 1
            local.get 3
            local.get 1
            i32.load offset=4
            local.tee 9
            i32.gt_u
            local.tee 4
            select
            local.tee 1
            local.get 3
            local.get 9
            i32.const 0
            local.get 4
            select
            i32.sub
            local.tee 9
            local.get 1
            i32.load
            i32.add
            i32.store
            local.get 1
            local.get 1
            i32.load offset=4
            local.get 9
            i32.sub
            i32.store offset=4
            local.get 6
            local.get 0
            i32.load offset=60
            i32.store
            local.get 6
            local.get 1
            i32.store offset=4
            local.get 6
            local.get 8
            local.get 4
            i32.const 31
            i32.shl
            i32.const 31
            i32.shr_s
            i32.add
            local.tee 8
            i32.store offset=8
            block (result i32)  ;; label = @5
              local.get 5
              local.get 3
              i32.sub
              local.tee 5
              local.set 10
              i32.const 146
              local.get 6
              call 0
              local.tee 3
              i32.const -4096
              i32.gt_u
              if  ;; label = @6
                i32.const 2704
                i32.const 0
                local.get 3
                i32.sub
                i32.store
                i32.const -1
                local.set 3
              end
              local.get 10
            end
            local.get 3
            i32.eq
            br_if 2 (;@2;)
            br 1 (;@3;)
          end
        end
        local.get 0
        i32.const 0
        i32.store offset=16
        local.get 0
        i32.const 0
        i32.store offset=28
        local.get 0
        i32.const 0
        i32.store offset=20
        local.get 0
        local.get 0
        i32.load
        i32.const 32
        i32.or
        i32.store
        local.get 8
        i32.const 2
        i32.eq
        if (result i32)  ;; label = @3
          i32.const 0
        else
          local.get 2
          local.get 1
          i32.load offset=4
          i32.sub
        end
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      local.get 0
      i32.load offset=44
      local.tee 1
      local.get 0
      i32.load offset=48
      i32.add
      i32.store offset=16
      local.get 0
      local.get 1
      i32.store offset=28
      local.get 0
      local.get 1
      i32.store offset=20
    end
    local.get 7
    global.set 1
    local.get 2)
  (func (;7;) (type 1) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load8_s offset=74
    local.tee 1
    local.get 1
    i32.const 255
    i32.add
    i32.or
    i32.store8 offset=74
    local.get 0
    i32.load
    local.tee 1
    i32.const 8
    i32.and
    if (result i32)  ;; label = @1
      local.get 0
      local.get 1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
    else
      local.get 0
      i32.const 0
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=4
      local.get 0
      local.get 0
      i32.load offset=44
      local.tee 1
      i32.store offset=28
      local.get 0
      local.get 1
      i32.store offset=20
      local.get 0
      local.get 1
      local.get 0
      i32.load offset=48
      i32.add
      i32.store offset=16
      i32.const 0
    end)
  (func (;8;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get 1
    local.set 3
    global.get 1
    i32.const 32
    i32.add
    global.set 1
    local.get 3
    local.get 0
    i32.load offset=60
    i32.store
    local.get 3
    i32.const 0
    i32.store offset=4
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 3
    i32.const 20
    i32.add
    i32.store offset=12
    local.get 3
    local.get 2
    i32.store offset=16
    i32.const 140
    local.get 3
    call 5
    local.tee 0
    i32.const -4096
    i32.gt_u
    if (result i32)  ;; label = @1
      i32.const 2704
      i32.const 0
      local.get 0
      i32.sub
      i32.store
      i32.const -1
    else
      local.get 0
    end
    i32.const 0
    i32.lt_s
    if (result i32)  ;; label = @1
      local.get 3
      i32.const -1
      i32.store offset=20
      i32.const -1
    else
      local.get 3
      i32.load offset=20
    end
    local.set 4
    local.get 3
    global.set 1
    local.get 4)
  (func (;9;) (type 1) (param i32) (result i32)
    (local i32)
    global.get 1
    local.set 1
    global.get 1
    i32.const 16
    i32.add
    global.set 1
    local.get 1
    local.get 0
    i32.load offset=60
    i32.store
    i32.const 6
    local.get 1
    call 3
    local.tee 0
    i32.const -4096
    i32.gt_u
    if  ;; label = @1
      i32.const 2704
      i32.const 0
      local.get 0
      i32.sub
      i32.store
      i32.const -1
      local.set 0
    end
    local.get 1
    global.set 1
    local.get 0)
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
    local.get 2
    i32.const 8192
    i32.ge_s
    if  ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      call 2
      drop
      local.get 0
      return
    end
    local.get 0
    local.set 4
    local.get 0
    local.get 2
    i32.add
    local.set 3
    local.get 0
    i32.const 3
    i32.and
    local.get 1
    i32.const 3
    i32.and
    i32.eq
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.const 3
        i32.and
        if  ;; label = @3
          local.get 2
          i32.eqz
          if  ;; label = @4
            local.get 4
            return
          end
          local.get 0
          local.get 1
          i32.load8_s
          i32.store8
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 2
          i32.const 1
          i32.sub
          local.set 2
          br 1 (;@2;)
        end
      end
      local.get 3
      i32.const -4
      i32.and
      local.tee 2
      i32.const -64
      i32.add
      local.set 5
      loop  ;; label = @2
        local.get 0
        local.get 5
        i32.le_s
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.load
          i32.store
          local.get 0
          local.get 1
          i32.load offset=4
          i32.store offset=4
          local.get 0
          local.get 1
          i32.load offset=8
          i32.store offset=8
          local.get 0
          local.get 1
          i32.load offset=12
          i32.store offset=12
          local.get 0
          local.get 1
          i32.load offset=16
          i32.store offset=16
          local.get 0
          local.get 1
          i32.load offset=20
          i32.store offset=20
          local.get 0
          local.get 1
          i32.load offset=24
          i32.store offset=24
          local.get 0
          local.get 1
          i32.load offset=28
          i32.store offset=28
          local.get 0
          local.get 1
          i32.load offset=32
          i32.store offset=32
          local.get 0
          local.get 1
          i32.load offset=36
          i32.store offset=36
          local.get 0
          local.get 1
          i32.load offset=40
          i32.store offset=40
          local.get 0
          local.get 1
          i32.load offset=44
          i32.store offset=44
          local.get 0
          local.get 1
          i32.load offset=48
          i32.store offset=48
          local.get 0
          local.get 1
          i32.load offset=52
          i32.store offset=52
          local.get 0
          local.get 1
          i32.load offset=56
          i32.store offset=56
          local.get 0
          local.get 1
          i32.load offset=60
          i32.store offset=60
          local.get 0
          i32.const -64
          i32.sub
          local.set 0
          local.get 1
          i32.const -64
          i32.sub
          local.set 1
          br 1 (;@2;)
        end
      end
      loop  ;; label = @2
        local.get 0
        local.get 2
        i32.lt_s
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.load
          i32.store
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          br 1 (;@2;)
        end
      end
    else
      local.get 3
      i32.const 4
      i32.sub
      local.set 2
      loop  ;; label = @2
        local.get 0
        local.get 2
        i32.lt_s
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.load8_s
          i32.store8
          local.get 0
          local.get 1
          i32.load8_s offset=1
          i32.store8 offset=1
          local.get 0
          local.get 1
          i32.load8_s offset=2
          i32.store8 offset=2
          local.get 0
          local.get 1
          i32.load8_s offset=3
          i32.store8 offset=3
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          br 1 (;@2;)
        end
      end
    end
    loop  ;; label = @1
      local.get 0
      local.get 3
      i32.lt_s
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.load8_s
        i32.store8
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 1 (;@1;)
      end
    end
    local.get 4)
  (func (;14;) (type 5)
    (local i32 i32 i32 i32)
    i32.const 1024
    i32.load
    local.tee 0
    i32.load offset=76
    i32.const -1
    i32.gt_s
    if (result i32)  ;; label = @1
      i32.const 1
    else
      i32.const 0
    end
    drop
    block (result i32)  ;; label = @1
      call 17
      local.tee 1
      local.set 3
      local.get 0
      i32.load offset=76
      drop
      local.get 3
    end
    local.get 1
    local.get 0
    call 15
    local.tee 2
    local.get 1
    local.get 1
    local.get 2
    i32.ne
    select
    i32.ne
    i32.const 31
    i32.shl
    i32.const 31
    i32.shr_s
    i32.const 0
    i32.lt_s
    if (result i32)  ;; label = @1
      i32.const -1
    else
      block (result i32)  ;; label = @2
        local.get 0
        i32.load8_s offset=75
        i32.const 10
        i32.ne
        if  ;; label = @3
          local.get 0
          i32.load offset=20
          local.tee 1
          local.get 0
          i32.load offset=16
          i32.lt_u
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.const 1
            i32.add
            i32.store offset=20
            local.get 1
            i32.const 10
            i32.store8
            i32.const 0
            br 2 (;@2;)
          end
        end
        local.get 0
        call 16
      end
    end
    drop)
  (func (;15;) (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    i32.const 1152
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=16
        local.tee 2
        br_if 0 (;@2;)
        local.get 1
        call 7
        if (result i32)  ;; label = @3
          i32.const 0
        else
          local.get 1
          i32.load offset=16
          local.set 2
          br 1 (;@2;)
        end
        local.set 3
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.load offset=20
      local.tee 3
      i32.sub
      local.get 0
      i32.lt_u
      if  ;; label = @2
        local.get 1
        i32.const 1152
        local.get 0
        local.get 1
        i32.load offset=36
        i32.const 3
        i32.and
        i32.const 2
        i32.add
        call_indirect (type 0)
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.eqz
      local.get 1
      i32.load8_s offset=75
      i32.const 0
      i32.lt_s
      i32.or
      if  ;; label = @2
        i32.const 0
        local.set 2
      else
        block  ;; label = @3
          local.get 0
          local.set 2
          loop  ;; label = @4
            local.get 2
            i32.const -1
            i32.add
            local.tee 5
            i32.const 1152
            i32.add
            i32.load8_s
            i32.const 10
            i32.ne
            if  ;; label = @5
              local.get 5
              if  ;; label = @6
                local.get 5
                local.set 2
                br 2 (;@4;)
              else
                i32.const 0
                local.set 2
                br 3 (;@3;)
              end
              unreachable
            end
          end
          local.get 1
          i32.const 1152
          local.get 2
          local.get 1
          i32.load offset=36
          i32.const 3
          i32.and
          i32.const 2
          i32.add
          call_indirect (type 0)
          local.tee 3
          local.get 2
          i32.lt_u
          br_if 2 (;@1;)
          local.get 2
          i32.const 1152
          i32.add
          local.set 4
          local.get 0
          local.get 2
          i32.sub
          local.set 0
          local.get 1
          i32.load offset=20
          local.set 3
        end
      end
      local.get 3
      local.get 4
      local.get 0
      call 13
      drop
      local.get 1
      local.get 0
      local.get 1
      i32.load offset=20
      i32.add
      i32.store offset=20
      local.get 0
      local.get 2
      i32.add
      local.set 3
    end
    local.get 3)
  (func (;16;) (type 1) (param i32) (result i32)
    (local i32 i32 i32)
    global.get 1
    local.set 2
    global.get 1
    i32.const 16
    i32.add
    global.set 1
    local.get 2
    i32.const 10
    i32.store8
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=16
        local.tee 1
        br_if 0 (;@2;)
        local.get 0
        call 7
        if (result i32)  ;; label = @3
          i32.const -1
        else
          local.get 0
          i32.load offset=16
          local.set 1
          br 1 (;@2;)
        end
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      i32.load offset=20
      local.tee 3
      local.get 1
      i32.lt_u
      if  ;; label = @2
        i32.const 10
        local.tee 1
        local.get 0
        i32.load8_s offset=75
        i32.ne
        if  ;; label = @3
          local.get 0
          local.get 3
          i32.const 1
          i32.add
          i32.store offset=20
          local.get 3
          i32.const 10
          i32.store8
          br 2 (;@1;)
        end
      end
      local.get 0
      local.get 2
      i32.const 1
      local.get 0
      i32.load offset=36
      i32.const 3
      i32.and
      i32.const 2
      i32.add
      call_indirect (type 0)
      i32.const 1
      i32.eq
      if (result i32)  ;; label = @2
        local.get 2
        i32.load8_u
      else
        i32.const -1
      end
      local.set 1
    end
    local.get 2
    global.set 1
    local.get 1)
  (func (;17;) (type 4) (result i32)
    (local i32 i32 i32)
    i32.const 1152
    local.set 0
    loop  ;; label = @1
      local.get 0
      i32.const 4
      i32.add
      local.set 1
      local.get 0
      i32.load
      local.tee 2
      i32.const -16843009
      i32.add
      local.get 2
      i32.const -2139062144
      i32.and
      i32.const -2139062144
      i32.xor
      i32.and
      i32.eqz
      if  ;; label = @2
        local.get 1
        local.set 0
        br 1 (;@1;)
      end
    end
    local.get 2
    i32.const 255
    i32.and
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.const 1
        i32.add
        local.tee 0
        i32.load8_s
        br_if 0 (;@2;)
      end
    end
    local.get 0
    i32.const 1152
    i32.sub)
  (func (;18;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 1
    local.set 3
    global.get 1
    i32.const 32
    i32.add
    global.set 1
    local.get 3
    i32.const 16
    i32.add
    local.set 4
    local.get 0
    i32.const 3
    i32.store offset=36
    local.get 0
    i32.load
    i32.const 64
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 3
      local.get 0
      i32.load offset=60
      i32.store
      local.get 3
      i32.const 21523
      i32.store offset=4
      local.get 3
      local.get 4
      i32.store offset=8
      i32.const 54
      local.get 3
      call 4
      if  ;; label = @2
        local.get 0
        i32.const -1
        i32.store8 offset=75
      end
    end
    local.get 0
    local.get 1
    local.get 2
    call 6
    local.set 5
    local.get 3
    global.set 1
    local.get 5)
  (func (;19;) (type 1) (param i32) (result i32)
    (local i32 i32)
    global.get 1
    local.set 2
    local.get 0
    global.get 1
    i32.add
    global.set 1
    global.get 1
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    global.set 1
    local.get 2)
  (global (;1;) (mut i32) (i32.const 4000))
  (export "g" (func 10))
  (export "h" (func 19))
  (elem (;0;) (global.get 0) func 12 9 11 18 8 6)
  (data (;0;) (i32.const 1024) "\04\04\00\00\05")
  (data (;1;) (i32.const 1040) "\01")
  (data (;2;) (i32.const 1064) "\01\00\00\00\02\00\00\00\98\04\00\00\00\04")
  (data (;3;) (i32.const 1088) "\01")
  (data (;4;) (i32.const 1103) "\0a\ff\ff\ff\ff")
  (data (;5;) (i32.const 1152) "Hello World!"))
