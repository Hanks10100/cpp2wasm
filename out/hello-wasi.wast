(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i64 i32) (result i64)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i64 i32 i32) (result i32)))
  (type (;7;) (func))
  (type (;8;) (func (result i32)))
  (import "wasi_unstable" "fd_prestat_get" (func __wasi_fd_prestat_get (type 2)))
  (import "wasi_unstable" "fd_prestat_dir_name" (func __wasi_fd_prestat_dir_name (type 0)))
  (import "wasi_unstable" "proc_exit" (func __wasi_proc_exit (type 3)))
  (import "wasi_unstable" "fd_fdstat_get" (func __wasi_fd_fdstat_get (type 2)))
  (import "wasi_unstable" "fd_close" (func __wasi_fd_close (type 4)))
  (import "wasi_unstable" "fd_write" (func __wasi_fd_write (type 5)))
  (import "wasi_unstable" "fd_seek" (func __wasi_fd_seek (type 6)))
  (func __wasm_call_ctors (type 7))
  (func undefined:__wasilibc_populate_environ (type 8) (result i32)
    unreachable)
  (func _start (type 7)
    (local i32 i32 i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 0
    set_global 0
    call __wasilibc_init_preopen
    i32.const 3
    set_local 1
    block  ;; label = @1
      loop  ;; label = @2
        get_local 1
        get_local 0
        i32.const 8
        i32.add
        call __wasi_fd_prestat_get
        tee_local 2
        i32.const 8
        i32.gt_u
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            get_local 2
            br_table 0 (;@4;) 3 (;@1;) 3 (;@1;) 3 (;@1;) 3 (;@1;) 3 (;@1;) 3 (;@1;) 3 (;@1;) 1 (;@3;) 0 (;@4;)
          end
          block  ;; label = @4
            get_local 0
            i32.load8_u offset=8
            br_if 0 (;@4;)
            get_local 0
            i32.load offset=12
            tee_local 3
            i32.const 1
            i32.add
            call malloc
            tee_local 2
            i32.eqz
            br_if 3 (;@1;)
            block  ;; label = @5
              get_local 1
              get_local 2
              get_local 3
              call __wasi_fd_prestat_dir_name
              i32.eqz
              br_if 0 (;@5;)
              get_local 2
              call free
              br 4 (;@1;)
            end
            get_local 2
            get_local 0
            i32.load offset=12
            i32.add
            i32.const 0
            i32.store8
            get_local 1
            get_local 2
            call __wasilibc_register_preopened_fd
            set_local 3
            get_local 2
            call free
            get_local 3
            br_if 3 (;@1;)
          end
          get_local 1
          i32.const 1
          i32.add
          tee_local 2
          get_local 1
          i32.lt_u
          set_local 3
          get_local 2
          set_local 1
          get_local 3
          i32.eqz
          br_if 1 (;@2;)
        end
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.eqz
            br_if 0 (;@4;)
            call undefined:__wasilibc_populate_environ
            br_if 1 (;@3;)
          end
          call __wasm_call_ctors
          call __original_main
          set_local 1
          call __prepare_for_exit
          get_local 1
          br_if 1 (;@2;)
          get_local 0
          i32.const 16
          i32.add
          set_global 0
          return
        end
        i32.const 71
        call _Exit
        unreachable
      end
      get_local 1
      call _Exit
      unreachable
    end
    i32.const 71
    call _Exit
    unreachable)
  (func __original_main (type 8) (result i32)
    i32.const 1024
    call puts
    drop
    i32.const 0)
  (func malloc (type 4) (param i32) (result i32)
    get_local 0
    call dlmalloc)
  (func dlmalloc (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    set_global 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            get_local 0
                            i32.const 236
                            i32.gt_u
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1040
                              tee_local 2
                              i32.const 16
                              get_local 0
                              i32.const 19
                              i32.add
                              i32.const -16
                              i32.and
                              get_local 0
                              i32.const 11
                              i32.lt_u
                              select
                              tee_local 3
                              i32.const 3
                              i32.shr_u
                              tee_local 4
                              i32.shr_u
                              tee_local 0
                              i32.const 3
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              get_local 0
                              i32.const 1
                              i32.and
                              get_local 4
                              i32.or
                              i32.const 1
                              i32.xor
                              tee_local 3
                              i32.const 3
                              i32.shl
                              tee_local 5
                              i32.const 1088
                              i32.add
                              i32.load
                              tee_local 4
                              i32.const 8
                              i32.add
                              set_local 0
                              block  ;; label = @14
                                block  ;; label = @15
                                  get_local 4
                                  i32.load offset=8
                                  tee_local 6
                                  get_local 5
                                  i32.const 1080
                                  i32.add
                                  tee_local 5
                                  i32.ne
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  get_local 2
                                  i32.const -2
                                  get_local 3
                                  i32.rotl
                                  i32.and
                                  i32.store offset=1040
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                i32.load offset=1056
                                get_local 6
                                i32.gt_u
                                drop
                                get_local 5
                                get_local 6
                                i32.store offset=8
                                get_local 6
                                get_local 5
                                i32.store offset=12
                              end
                              get_local 4
                              get_local 3
                              i32.const 3
                              i32.shl
                              tee_local 6
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              get_local 4
                              get_local 6
                              i32.add
                              tee_local 4
                              get_local 4
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              br 12 (;@1;)
                            end
                            get_local 3
                            i32.const 0
                            i32.load offset=1048
                            tee_local 7
                            i32.le_u
                            br_if 1 (;@11;)
                            block  ;; label = @13
                              get_local 0
                              i32.eqz
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  get_local 0
                                  get_local 4
                                  i32.shl
                                  i32.const 2
                                  get_local 4
                                  i32.shl
                                  tee_local 0
                                  i32.const 0
                                  get_local 0
                                  i32.sub
                                  i32.or
                                  i32.and
                                  tee_local 0
                                  i32.const 0
                                  get_local 0
                                  i32.sub
                                  i32.and
                                  i32.const -1
                                  i32.add
                                  tee_local 0
                                  get_local 0
                                  i32.const 12
                                  i32.shr_u
                                  i32.const 16
                                  i32.and
                                  tee_local 0
                                  i32.shr_u
                                  tee_local 4
                                  i32.const 5
                                  i32.shr_u
                                  i32.const 8
                                  i32.and
                                  tee_local 6
                                  get_local 0
                                  i32.or
                                  get_local 4
                                  get_local 6
                                  i32.shr_u
                                  tee_local 0
                                  i32.const 2
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  tee_local 4
                                  i32.or
                                  get_local 0
                                  get_local 4
                                  i32.shr_u
                                  tee_local 0
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 2
                                  i32.and
                                  tee_local 4
                                  i32.or
                                  get_local 0
                                  get_local 4
                                  i32.shr_u
                                  tee_local 0
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 1
                                  i32.and
                                  tee_local 4
                                  i32.or
                                  get_local 0
                                  get_local 4
                                  i32.shr_u
                                  i32.add
                                  tee_local 6
                                  i32.const 3
                                  i32.shl
                                  tee_local 5
                                  i32.const 1088
                                  i32.add
                                  i32.load
                                  tee_local 4
                                  i32.load offset=8
                                  tee_local 0
                                  get_local 5
                                  i32.const 1080
                                  i32.add
                                  tee_local 5
                                  i32.ne
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  get_local 2
                                  i32.const -2
                                  get_local 6
                                  i32.rotl
                                  i32.and
                                  tee_local 2
                                  i32.store offset=1040
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                i32.load offset=1056
                                get_local 0
                                i32.gt_u
                                drop
                                get_local 5
                                get_local 0
                                i32.store offset=8
                                get_local 0
                                get_local 5
                                i32.store offset=12
                              end
                              get_local 4
                              i32.const 8
                              i32.add
                              set_local 0
                              get_local 4
                              get_local 3
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              get_local 4
                              get_local 6
                              i32.const 3
                              i32.shl
                              tee_local 6
                              i32.add
                              get_local 6
                              get_local 3
                              i32.sub
                              tee_local 6
                              i32.store
                              get_local 4
                              get_local 3
                              i32.add
                              tee_local 5
                              get_local 6
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              block  ;; label = @14
                                get_local 7
                                i32.eqz
                                br_if 0 (;@14;)
                                get_local 7
                                i32.const 3
                                i32.shr_u
                                tee_local 8
                                i32.const 3
                                i32.shl
                                i32.const 1080
                                i32.add
                                set_local 3
                                i32.const 0
                                i32.load offset=1060
                                set_local 4
                                block  ;; label = @15
                                  block  ;; label = @16
                                    get_local 2
                                    i32.const 1
                                    get_local 8
                                    i32.shl
                                    tee_local 8
                                    i32.and
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    get_local 2
                                    get_local 8
                                    i32.or
                                    i32.store offset=1040
                                    get_local 3
                                    set_local 8
                                    br 1 (;@15;)
                                  end
                                  get_local 3
                                  i32.load offset=8
                                  set_local 8
                                end
                                get_local 8
                                get_local 4
                                i32.store offset=12
                                get_local 3
                                get_local 4
                                i32.store offset=8
                                get_local 4
                                get_local 3
                                i32.store offset=12
                                get_local 4
                                get_local 8
                                i32.store offset=8
                              end
                              i32.const 0
                              get_local 5
                              i32.store offset=1060
                              i32.const 0
                              get_local 6
                              i32.store offset=1048
                              br 12 (;@1;)
                            end
                            i32.const 0
                            i32.load offset=1044
                            tee_local 9
                            i32.eqz
                            br_if 1 (;@11;)
                            get_local 9
                            i32.const 0
                            get_local 9
                            i32.sub
                            i32.and
                            i32.const -1
                            i32.add
                            tee_local 0
                            get_local 0
                            i32.const 12
                            i32.shr_u
                            i32.const 16
                            i32.and
                            tee_local 0
                            i32.shr_u
                            tee_local 4
                            i32.const 5
                            i32.shr_u
                            i32.const 8
                            i32.and
                            tee_local 6
                            get_local 0
                            i32.or
                            get_local 4
                            get_local 6
                            i32.shr_u
                            tee_local 0
                            i32.const 2
                            i32.shr_u
                            i32.const 4
                            i32.and
                            tee_local 4
                            i32.or
                            get_local 0
                            get_local 4
                            i32.shr_u
                            tee_local 0
                            i32.const 1
                            i32.shr_u
                            i32.const 2
                            i32.and
                            tee_local 4
                            i32.or
                            get_local 0
                            get_local 4
                            i32.shr_u
                            tee_local 0
                            i32.const 1
                            i32.shr_u
                            i32.const 1
                            i32.and
                            tee_local 4
                            i32.or
                            get_local 0
                            get_local 4
                            i32.shr_u
                            i32.add
                            i32.const 2
                            i32.shl
                            i32.const 1344
                            i32.add
                            i32.load
                            tee_local 5
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            get_local 3
                            i32.sub
                            set_local 4
                            get_local 5
                            set_local 6
                            block  ;; label = @13
                              loop  ;; label = @14
                                block  ;; label = @15
                                  get_local 6
                                  i32.load offset=16
                                  tee_local 0
                                  br_if 0 (;@15;)
                                  get_local 6
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  tee_local 0
                                  i32.eqz
                                  br_if 2 (;@13;)
                                end
                                get_local 0
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                get_local 3
                                i32.sub
                                tee_local 6
                                get_local 4
                                get_local 6
                                get_local 4
                                i32.lt_u
                                tee_local 6
                                select
                                set_local 4
                                get_local 0
                                get_local 5
                                get_local 6
                                select
                                set_local 5
                                get_local 0
                                set_local 6
                                br 0 (;@14;)
                              end
                            end
                            get_local 5
                            i32.load offset=24
                            set_local 10
                            block  ;; label = @13
                              get_local 5
                              i32.load offset=12
                              tee_local 8
                              get_local 5
                              i32.eq
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                i32.const 0
                                i32.load offset=1056
                                get_local 5
                                i32.load offset=8
                                tee_local 0
                                i32.gt_u
                                br_if 0 (;@14;)
                                get_local 0
                                i32.load offset=12
                                get_local 5
                                i32.ne
                                drop
                              end
                              get_local 8
                              get_local 0
                              i32.store offset=8
                              get_local 0
                              get_local 8
                              i32.store offset=12
                              br 11 (;@2;)
                            end
                            block  ;; label = @13
                              get_local 5
                              i32.const 20
                              i32.add
                              tee_local 6
                              i32.load
                              tee_local 0
                              br_if 0 (;@13;)
                              get_local 5
                              i32.load offset=16
                              tee_local 0
                              i32.eqz
                              br_if 3 (;@10;)
                              get_local 5
                              i32.const 16
                              i32.add
                              set_local 6
                            end
                            loop  ;; label = @13
                              get_local 6
                              set_local 11
                              get_local 0
                              tee_local 8
                              i32.const 20
                              i32.add
                              tee_local 6
                              i32.load
                              tee_local 0
                              br_if 0 (;@13;)
                              get_local 8
                              i32.const 16
                              i32.add
                              set_local 6
                              get_local 8
                              i32.load offset=16
                              tee_local 0
                              br_if 0 (;@13;)
                            end
                            get_local 11
                            i32.const 0
                            i32.store
                            br 10 (;@2;)
                          end
                          i32.const -1
                          set_local 3
                          get_local 0
                          i32.const -65
                          i32.gt_u
                          br_if 0 (;@11;)
                          get_local 0
                          i32.const 19
                          i32.add
                          tee_local 0
                          i32.const -16
                          i32.and
                          set_local 3
                          i32.const 0
                          i32.load offset=1044
                          tee_local 7
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 0
                          set_local 11
                          block  ;; label = @12
                            get_local 0
                            i32.const 8
                            i32.shr_u
                            tee_local 0
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 31
                            set_local 11
                            get_local 3
                            i32.const 16777215
                            i32.gt_u
                            br_if 0 (;@12;)
                            get_local 0
                            get_local 0
                            i32.const 1048320
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 8
                            i32.and
                            tee_local 4
                            i32.shl
                            tee_local 0
                            get_local 0
                            i32.const 520192
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 4
                            i32.and
                            tee_local 0
                            i32.shl
                            tee_local 6
                            get_local 6
                            i32.const 245760
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 2
                            i32.and
                            tee_local 6
                            i32.shl
                            i32.const 15
                            i32.shr_u
                            get_local 0
                            get_local 4
                            i32.or
                            get_local 6
                            i32.or
                            i32.sub
                            tee_local 0
                            i32.const 1
                            i32.shl
                            get_local 3
                            get_local 0
                            i32.const 21
                            i32.add
                            i32.shr_u
                            i32.const 1
                            i32.and
                            i32.or
                            i32.const 28
                            i32.add
                            set_local 11
                          end
                          i32.const 0
                          get_local 3
                          i32.sub
                          set_local 6
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  get_local 11
                                  i32.const 2
                                  i32.shl
                                  i32.const 1344
                                  i32.add
                                  i32.load
                                  tee_local 4
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  set_local 0
                                  i32.const 0
                                  set_local 8
                                  br 1 (;@14;)
                                end
                                get_local 3
                                i32.const 0
                                i32.const 25
                                get_local 11
                                i32.const 1
                                i32.shr_u
                                i32.sub
                                get_local 11
                                i32.const 31
                                i32.eq
                                select
                                i32.shl
                                set_local 5
                                i32.const 0
                                set_local 0
                                i32.const 0
                                set_local 8
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    get_local 4
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    get_local 3
                                    i32.sub
                                    tee_local 2
                                    get_local 6
                                    i32.ge_u
                                    br_if 0 (;@16;)
                                    get_local 2
                                    set_local 6
                                    get_local 4
                                    set_local 8
                                    get_local 2
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    set_local 6
                                    get_local 4
                                    set_local 8
                                    get_local 4
                                    set_local 0
                                    br 3 (;@13;)
                                  end
                                  get_local 0
                                  get_local 4
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  tee_local 2
                                  get_local 2
                                  get_local 4
                                  get_local 5
                                  i32.const 29
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  i32.load
                                  tee_local 4
                                  i32.eq
                                  select
                                  get_local 0
                                  get_local 2
                                  select
                                  set_local 0
                                  get_local 5
                                  get_local 4
                                  i32.const 0
                                  i32.ne
                                  i32.shl
                                  set_local 5
                                  get_local 4
                                  br_if 0 (;@15;)
                                end
                              end
                              block  ;; label = @14
                                get_local 0
                                get_local 8
                                i32.or
                                br_if 0 (;@14;)
                                i32.const 2
                                get_local 11
                                i32.shl
                                tee_local 0
                                i32.const 0
                                get_local 0
                                i32.sub
                                i32.or
                                get_local 7
                                i32.and
                                tee_local 0
                                i32.eqz
                                br_if 3 (;@11;)
                                get_local 0
                                i32.const 0
                                get_local 0
                                i32.sub
                                i32.and
                                i32.const -1
                                i32.add
                                tee_local 0
                                get_local 0
                                i32.const 12
                                i32.shr_u
                                i32.const 16
                                i32.and
                                tee_local 0
                                i32.shr_u
                                tee_local 4
                                i32.const 5
                                i32.shr_u
                                i32.const 8
                                i32.and
                                tee_local 5
                                get_local 0
                                i32.or
                                get_local 4
                                get_local 5
                                i32.shr_u
                                tee_local 0
                                i32.const 2
                                i32.shr_u
                                i32.const 4
                                i32.and
                                tee_local 4
                                i32.or
                                get_local 0
                                get_local 4
                                i32.shr_u
                                tee_local 0
                                i32.const 1
                                i32.shr_u
                                i32.const 2
                                i32.and
                                tee_local 4
                                i32.or
                                get_local 0
                                get_local 4
                                i32.shr_u
                                tee_local 0
                                i32.const 1
                                i32.shr_u
                                i32.const 1
                                i32.and
                                tee_local 4
                                i32.or
                                get_local 0
                                get_local 4
                                i32.shr_u
                                i32.add
                                i32.const 2
                                i32.shl
                                i32.const 1344
                                i32.add
                                i32.load
                                set_local 0
                              end
                              get_local 0
                              i32.eqz
                              br_if 1 (;@12;)
                            end
                            loop  ;; label = @13
                              get_local 0
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              get_local 3
                              i32.sub
                              tee_local 2
                              get_local 6
                              i32.lt_u
                              set_local 5
                              block  ;; label = @14
                                get_local 0
                                i32.load offset=16
                                tee_local 4
                                br_if 0 (;@14;)
                                get_local 0
                                i32.const 20
                                i32.add
                                i32.load
                                set_local 4
                              end
                              get_local 2
                              get_local 6
                              get_local 5
                              select
                              set_local 6
                              get_local 0
                              get_local 8
                              get_local 5
                              select
                              set_local 8
                              get_local 4
                              set_local 0
                              get_local 4
                              br_if 0 (;@13;)
                            end
                          end
                          get_local 8
                          i32.eqz
                          br_if 0 (;@11;)
                          get_local 6
                          i32.const 0
                          i32.load offset=1048
                          get_local 3
                          i32.sub
                          i32.ge_u
                          br_if 0 (;@11;)
                          get_local 8
                          i32.load offset=24
                          set_local 11
                          block  ;; label = @12
                            get_local 8
                            i32.load offset=12
                            tee_local 5
                            get_local 8
                            i32.eq
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1056
                              get_local 8
                              i32.load offset=8
                              tee_local 0
                              i32.gt_u
                              br_if 0 (;@13;)
                              get_local 0
                              i32.load offset=12
                              get_local 8
                              i32.ne
                              drop
                            end
                            get_local 5
                            get_local 0
                            i32.store offset=8
                            get_local 0
                            get_local 5
                            i32.store offset=12
                            br 9 (;@3;)
                          end
                          block  ;; label = @12
                            get_local 8
                            i32.const 20
                            i32.add
                            tee_local 4
                            i32.load
                            tee_local 0
                            br_if 0 (;@12;)
                            get_local 8
                            i32.load offset=16
                            tee_local 0
                            i32.eqz
                            br_if 3 (;@9;)
                            get_local 8
                            i32.const 16
                            i32.add
                            set_local 4
                          end
                          loop  ;; label = @12
                            get_local 4
                            set_local 2
                            get_local 0
                            tee_local 5
                            i32.const 20
                            i32.add
                            tee_local 4
                            i32.load
                            tee_local 0
                            br_if 0 (;@12;)
                            get_local 5
                            i32.const 16
                            i32.add
                            set_local 4
                            get_local 5
                            i32.load offset=16
                            tee_local 0
                            br_if 0 (;@12;)
                          end
                          get_local 2
                          i32.const 0
                          i32.store
                          br 8 (;@3;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1048
                          tee_local 0
                          get_local 3
                          i32.lt_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=1060
                          set_local 4
                          block  ;; label = @12
                            block  ;; label = @13
                              get_local 0
                              get_local 3
                              i32.sub
                              tee_local 6
                              i32.const 16
                              i32.lt_u
                              br_if 0 (;@13;)
                              get_local 4
                              get_local 3
                              i32.add
                              tee_local 5
                              get_local 6
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              i32.const 0
                              get_local 6
                              i32.store offset=1048
                              i32.const 0
                              get_local 5
                              i32.store offset=1060
                              get_local 4
                              get_local 0
                              i32.add
                              get_local 6
                              i32.store
                              get_local 4
                              get_local 3
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              br 1 (;@12;)
                            end
                            get_local 4
                            get_local 0
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            get_local 4
                            get_local 0
                            i32.add
                            tee_local 0
                            get_local 0
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            i32.const 0
                            i32.const 0
                            i32.store offset=1060
                            i32.const 0
                            i32.const 0
                            i32.store offset=1048
                          end
                          get_local 4
                          i32.const 8
                          i32.add
                          set_local 0
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1052
                          tee_local 5
                          get_local 3
                          i32.le_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=1064
                          tee_local 0
                          get_local 3
                          i32.add
                          tee_local 4
                          get_local 5
                          get_local 3
                          i32.sub
                          tee_local 6
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          i32.const 0
                          get_local 6
                          i32.store offset=1052
                          i32.const 0
                          get_local 4
                          i32.store offset=1064
                          get_local 0
                          get_local 3
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          get_local 0
                          i32.const 8
                          i32.add
                          set_local 0
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1512
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 0
                            i32.load offset=1520
                            set_local 4
                            br 1 (;@11;)
                          end
                          i32.const 0
                          i64.const -1
                          i64.store offset=1524 align=4
                          i32.const 0
                          i64.const 281474976776192
                          i64.store offset=1516 align=4
                          i32.const 0
                          get_local 1
                          i32.const 12
                          i32.add
                          i32.const -16
                          i32.and
                          i32.const 1431655768
                          i32.xor
                          i32.store offset=1512
                          i32.const 0
                          i32.const 0
                          i32.store offset=1532
                          i32.const 0
                          i32.const 0
                          i32.store offset=1484
                          i32.const 65536
                          set_local 4
                        end
                        i32.const 0
                        set_local 0
                        block  ;; label = @11
                          get_local 4
                          get_local 3
                          i32.const 71
                          i32.add
                          tee_local 7
                          i32.add
                          tee_local 2
                          i32.const 0
                          get_local 4
                          i32.sub
                          tee_local 11
                          i32.and
                          tee_local 8
                          get_local 3
                          i32.gt_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.const 48
                          i32.store offset=1536
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1480
                          tee_local 0
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1472
                            tee_local 4
                            get_local 8
                            i32.add
                            tee_local 6
                            get_local 4
                            i32.le_u
                            br_if 0 (;@12;)
                            get_local 6
                            get_local 0
                            i32.le_u
                            br_if 1 (;@11;)
                          end
                          i32.const 0
                          set_local 0
                          i32.const 0
                          i32.const 48
                          i32.store offset=1536
                          br 10 (;@1;)
                        end
                        i32.const 0
                        i32.load8_u offset=1484
                        i32.const 4
                        i32.and
                        br_if 4 (;@6;)
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1064
                              tee_local 4
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 1488
                              set_local 0
                              loop  ;; label = @14
                                block  ;; label = @15
                                  get_local 0
                                  i32.load
                                  tee_local 6
                                  get_local 4
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  get_local 6
                                  get_local 0
                                  i32.load offset=4
                                  i32.add
                                  get_local 4
                                  i32.gt_u
                                  br_if 3 (;@12;)
                                end
                                get_local 0
                                i32.load offset=8
                                tee_local 0
                                br_if 0 (;@14;)
                              end
                            end
                            i32.const 0
                            call sbrk
                            tee_local 5
                            i32.const -1
                            i32.eq
                            br_if 5 (;@7;)
                            get_local 8
                            set_local 2
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1516
                              tee_local 0
                              i32.const -1
                              i32.add
                              tee_local 4
                              get_local 5
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              get_local 8
                              get_local 5
                              i32.sub
                              get_local 4
                              get_local 5
                              i32.add
                              i32.const 0
                              get_local 0
                              i32.sub
                              i32.and
                              i32.add
                              set_local 2
                            end
                            get_local 2
                            get_local 3
                            i32.le_u
                            br_if 5 (;@7;)
                            get_local 2
                            i32.const 2147483646
                            i32.gt_u
                            br_if 5 (;@7;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1480
                              tee_local 0
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.load offset=1472
                              tee_local 4
                              get_local 2
                              i32.add
                              tee_local 6
                              get_local 4
                              i32.le_u
                              br_if 6 (;@7;)
                              get_local 6
                              get_local 0
                              i32.gt_u
                              br_if 6 (;@7;)
                            end
                            get_local 2
                            call sbrk
                            tee_local 0
                            get_local 5
                            i32.ne
                            br_if 1 (;@11;)
                            br 7 (;@5;)
                          end
                          get_local 2
                          get_local 5
                          i32.sub
                          get_local 11
                          i32.and
                          tee_local 2
                          i32.const 2147483646
                          i32.gt_u
                          br_if 4 (;@7;)
                          get_local 2
                          call sbrk
                          tee_local 5
                          get_local 0
                          i32.load
                          get_local 0
                          i32.load offset=4
                          i32.add
                          i32.eq
                          br_if 3 (;@8;)
                          get_local 5
                          set_local 0
                        end
                        get_local 0
                        set_local 5
                        block  ;; label = @11
                          get_local 3
                          i32.const 72
                          i32.add
                          get_local 2
                          i32.le_u
                          br_if 0 (;@11;)
                          get_local 2
                          i32.const 2147483646
                          i32.gt_u
                          br_if 0 (;@11;)
                          get_local 5
                          i32.const -1
                          i32.eq
                          br_if 0 (;@11;)
                          get_local 7
                          get_local 2
                          i32.sub
                          i32.const 0
                          i32.load offset=1520
                          tee_local 0
                          i32.add
                          i32.const 0
                          get_local 0
                          i32.sub
                          i32.and
                          tee_local 0
                          i32.const 2147483646
                          i32.gt_u
                          br_if 6 (;@5;)
                          block  ;; label = @12
                            get_local 0
                            call sbrk
                            i32.const -1
                            i32.eq
                            br_if 0 (;@12;)
                            get_local 0
                            get_local 2
                            i32.add
                            set_local 2
                            br 7 (;@5;)
                          end
                          i32.const 0
                          get_local 2
                          i32.sub
                          call sbrk
                          drop
                          br 4 (;@7;)
                        end
                        get_local 5
                        i32.const -1
                        i32.ne
                        br_if 5 (;@5;)
                        br 3 (;@7;)
                      end
                      i32.const 0
                      set_local 8
                      br 7 (;@2;)
                    end
                    i32.const 0
                    set_local 5
                    br 5 (;@3;)
                  end
                  get_local 5
                  i32.const -1
                  i32.ne
                  br_if 2 (;@5;)
                end
                i32.const 0
                i32.const 0
                i32.load offset=1484
                i32.const 4
                i32.or
                i32.store offset=1484
              end
              get_local 8
              i32.const 2147483646
              i32.gt_u
              br_if 1 (;@4;)
              get_local 8
              call sbrk
              tee_local 5
              i32.const 0
              call sbrk
              tee_local 0
              i32.ge_u
              br_if 1 (;@4;)
              get_local 5
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              get_local 0
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              get_local 0
              get_local 5
              i32.sub
              tee_local 2
              get_local 3
              i32.const 56
              i32.add
              i32.le_u
              br_if 1 (;@4;)
            end
            i32.const 0
            i32.const 0
            i32.load offset=1472
            get_local 2
            i32.add
            tee_local 0
            i32.store offset=1472
            block  ;; label = @5
              get_local 0
              i32.const 0
              i32.load offset=1476
              i32.le_u
              br_if 0 (;@5;)
              i32.const 0
              get_local 0
              i32.store offset=1476
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=1064
                    tee_local 4
                    i32.eqz
                    br_if 0 (;@8;)
                    i32.const 1488
                    set_local 0
                    loop  ;; label = @9
                      get_local 5
                      get_local 0
                      i32.load
                      tee_local 6
                      get_local 0
                      i32.load offset=4
                      tee_local 8
                      i32.add
                      i32.eq
                      br_if 2 (;@7;)
                      get_local 0
                      i32.load offset=8
                      tee_local 0
                      br_if 0 (;@9;)
                      br 3 (;@6;)
                    end
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1056
                      tee_local 0
                      i32.eqz
                      br_if 0 (;@9;)
                      get_local 5
                      get_local 0
                      i32.ge_u
                      br_if 1 (;@8;)
                    end
                    i32.const 0
                    get_local 5
                    i32.store offset=1056
                  end
                  i32.const 0
                  set_local 0
                  i32.const 0
                  get_local 2
                  i32.store offset=1492
                  i32.const 0
                  get_local 5
                  i32.store offset=1488
                  i32.const 0
                  i32.const -1
                  i32.store offset=1072
                  i32.const 0
                  i32.const 0
                  i32.load offset=1512
                  i32.store offset=1076
                  i32.const 0
                  i32.const 0
                  i32.store offset=1500
                  loop  ;; label = @8
                    get_local 0
                    i32.const 1088
                    i32.add
                    get_local 0
                    i32.const 1080
                    i32.add
                    tee_local 4
                    i32.store
                    get_local 0
                    i32.const 1092
                    i32.add
                    get_local 4
                    i32.store
                    get_local 0
                    i32.const 8
                    i32.add
                    tee_local 0
                    i32.const 256
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  get_local 5
                  i32.const -8
                  get_local 5
                  i32.sub
                  i32.const 15
                  i32.and
                  i32.const 0
                  get_local 5
                  i32.const 8
                  i32.add
                  i32.const 15
                  i32.and
                  select
                  tee_local 0
                  i32.add
                  tee_local 4
                  get_local 2
                  i32.const -56
                  i32.add
                  tee_local 6
                  get_local 0
                  i32.sub
                  tee_local 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  i32.const 0
                  i32.const 0
                  i32.load offset=1528
                  i32.store offset=1068
                  i32.const 0
                  get_local 0
                  i32.store offset=1052
                  i32.const 0
                  get_local 4
                  i32.store offset=1064
                  get_local 5
                  get_local 6
                  i32.add
                  i32.const 56
                  i32.store offset=4
                  br 2 (;@5;)
                end
                get_local 0
                i32.load8_u offset=12
                i32.const 8
                i32.and
                br_if 0 (;@6;)
                get_local 5
                get_local 4
                i32.le_u
                br_if 0 (;@6;)
                get_local 6
                get_local 4
                i32.gt_u
                br_if 0 (;@6;)
                get_local 4
                i32.const -8
                get_local 4
                i32.sub
                i32.const 15
                i32.and
                i32.const 0
                get_local 4
                i32.const 8
                i32.add
                i32.const 15
                i32.and
                select
                tee_local 6
                i32.add
                tee_local 5
                i32.const 0
                i32.load offset=1052
                get_local 2
                i32.add
                tee_local 11
                get_local 6
                i32.sub
                tee_local 6
                i32.const 1
                i32.or
                i32.store offset=4
                get_local 0
                get_local 8
                get_local 2
                i32.add
                i32.store offset=4
                i32.const 0
                i32.const 0
                i32.load offset=1528
                i32.store offset=1068
                i32.const 0
                get_local 6
                i32.store offset=1052
                i32.const 0
                get_local 5
                i32.store offset=1064
                get_local 4
                get_local 11
                i32.add
                i32.const 56
                i32.store offset=4
                br 1 (;@5;)
              end
              block  ;; label = @6
                get_local 5
                i32.const 0
                i32.load offset=1056
                tee_local 8
                i32.ge_u
                br_if 0 (;@6;)
                i32.const 0
                get_local 5
                i32.store offset=1056
                get_local 5
                set_local 8
              end
              get_local 5
              get_local 2
              i32.add
              set_local 6
              i32.const 1488
              set_local 0
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            loop  ;; label = @13
                              get_local 0
                              i32.load
                              get_local 6
                              i32.eq
                              br_if 1 (;@12;)
                              get_local 0
                              i32.load offset=8
                              tee_local 0
                              br_if 0 (;@13;)
                              br 2 (;@11;)
                            end
                          end
                          get_local 0
                          i32.load8_u offset=12
                          i32.const 8
                          i32.and
                          i32.eqz
                          br_if 1 (;@10;)
                        end
                        i32.const 1488
                        set_local 0
                        loop  ;; label = @11
                          block  ;; label = @12
                            get_local 0
                            i32.load
                            tee_local 6
                            get_local 4
                            i32.gt_u
                            br_if 0 (;@12;)
                            get_local 6
                            get_local 0
                            i32.load offset=4
                            i32.add
                            tee_local 6
                            get_local 4
                            i32.gt_u
                            br_if 3 (;@9;)
                          end
                          get_local 0
                          i32.load offset=8
                          set_local 0
                          br 0 (;@11;)
                        end
                      end
                      get_local 0
                      get_local 5
                      i32.store
                      get_local 0
                      get_local 0
                      i32.load offset=4
                      get_local 2
                      i32.add
                      i32.store offset=4
                      get_local 5
                      i32.const -8
                      get_local 5
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      get_local 5
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      i32.add
                      tee_local 11
                      get_local 3
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      get_local 6
                      i32.const -8
                      get_local 6
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      get_local 6
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      i32.add
                      tee_local 5
                      get_local 11
                      i32.sub
                      get_local 3
                      i32.sub
                      set_local 0
                      get_local 11
                      get_local 3
                      i32.add
                      set_local 6
                      block  ;; label = @10
                        get_local 4
                        get_local 5
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        get_local 6
                        i32.store offset=1064
                        i32.const 0
                        i32.const 0
                        i32.load offset=1052
                        get_local 0
                        i32.add
                        tee_local 0
                        i32.store offset=1052
                        get_local 6
                        get_local 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br 3 (;@7;)
                      end
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1060
                        get_local 5
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        get_local 6
                        i32.store offset=1060
                        i32.const 0
                        i32.const 0
                        i32.load offset=1048
                        get_local 0
                        i32.add
                        tee_local 0
                        i32.store offset=1048
                        get_local 6
                        get_local 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        get_local 6
                        get_local 0
                        i32.add
                        get_local 0
                        i32.store
                        br 3 (;@7;)
                      end
                      block  ;; label = @10
                        get_local 5
                        i32.load offset=4
                        tee_local 4
                        i32.const 3
                        i32.and
                        i32.const 1
                        i32.ne
                        br_if 0 (;@10;)
                        get_local 4
                        i32.const -8
                        i32.and
                        set_local 7
                        block  ;; label = @11
                          block  ;; label = @12
                            get_local 4
                            i32.const 255
                            i32.gt_u
                            br_if 0 (;@12;)
                            get_local 5
                            i32.load offset=12
                            set_local 3
                            block  ;; label = @13
                              get_local 5
                              i32.load offset=8
                              tee_local 2
                              get_local 4
                              i32.const 3
                              i32.shr_u
                              tee_local 9
                              i32.const 3
                              i32.shl
                              i32.const 1080
                              i32.add
                              tee_local 4
                              i32.eq
                              br_if 0 (;@13;)
                              get_local 8
                              get_local 2
                              i32.gt_u
                              drop
                            end
                            block  ;; label = @13
                              get_local 3
                              get_local 2
                              i32.ne
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.const 0
                              i32.load offset=1040
                              i32.const -2
                              get_local 9
                              i32.rotl
                              i32.and
                              i32.store offset=1040
                              br 2 (;@11;)
                            end
                            block  ;; label = @13
                              get_local 3
                              get_local 4
                              i32.eq
                              br_if 0 (;@13;)
                              get_local 8
                              get_local 3
                              i32.gt_u
                              drop
                            end
                            get_local 3
                            get_local 2
                            i32.store offset=8
                            get_local 2
                            get_local 3
                            i32.store offset=12
                            br 1 (;@11;)
                          end
                          get_local 5
                          i32.load offset=24
                          set_local 9
                          block  ;; label = @12
                            block  ;; label = @13
                              get_local 5
                              i32.load offset=12
                              tee_local 2
                              get_local 5
                              i32.eq
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                get_local 8
                                get_local 5
                                i32.load offset=8
                                tee_local 4
                                i32.gt_u
                                br_if 0 (;@14;)
                                get_local 4
                                i32.load offset=12
                                get_local 5
                                i32.ne
                                drop
                              end
                              get_local 2
                              get_local 4
                              i32.store offset=8
                              get_local 4
                              get_local 2
                              i32.store offset=12
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              get_local 5
                              i32.const 20
                              i32.add
                              tee_local 4
                              i32.load
                              tee_local 3
                              br_if 0 (;@13;)
                              get_local 5
                              i32.const 16
                              i32.add
                              tee_local 4
                              i32.load
                              tee_local 3
                              br_if 0 (;@13;)
                              i32.const 0
                              set_local 2
                              br 1 (;@12;)
                            end
                            loop  ;; label = @13
                              get_local 4
                              set_local 8
                              get_local 3
                              tee_local 2
                              i32.const 20
                              i32.add
                              tee_local 4
                              i32.load
                              tee_local 3
                              br_if 0 (;@13;)
                              get_local 2
                              i32.const 16
                              i32.add
                              set_local 4
                              get_local 2
                              i32.load offset=16
                              tee_local 3
                              br_if 0 (;@13;)
                            end
                            get_local 8
                            i32.const 0
                            i32.store
                          end
                          get_local 9
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            block  ;; label = @13
                              get_local 5
                              i32.load offset=28
                              tee_local 3
                              i32.const 2
                              i32.shl
                              i32.const 1344
                              i32.add
                              tee_local 4
                              i32.load
                              get_local 5
                              i32.ne
                              br_if 0 (;@13;)
                              get_local 4
                              get_local 2
                              i32.store
                              get_local 2
                              br_if 1 (;@12;)
                              i32.const 0
                              i32.const 0
                              i32.load offset=1044
                              i32.const -2
                              get_local 3
                              i32.rotl
                              i32.and
                              i32.store offset=1044
                              br 2 (;@11;)
                            end
                            get_local 9
                            i32.const 16
                            i32.const 20
                            get_local 9
                            i32.load offset=16
                            get_local 5
                            i32.eq
                            select
                            i32.add
                            get_local 2
                            i32.store
                            get_local 2
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                          get_local 2
                          get_local 9
                          i32.store offset=24
                          block  ;; label = @12
                            get_local 5
                            i32.load offset=16
                            tee_local 4
                            i32.eqz
                            br_if 0 (;@12;)
                            get_local 2
                            get_local 4
                            i32.store offset=16
                            get_local 4
                            get_local 2
                            i32.store offset=24
                          end
                          get_local 5
                          i32.load offset=20
                          tee_local 4
                          i32.eqz
                          br_if 0 (;@11;)
                          get_local 2
                          i32.const 20
                          i32.add
                          get_local 4
                          i32.store
                          get_local 4
                          get_local 2
                          i32.store offset=24
                        end
                        get_local 7
                        get_local 0
                        i32.add
                        set_local 0
                        get_local 5
                        get_local 7
                        i32.add
                        set_local 5
                      end
                      get_local 5
                      get_local 5
                      i32.load offset=4
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      get_local 6
                      get_local 0
                      i32.add
                      get_local 0
                      i32.store
                      get_local 6
                      get_local 0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      block  ;; label = @10
                        get_local 0
                        i32.const 255
                        i32.gt_u
                        br_if 0 (;@10;)
                        get_local 0
                        i32.const 3
                        i32.shr_u
                        tee_local 4
                        i32.const 3
                        i32.shl
                        i32.const 1080
                        i32.add
                        set_local 0
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1040
                            tee_local 3
                            i32.const 1
                            get_local 4
                            i32.shl
                            tee_local 4
                            i32.and
                            br_if 0 (;@12;)
                            i32.const 0
                            get_local 3
                            get_local 4
                            i32.or
                            i32.store offset=1040
                            get_local 0
                            set_local 4
                            br 1 (;@11;)
                          end
                          get_local 0
                          i32.load offset=8
                          set_local 4
                        end
                        get_local 4
                        get_local 6
                        i32.store offset=12
                        get_local 0
                        get_local 6
                        i32.store offset=8
                        get_local 6
                        get_local 0
                        i32.store offset=12
                        get_local 6
                        get_local 4
                        i32.store offset=8
                        br 3 (;@7;)
                      end
                      i32.const 0
                      set_local 4
                      block  ;; label = @10
                        get_local 0
                        i32.const 8
                        i32.shr_u
                        tee_local 3
                        i32.eqz
                        br_if 0 (;@10;)
                        i32.const 31
                        set_local 4
                        get_local 0
                        i32.const 16777215
                        i32.gt_u
                        br_if 0 (;@10;)
                        get_local 3
                        get_local 3
                        i32.const 1048320
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 8
                        i32.and
                        tee_local 4
                        i32.shl
                        tee_local 3
                        get_local 3
                        i32.const 520192
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 4
                        i32.and
                        tee_local 3
                        i32.shl
                        tee_local 5
                        get_local 5
                        i32.const 245760
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 2
                        i32.and
                        tee_local 5
                        i32.shl
                        i32.const 15
                        i32.shr_u
                        get_local 3
                        get_local 4
                        i32.or
                        get_local 5
                        i32.or
                        i32.sub
                        tee_local 4
                        i32.const 1
                        i32.shl
                        get_local 0
                        get_local 4
                        i32.const 21
                        i32.add
                        i32.shr_u
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 28
                        i32.add
                        set_local 4
                      end
                      get_local 6
                      get_local 4
                      i32.store offset=28
                      get_local 6
                      i64.const 0
                      i64.store offset=16 align=4
                      get_local 4
                      i32.const 2
                      i32.shl
                      i32.const 1344
                      i32.add
                      set_local 3
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1044
                        tee_local 5
                        i32.const 1
                        get_local 4
                        i32.shl
                        tee_local 8
                        i32.and
                        br_if 0 (;@10;)
                        get_local 3
                        get_local 6
                        i32.store
                        i32.const 0
                        get_local 5
                        get_local 8
                        i32.or
                        i32.store offset=1044
                        get_local 6
                        get_local 3
                        i32.store offset=24
                        get_local 6
                        get_local 6
                        i32.store offset=8
                        get_local 6
                        get_local 6
                        i32.store offset=12
                        br 3 (;@7;)
                      end
                      get_local 0
                      i32.const 0
                      i32.const 25
                      get_local 4
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      get_local 4
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      set_local 4
                      get_local 3
                      i32.load
                      set_local 5
                      loop  ;; label = @10
                        get_local 5
                        tee_local 3
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        get_local 0
                        i32.eq
                        br_if 2 (;@8;)
                        get_local 4
                        i32.const 29
                        i32.shr_u
                        set_local 5
                        get_local 4
                        i32.const 1
                        i32.shl
                        set_local 4
                        get_local 3
                        get_local 5
                        i32.const 4
                        i32.and
                        i32.add
                        i32.const 16
                        i32.add
                        tee_local 8
                        i32.load
                        tee_local 5
                        br_if 0 (;@10;)
                      end
                      get_local 8
                      get_local 6
                      i32.store
                      get_local 6
                      get_local 3
                      i32.store offset=24
                      get_local 6
                      get_local 6
                      i32.store offset=12
                      get_local 6
                      get_local 6
                      i32.store offset=8
                      br 2 (;@7;)
                    end
                    get_local 5
                    i32.const -8
                    get_local 5
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    get_local 5
                    i32.const 8
                    i32.add
                    i32.const 15
                    i32.and
                    select
                    tee_local 0
                    i32.add
                    tee_local 11
                    get_local 2
                    i32.const -56
                    i32.add
                    tee_local 8
                    get_local 0
                    i32.sub
                    tee_local 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    get_local 5
                    get_local 8
                    i32.add
                    i32.const 56
                    i32.store offset=4
                    get_local 4
                    get_local 6
                    i32.const 55
                    get_local 6
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    get_local 6
                    i32.const -55
                    i32.add
                    i32.const 15
                    i32.and
                    select
                    i32.add
                    i32.const -63
                    i32.add
                    tee_local 8
                    get_local 8
                    get_local 4
                    i32.const 16
                    i32.add
                    i32.lt_u
                    select
                    tee_local 8
                    i32.const 35
                    i32.store offset=4
                    i32.const 0
                    i32.const 0
                    i32.load offset=1528
                    i32.store offset=1068
                    i32.const 0
                    get_local 0
                    i32.store offset=1052
                    i32.const 0
                    get_local 11
                    i32.store offset=1064
                    get_local 8
                    i32.const 16
                    i32.add
                    i32.const 0
                    i64.load offset=1496 align=4
                    i64.store align=4
                    get_local 8
                    i32.const 0
                    i64.load offset=1488 align=4
                    i64.store offset=8 align=4
                    i32.const 0
                    get_local 8
                    i32.const 8
                    i32.add
                    i32.store offset=1496
                    i32.const 0
                    get_local 2
                    i32.store offset=1492
                    i32.const 0
                    get_local 5
                    i32.store offset=1488
                    i32.const 0
                    i32.const 0
                    i32.store offset=1500
                    get_local 8
                    i32.const 36
                    i32.add
                    set_local 0
                    loop  ;; label = @9
                      get_local 0
                      i32.const 7
                      i32.store
                      get_local 0
                      i32.const 4
                      i32.add
                      tee_local 0
                      get_local 6
                      i32.lt_u
                      br_if 0 (;@9;)
                    end
                    get_local 8
                    get_local 4
                    i32.eq
                    br_if 3 (;@5;)
                    get_local 8
                    get_local 8
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    get_local 8
                    get_local 8
                    get_local 4
                    i32.sub
                    tee_local 2
                    i32.store
                    get_local 4
                    get_local 2
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    block  ;; label = @9
                      get_local 2
                      i32.const 255
                      i32.gt_u
                      br_if 0 (;@9;)
                      get_local 2
                      i32.const 3
                      i32.shr_u
                      tee_local 6
                      i32.const 3
                      i32.shl
                      i32.const 1080
                      i32.add
                      set_local 0
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1040
                          tee_local 5
                          i32.const 1
                          get_local 6
                          i32.shl
                          tee_local 6
                          i32.and
                          br_if 0 (;@11;)
                          i32.const 0
                          get_local 5
                          get_local 6
                          i32.or
                          i32.store offset=1040
                          get_local 0
                          set_local 6
                          br 1 (;@10;)
                        end
                        get_local 0
                        i32.load offset=8
                        set_local 6
                      end
                      get_local 6
                      get_local 4
                      i32.store offset=12
                      get_local 0
                      get_local 4
                      i32.store offset=8
                      get_local 4
                      get_local 0
                      i32.store offset=12
                      get_local 4
                      get_local 6
                      i32.store offset=8
                      br 4 (;@5;)
                    end
                    i32.const 0
                    set_local 0
                    block  ;; label = @9
                      get_local 2
                      i32.const 8
                      i32.shr_u
                      tee_local 6
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 31
                      set_local 0
                      get_local 2
                      i32.const 16777215
                      i32.gt_u
                      br_if 0 (;@9;)
                      get_local 6
                      get_local 6
                      i32.const 1048320
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 8
                      i32.and
                      tee_local 0
                      i32.shl
                      tee_local 6
                      get_local 6
                      i32.const 520192
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 4
                      i32.and
                      tee_local 6
                      i32.shl
                      tee_local 5
                      get_local 5
                      i32.const 245760
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 2
                      i32.and
                      tee_local 5
                      i32.shl
                      i32.const 15
                      i32.shr_u
                      get_local 6
                      get_local 0
                      i32.or
                      get_local 5
                      i32.or
                      i32.sub
                      tee_local 0
                      i32.const 1
                      i32.shl
                      get_local 2
                      get_local 0
                      i32.const 21
                      i32.add
                      i32.shr_u
                      i32.const 1
                      i32.and
                      i32.or
                      i32.const 28
                      i32.add
                      set_local 0
                    end
                    get_local 4
                    i64.const 0
                    i64.store offset=16 align=4
                    get_local 4
                    i32.const 28
                    i32.add
                    get_local 0
                    i32.store
                    get_local 0
                    i32.const 2
                    i32.shl
                    i32.const 1344
                    i32.add
                    set_local 6
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1044
                      tee_local 5
                      i32.const 1
                      get_local 0
                      i32.shl
                      tee_local 8
                      i32.and
                      br_if 0 (;@9;)
                      get_local 6
                      get_local 4
                      i32.store
                      i32.const 0
                      get_local 5
                      get_local 8
                      i32.or
                      i32.store offset=1044
                      get_local 4
                      i32.const 24
                      i32.add
                      get_local 6
                      i32.store
                      get_local 4
                      get_local 4
                      i32.store offset=8
                      get_local 4
                      get_local 4
                      i32.store offset=12
                      br 4 (;@5;)
                    end
                    get_local 2
                    i32.const 0
                    i32.const 25
                    get_local 0
                    i32.const 1
                    i32.shr_u
                    i32.sub
                    get_local 0
                    i32.const 31
                    i32.eq
                    select
                    i32.shl
                    set_local 0
                    get_local 6
                    i32.load
                    set_local 5
                    loop  ;; label = @9
                      get_local 5
                      tee_local 6
                      i32.load offset=4
                      i32.const -8
                      i32.and
                      get_local 2
                      i32.eq
                      br_if 3 (;@6;)
                      get_local 0
                      i32.const 29
                      i32.shr_u
                      set_local 5
                      get_local 0
                      i32.const 1
                      i32.shl
                      set_local 0
                      get_local 6
                      get_local 5
                      i32.const 4
                      i32.and
                      i32.add
                      i32.const 16
                      i32.add
                      tee_local 8
                      i32.load
                      tee_local 5
                      br_if 0 (;@9;)
                    end
                    get_local 8
                    get_local 4
                    i32.store
                    get_local 4
                    i32.const 24
                    i32.add
                    get_local 6
                    i32.store
                    get_local 4
                    get_local 4
                    i32.store offset=12
                    get_local 4
                    get_local 4
                    i32.store offset=8
                    br 3 (;@5;)
                  end
                  get_local 3
                  i32.load offset=8
                  set_local 0
                  get_local 3
                  get_local 6
                  i32.store offset=8
                  get_local 0
                  get_local 6
                  i32.store offset=12
                  get_local 6
                  i32.const 0
                  i32.store offset=24
                  get_local 6
                  get_local 0
                  i32.store offset=8
                  get_local 6
                  get_local 3
                  i32.store offset=12
                end
                get_local 11
                i32.const 8
                i32.add
                set_local 0
                br 5 (;@1;)
              end
              get_local 6
              i32.load offset=8
              set_local 0
              get_local 6
              get_local 4
              i32.store offset=8
              get_local 0
              get_local 4
              i32.store offset=12
              get_local 4
              i32.const 24
              i32.add
              i32.const 0
              i32.store
              get_local 4
              get_local 0
              i32.store offset=8
              get_local 4
              get_local 6
              i32.store offset=12
            end
            i32.const 0
            i32.load offset=1052
            tee_local 0
            get_local 3
            i32.le_u
            br_if 0 (;@4;)
            i32.const 0
            i32.load offset=1064
            tee_local 4
            get_local 3
            i32.add
            tee_local 6
            get_local 0
            get_local 3
            i32.sub
            tee_local 0
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            get_local 0
            i32.store offset=1052
            i32.const 0
            get_local 6
            i32.store offset=1064
            get_local 4
            get_local 3
            i32.const 3
            i32.or
            i32.store offset=4
            get_local 4
            i32.const 8
            i32.add
            set_local 0
            br 3 (;@1;)
          end
          i32.const 0
          set_local 0
          i32.const 0
          i32.const 48
          i32.store offset=1536
          br 2 (;@1;)
        end
        block  ;; label = @3
          get_local 11
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              get_local 8
              get_local 8
              i32.load offset=28
              tee_local 4
              i32.const 2
              i32.shl
              i32.const 1344
              i32.add
              tee_local 0
              i32.load
              i32.ne
              br_if 0 (;@5;)
              get_local 0
              get_local 5
              i32.store
              get_local 5
              br_if 1 (;@4;)
              i32.const 0
              get_local 7
              i32.const -2
              get_local 4
              i32.rotl
              i32.and
              tee_local 7
              i32.store offset=1044
              br 2 (;@3;)
            end
            get_local 11
            i32.const 16
            i32.const 20
            get_local 11
            i32.load offset=16
            get_local 8
            i32.eq
            select
            i32.add
            get_local 5
            i32.store
            get_local 5
            i32.eqz
            br_if 1 (;@3;)
          end
          get_local 5
          get_local 11
          i32.store offset=24
          block  ;; label = @4
            get_local 8
            i32.load offset=16
            tee_local 0
            i32.eqz
            br_if 0 (;@4;)
            get_local 5
            get_local 0
            i32.store offset=16
            get_local 0
            get_local 5
            i32.store offset=24
          end
          get_local 8
          i32.const 20
          i32.add
          i32.load
          tee_local 0
          i32.eqz
          br_if 0 (;@3;)
          get_local 5
          i32.const 20
          i32.add
          get_local 0
          i32.store
          get_local 0
          get_local 5
          i32.store offset=24
        end
        block  ;; label = @3
          block  ;; label = @4
            get_local 6
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
            get_local 8
            get_local 6
            get_local 3
            i32.add
            tee_local 0
            i32.const 3
            i32.or
            i32.store offset=4
            get_local 8
            get_local 0
            i32.add
            tee_local 0
            get_local 0
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          get_local 8
          get_local 3
          i32.add
          tee_local 5
          get_local 6
          i32.const 1
          i32.or
          i32.store offset=4
          get_local 8
          get_local 3
          i32.const 3
          i32.or
          i32.store offset=4
          get_local 5
          get_local 6
          i32.add
          get_local 6
          i32.store
          block  ;; label = @4
            get_local 6
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            get_local 6
            i32.const 3
            i32.shr_u
            tee_local 4
            i32.const 3
            i32.shl
            i32.const 1080
            i32.add
            set_local 0
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=1040
                tee_local 6
                i32.const 1
                get_local 4
                i32.shl
                tee_local 4
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                get_local 6
                get_local 4
                i32.or
                i32.store offset=1040
                get_local 0
                set_local 4
                br 1 (;@5;)
              end
              get_local 0
              i32.load offset=8
              set_local 4
            end
            get_local 4
            get_local 5
            i32.store offset=12
            get_local 0
            get_local 5
            i32.store offset=8
            get_local 5
            get_local 0
            i32.store offset=12
            get_local 5
            get_local 4
            i32.store offset=8
            br 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              get_local 6
              i32.const 8
              i32.shr_u
              tee_local 4
              br_if 0 (;@5;)
              i32.const 0
              set_local 0
              br 1 (;@4;)
            end
            i32.const 31
            set_local 0
            get_local 6
            i32.const 16777215
            i32.gt_u
            br_if 0 (;@4;)
            get_local 4
            get_local 4
            i32.const 1048320
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 8
            i32.and
            tee_local 0
            i32.shl
            tee_local 4
            get_local 4
            i32.const 520192
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 4
            i32.and
            tee_local 4
            i32.shl
            tee_local 3
            get_local 3
            i32.const 245760
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 2
            i32.and
            tee_local 3
            i32.shl
            i32.const 15
            i32.shr_u
            get_local 4
            get_local 0
            i32.or
            get_local 3
            i32.or
            i32.sub
            tee_local 0
            i32.const 1
            i32.shl
            get_local 6
            get_local 0
            i32.const 21
            i32.add
            i32.shr_u
            i32.const 1
            i32.and
            i32.or
            i32.const 28
            i32.add
            set_local 0
          end
          get_local 5
          get_local 0
          i32.store offset=28
          get_local 5
          i64.const 0
          i64.store offset=16 align=4
          get_local 0
          i32.const 2
          i32.shl
          i32.const 1344
          i32.add
          set_local 4
          block  ;; label = @4
            get_local 7
            i32.const 1
            get_local 0
            i32.shl
            tee_local 3
            i32.and
            br_if 0 (;@4;)
            get_local 4
            get_local 5
            i32.store
            i32.const 0
            get_local 7
            get_local 3
            i32.or
            i32.store offset=1044
            get_local 5
            get_local 4
            i32.store offset=24
            get_local 5
            get_local 5
            i32.store offset=8
            get_local 5
            get_local 5
            i32.store offset=12
            br 1 (;@3;)
          end
          get_local 6
          i32.const 0
          i32.const 25
          get_local 0
          i32.const 1
          i32.shr_u
          i32.sub
          get_local 0
          i32.const 31
          i32.eq
          select
          i32.shl
          set_local 0
          get_local 4
          i32.load
          set_local 3
          block  ;; label = @4
            loop  ;; label = @5
              get_local 3
              tee_local 4
              i32.load offset=4
              i32.const -8
              i32.and
              get_local 6
              i32.eq
              br_if 1 (;@4;)
              get_local 0
              i32.const 29
              i32.shr_u
              set_local 3
              get_local 0
              i32.const 1
              i32.shl
              set_local 0
              get_local 4
              get_local 3
              i32.const 4
              i32.and
              i32.add
              i32.const 16
              i32.add
              tee_local 2
              i32.load
              tee_local 3
              br_if 0 (;@5;)
            end
            get_local 2
            get_local 5
            i32.store
            get_local 5
            get_local 4
            i32.store offset=24
            get_local 5
            get_local 5
            i32.store offset=12
            get_local 5
            get_local 5
            i32.store offset=8
            br 1 (;@3;)
          end
          get_local 4
          i32.load offset=8
          set_local 0
          get_local 4
          get_local 5
          i32.store offset=8
          get_local 0
          get_local 5
          i32.store offset=12
          get_local 5
          i32.const 0
          i32.store offset=24
          get_local 5
          get_local 0
          i32.store offset=8
          get_local 5
          get_local 4
          i32.store offset=12
        end
        get_local 8
        i32.const 8
        i32.add
        set_local 0
        br 1 (;@1;)
      end
      block  ;; label = @2
        get_local 10
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            get_local 5
            get_local 5
            i32.load offset=28
            tee_local 6
            i32.const 2
            i32.shl
            i32.const 1344
            i32.add
            tee_local 0
            i32.load
            i32.ne
            br_if 0 (;@4;)
            get_local 0
            get_local 8
            i32.store
            get_local 8
            br_if 1 (;@3;)
            i32.const 0
            get_local 9
            i32.const -2
            get_local 6
            i32.rotl
            i32.and
            i32.store offset=1044
            br 2 (;@2;)
          end
          get_local 10
          i32.const 16
          i32.const 20
          get_local 10
          i32.load offset=16
          get_local 5
          i32.eq
          select
          i32.add
          get_local 8
          i32.store
          get_local 8
          i32.eqz
          br_if 1 (;@2;)
        end
        get_local 8
        get_local 10
        i32.store offset=24
        block  ;; label = @3
          get_local 5
          i32.load offset=16
          tee_local 0
          i32.eqz
          br_if 0 (;@3;)
          get_local 8
          get_local 0
          i32.store offset=16
          get_local 0
          get_local 8
          i32.store offset=24
        end
        get_local 5
        i32.const 20
        i32.add
        i32.load
        tee_local 0
        i32.eqz
        br_if 0 (;@2;)
        get_local 8
        i32.const 20
        i32.add
        get_local 0
        i32.store
        get_local 0
        get_local 8
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          get_local 4
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          get_local 5
          get_local 4
          get_local 3
          i32.add
          tee_local 0
          i32.const 3
          i32.or
          i32.store offset=4
          get_local 5
          get_local 0
          i32.add
          tee_local 0
          get_local 0
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        get_local 5
        get_local 3
        i32.add
        tee_local 6
        get_local 4
        i32.const 1
        i32.or
        i32.store offset=4
        get_local 5
        get_local 3
        i32.const 3
        i32.or
        i32.store offset=4
        get_local 6
        get_local 4
        i32.add
        get_local 4
        i32.store
        block  ;; label = @3
          get_local 7
          i32.eqz
          br_if 0 (;@3;)
          get_local 7
          i32.const 3
          i32.shr_u
          tee_local 8
          i32.const 3
          i32.shl
          i32.const 1080
          i32.add
          set_local 3
          i32.const 0
          i32.load offset=1060
          set_local 0
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1
              get_local 8
              i32.shl
              tee_local 8
              get_local 2
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              get_local 8
              get_local 2
              i32.or
              i32.store offset=1040
              get_local 3
              set_local 8
              br 1 (;@4;)
            end
            get_local 3
            i32.load offset=8
            set_local 8
          end
          get_local 8
          get_local 0
          i32.store offset=12
          get_local 3
          get_local 0
          i32.store offset=8
          get_local 0
          get_local 3
          i32.store offset=12
          get_local 0
          get_local 8
          i32.store offset=8
        end
        i32.const 0
        get_local 6
        i32.store offset=1060
        i32.const 0
        get_local 4
        i32.store offset=1048
      end
      get_local 5
      i32.const 8
      i32.add
      set_local 0
    end
    get_local 1
    i32.const 16
    i32.add
    set_global 0
    get_local 0)
  (func free (type 3) (param i32)
    get_local 0
    call dlfree)
  (func dlfree (type 3) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      get_local 0
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      i32.const -8
      i32.add
      tee_local 1
      get_local 0
      i32.const -4
      i32.add
      i32.load
      tee_local 2
      i32.const -8
      i32.and
      tee_local 0
      i32.add
      set_local 3
      block  ;; label = @2
        get_local 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        get_local 2
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        get_local 1
        get_local 1
        i32.load
        tee_local 2
        i32.sub
        tee_local 1
        i32.const 0
        i32.load offset=1056
        tee_local 4
        i32.lt_u
        br_if 1 (;@1;)
        get_local 2
        get_local 0
        i32.add
        set_local 0
        block  ;; label = @3
          i32.const 0
          i32.load offset=1060
          get_local 1
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            get_local 2
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            get_local 1
            i32.load offset=12
            set_local 5
            block  ;; label = @5
              get_local 1
              i32.load offset=8
              tee_local 6
              get_local 2
              i32.const 3
              i32.shr_u
              tee_local 7
              i32.const 3
              i32.shl
              i32.const 1080
              i32.add
              tee_local 2
              i32.eq
              br_if 0 (;@5;)
              get_local 4
              get_local 6
              i32.gt_u
              drop
            end
            block  ;; label = @5
              get_local 5
              get_local 6
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=1040
              i32.const -2
              get_local 7
              i32.rotl
              i32.and
              i32.store offset=1040
              br 3 (;@2;)
            end
            block  ;; label = @5
              get_local 5
              get_local 2
              i32.eq
              br_if 0 (;@5;)
              get_local 4
              get_local 5
              i32.gt_u
              drop
            end
            get_local 5
            get_local 6
            i32.store offset=8
            get_local 6
            get_local 5
            i32.store offset=12
            br 2 (;@2;)
          end
          get_local 1
          i32.load offset=24
          set_local 7
          block  ;; label = @4
            block  ;; label = @5
              get_local 1
              i32.load offset=12
              tee_local 5
              get_local 1
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                get_local 4
                get_local 1
                i32.load offset=8
                tee_local 2
                i32.gt_u
                br_if 0 (;@6;)
                get_local 2
                i32.load offset=12
                get_local 1
                i32.ne
                drop
              end
              get_local 5
              get_local 2
              i32.store offset=8
              get_local 2
              get_local 5
              i32.store offset=12
              br 1 (;@4;)
            end
            block  ;; label = @5
              get_local 1
              i32.const 20
              i32.add
              tee_local 2
              i32.load
              tee_local 4
              br_if 0 (;@5;)
              get_local 1
              i32.const 16
              i32.add
              tee_local 2
              i32.load
              tee_local 4
              br_if 0 (;@5;)
              i32.const 0
              set_local 5
              br 1 (;@4;)
            end
            loop  ;; label = @5
              get_local 2
              set_local 6
              get_local 4
              tee_local 5
              i32.const 20
              i32.add
              tee_local 2
              i32.load
              tee_local 4
              br_if 0 (;@5;)
              get_local 5
              i32.const 16
              i32.add
              set_local 2
              get_local 5
              i32.load offset=16
              tee_local 4
              br_if 0 (;@5;)
            end
            get_local 6
            i32.const 0
            i32.store
          end
          get_local 7
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              get_local 1
              i32.load offset=28
              tee_local 4
              i32.const 2
              i32.shl
              i32.const 1344
              i32.add
              tee_local 2
              i32.load
              get_local 1
              i32.ne
              br_if 0 (;@5;)
              get_local 2
              get_local 5
              i32.store
              get_local 5
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1044
              i32.const -2
              get_local 4
              i32.rotl
              i32.and
              i32.store offset=1044
              br 3 (;@2;)
            end
            get_local 7
            i32.const 16
            i32.const 20
            get_local 7
            i32.load offset=16
            get_local 1
            i32.eq
            select
            i32.add
            get_local 5
            i32.store
            get_local 5
            i32.eqz
            br_if 2 (;@2;)
          end
          get_local 5
          get_local 7
          i32.store offset=24
          block  ;; label = @4
            get_local 1
            i32.load offset=16
            tee_local 2
            i32.eqz
            br_if 0 (;@4;)
            get_local 5
            get_local 2
            i32.store offset=16
            get_local 2
            get_local 5
            i32.store offset=24
          end
          get_local 1
          i32.load offset=20
          tee_local 2
          i32.eqz
          br_if 1 (;@2;)
          get_local 5
          i32.const 20
          i32.add
          get_local 2
          i32.store
          get_local 2
          get_local 5
          i32.store offset=24
          br 1 (;@2;)
        end
        get_local 3
        i32.load offset=4
        tee_local 2
        i32.const 3
        i32.and
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        get_local 3
        get_local 2
        i32.const -2
        i32.and
        i32.store offset=4
        i32.const 0
        get_local 0
        i32.store offset=1048
        get_local 1
        get_local 0
        i32.add
        get_local 0
        i32.store
        get_local 1
        get_local 0
        i32.const 1
        i32.or
        i32.store offset=4
        return
      end
      get_local 3
      get_local 1
      i32.le_u
      br_if 0 (;@1;)
      get_local 3
      i32.load offset=4
      tee_local 2
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          get_local 2
          i32.const 2
          i32.and
          br_if 0 (;@3;)
          block  ;; label = @4
            i32.const 0
            i32.load offset=1064
            get_local 3
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            get_local 1
            i32.store offset=1064
            i32.const 0
            i32.const 0
            i32.load offset=1052
            get_local 0
            i32.add
            tee_local 0
            i32.store offset=1052
            get_local 1
            get_local 0
            i32.const 1
            i32.or
            i32.store offset=4
            get_local 1
            i32.const 0
            i32.load offset=1060
            i32.ne
            br_if 3 (;@1;)
            i32.const 0
            i32.const 0
            i32.store offset=1048
            i32.const 0
            i32.const 0
            i32.store offset=1060
            return
          end
          block  ;; label = @4
            i32.const 0
            i32.load offset=1060
            get_local 3
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            get_local 1
            i32.store offset=1060
            i32.const 0
            i32.const 0
            i32.load offset=1048
            get_local 0
            i32.add
            tee_local 0
            i32.store offset=1048
            get_local 1
            get_local 0
            i32.const 1
            i32.or
            i32.store offset=4
            get_local 1
            get_local 0
            i32.add
            get_local 0
            i32.store
            return
          end
          get_local 2
          i32.const -8
          i32.and
          get_local 0
          i32.add
          set_local 0
          block  ;; label = @4
            block  ;; label = @5
              get_local 2
              i32.const 255
              i32.gt_u
              br_if 0 (;@5;)
              get_local 3
              i32.load offset=12
              set_local 4
              block  ;; label = @6
                get_local 3
                i32.load offset=8
                tee_local 5
                get_local 2
                i32.const 3
                i32.shr_u
                tee_local 3
                i32.const 3
                i32.shl
                i32.const 1080
                i32.add
                tee_local 2
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                i32.load offset=1056
                get_local 5
                i32.gt_u
                drop
              end
              block  ;; label = @6
                get_local 4
                get_local 5
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.load offset=1040
                i32.const -2
                get_local 3
                i32.rotl
                i32.and
                i32.store offset=1040
                br 2 (;@4;)
              end
              block  ;; label = @6
                get_local 4
                get_local 2
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                i32.load offset=1056
                get_local 4
                i32.gt_u
                drop
              end
              get_local 4
              get_local 5
              i32.store offset=8
              get_local 5
              get_local 4
              i32.store offset=12
              br 1 (;@4;)
            end
            get_local 3
            i32.load offset=24
            set_local 7
            block  ;; label = @5
              block  ;; label = @6
                get_local 3
                i32.load offset=12
                tee_local 5
                get_local 3
                i32.eq
                br_if 0 (;@6;)
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1056
                  get_local 3
                  i32.load offset=8
                  tee_local 2
                  i32.gt_u
                  br_if 0 (;@7;)
                  get_local 2
                  i32.load offset=12
                  get_local 3
                  i32.ne
                  drop
                end
                get_local 5
                get_local 2
                i32.store offset=8
                get_local 2
                get_local 5
                i32.store offset=12
                br 1 (;@5;)
              end
              block  ;; label = @6
                get_local 3
                i32.const 20
                i32.add
                tee_local 2
                i32.load
                tee_local 4
                br_if 0 (;@6;)
                get_local 3
                i32.const 16
                i32.add
                tee_local 2
                i32.load
                tee_local 4
                br_if 0 (;@6;)
                i32.const 0
                set_local 5
                br 1 (;@5;)
              end
              loop  ;; label = @6
                get_local 2
                set_local 6
                get_local 4
                tee_local 5
                i32.const 20
                i32.add
                tee_local 2
                i32.load
                tee_local 4
                br_if 0 (;@6;)
                get_local 5
                i32.const 16
                i32.add
                set_local 2
                get_local 5
                i32.load offset=16
                tee_local 4
                br_if 0 (;@6;)
              end
              get_local 6
              i32.const 0
              i32.store
            end
            get_local 7
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                get_local 3
                i32.load offset=28
                tee_local 4
                i32.const 2
                i32.shl
                i32.const 1344
                i32.add
                tee_local 2
                i32.load
                get_local 3
                i32.ne
                br_if 0 (;@6;)
                get_local 2
                get_local 5
                i32.store
                get_local 5
                br_if 1 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=1044
                i32.const -2
                get_local 4
                i32.rotl
                i32.and
                i32.store offset=1044
                br 2 (;@4;)
              end
              get_local 7
              i32.const 16
              i32.const 20
              get_local 7
              i32.load offset=16
              get_local 3
              i32.eq
              select
              i32.add
              get_local 5
              i32.store
              get_local 5
              i32.eqz
              br_if 1 (;@4;)
            end
            get_local 5
            get_local 7
            i32.store offset=24
            block  ;; label = @5
              get_local 3
              i32.load offset=16
              tee_local 2
              i32.eqz
              br_if 0 (;@5;)
              get_local 5
              get_local 2
              i32.store offset=16
              get_local 2
              get_local 5
              i32.store offset=24
            end
            get_local 3
            i32.load offset=20
            tee_local 2
            i32.eqz
            br_if 0 (;@4;)
            get_local 5
            i32.const 20
            i32.add
            get_local 2
            i32.store
            get_local 2
            get_local 5
            i32.store offset=24
          end
          get_local 1
          get_local 0
          i32.add
          get_local 0
          i32.store
          get_local 1
          get_local 0
          i32.const 1
          i32.or
          i32.store offset=4
          get_local 1
          i32.const 0
          i32.load offset=1060
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          get_local 0
          i32.store offset=1048
          return
        end
        get_local 3
        get_local 2
        i32.const -2
        i32.and
        i32.store offset=4
        get_local 1
        get_local 0
        i32.add
        get_local 0
        i32.store
        get_local 1
        get_local 0
        i32.const 1
        i32.or
        i32.store offset=4
      end
      block  ;; label = @2
        get_local 0
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        get_local 0
        i32.const 3
        i32.shr_u
        tee_local 2
        i32.const 3
        i32.shl
        i32.const 1080
        i32.add
        set_local 0
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1040
            tee_local 4
            i32.const 1
            get_local 2
            i32.shl
            tee_local 2
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            get_local 4
            get_local 2
            i32.or
            i32.store offset=1040
            get_local 0
            set_local 2
            br 1 (;@3;)
          end
          get_local 0
          i32.load offset=8
          set_local 2
        end
        get_local 2
        get_local 1
        i32.store offset=12
        get_local 0
        get_local 1
        i32.store offset=8
        get_local 1
        get_local 0
        i32.store offset=12
        get_local 1
        get_local 2
        i32.store offset=8
        return
      end
      i32.const 0
      set_local 2
      block  ;; label = @2
        get_local 0
        i32.const 8
        i32.shr_u
        tee_local 4
        i32.eqz
        br_if 0 (;@2;)
        i32.const 31
        set_local 2
        get_local 0
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        get_local 4
        get_local 4
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        tee_local 2
        i32.shl
        tee_local 4
        get_local 4
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        tee_local 4
        i32.shl
        tee_local 5
        get_local 5
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        tee_local 5
        i32.shl
        i32.const 15
        i32.shr_u
        get_local 4
        get_local 2
        i32.or
        get_local 5
        i32.or
        i32.sub
        tee_local 2
        i32.const 1
        i32.shl
        get_local 0
        get_local 2
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
        set_local 2
      end
      get_local 1
      i64.const 0
      i64.store offset=16 align=4
      get_local 1
      i32.const 28
      i32.add
      get_local 2
      i32.store
      get_local 2
      i32.const 2
      i32.shl
      i32.const 1344
      i32.add
      set_local 4
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=1044
          tee_local 5
          i32.const 1
          get_local 2
          i32.shl
          tee_local 3
          i32.and
          br_if 0 (;@3;)
          get_local 4
          get_local 1
          i32.store
          i32.const 0
          get_local 5
          get_local 3
          i32.or
          i32.store offset=1044
          get_local 1
          i32.const 24
          i32.add
          get_local 4
          i32.store
          get_local 1
          get_local 1
          i32.store offset=8
          get_local 1
          get_local 1
          i32.store offset=12
          br 1 (;@2;)
        end
        get_local 0
        i32.const 0
        i32.const 25
        get_local 2
        i32.const 1
        i32.shr_u
        i32.sub
        get_local 2
        i32.const 31
        i32.eq
        select
        i32.shl
        set_local 2
        get_local 4
        i32.load
        set_local 5
        block  ;; label = @3
          loop  ;; label = @4
            get_local 5
            tee_local 4
            i32.load offset=4
            i32.const -8
            i32.and
            get_local 0
            i32.eq
            br_if 1 (;@3;)
            get_local 2
            i32.const 29
            i32.shr_u
            set_local 5
            get_local 2
            i32.const 1
            i32.shl
            set_local 2
            get_local 4
            get_local 5
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            tee_local 3
            i32.load
            tee_local 5
            br_if 0 (;@4;)
          end
          get_local 3
          get_local 1
          i32.store
          get_local 1
          get_local 1
          i32.store offset=12
          get_local 1
          i32.const 24
          i32.add
          get_local 4
          i32.store
          get_local 1
          get_local 1
          i32.store offset=8
          br 1 (;@2;)
        end
        get_local 4
        i32.load offset=8
        set_local 0
        get_local 4
        get_local 1
        i32.store offset=8
        get_local 0
        get_local 1
        i32.store offset=12
        get_local 1
        i32.const 24
        i32.add
        i32.const 0
        i32.store
        get_local 1
        get_local 0
        i32.store offset=8
        get_local 1
        get_local 4
        i32.store offset=12
      end
      i32.const 0
      i32.const 0
      i32.load offset=1072
      i32.const -1
      i32.add
      tee_local 1
      i32.store offset=1072
      get_local 1
      br_if 0 (;@1;)
      i32.const 1496
      set_local 1
      loop  ;; label = @2
        get_local 1
        i32.load
        tee_local 0
        i32.const 8
        i32.add
        set_local 1
        get_local 0
        br_if 0 (;@2;)
      end
      i32.const 0
      i32.const -1
      i32.store offset=1072
    end)
  (func calloc (type 2) (param i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        get_local 0
        br_if 0 (;@2;)
        i32.const 0
        set_local 2
        br 1 (;@1;)
      end
      get_local 1
      get_local 0
      i32.mul
      set_local 2
      get_local 1
      get_local 0
      i32.or
      i32.const 65536
      i32.lt_u
      br_if 0 (;@1;)
      get_local 2
      i32.const -1
      get_local 2
      get_local 0
      i32.div_u
      get_local 1
      i32.eq
      select
      set_local 2
    end
    block  ;; label = @1
      get_local 2
      call dlmalloc
      tee_local 0
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      i32.const -4
      i32.add
      i32.load8_u
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      i32.const 0
      get_local 2
      call memset
      drop
    end
    get_local 0)
  (func _Exit (type 3) (param i32)
    get_local 0
    call __wasi_proc_exit
    unreachable)
  (func abort (type 7)
    unreachable
    unreachable)
  (func close (type 4) (param i32) (result i32)
    block  ;; label = @1
      get_local 0
      call __wasi_fd_close
      tee_local 0
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    i32.const 0
    get_local 0
    i32.store offset=1536
    i32.const -1)
  (func po_map_assertvalid (type 3) (param i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        get_local 0
        i32.load
        i32.const 0
        i32.le_s
        br_if 0 (;@2;)
        get_local 0
        i32.load offset=12
        tee_local 1
        get_local 0
        i32.load offset=8
        tee_local 2
        i32.gt_u
        br_if 0 (;@2;)
        get_local 0
        i32.load offset=4
        set_local 0
        block  ;; label = @3
          get_local 2
          i32.eqz
          br_if 0 (;@3;)
          get_local 0
          i32.eqz
          br_if 1 (;@2;)
        end
        get_local 1
        i32.eqz
        br_if 1 (;@1;)
        loop  ;; label = @3
          get_local 0
          i32.load
          i32.eqz
          br_if 1 (;@2;)
          get_local 0
          i32.const 4
          i32.add
          i32.load
          i32.const -1
          i32.le_s
          br_if 1 (;@2;)
          get_local 0
          i32.const 24
          i32.add
          set_local 0
          get_local 1
          i32.const -1
          i32.add
          tee_local 1
          i32.eqz
          br_if 2 (;@1;)
          br 0 (;@3;)
        end
      end
      call abort
      unreachable
    end)
  (func __wasilibc_init_preopen (type 7)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        i32.const 16
        call malloc
        tee_local 0
        i32.eqz
        br_if 0 (;@2;)
        get_local 0
        i32.const 24
        i32.const 4
        call calloc
        tee_local 1
        i32.store offset=4
        get_local 1
        br_if 1 (;@1;)
        get_local 0
        call free
      end
      i32.const 0
      i32.const 0
      i32.store offset=1540
      unreachable
      unreachable
    end
    get_local 0
    i64.const 4
    i64.store offset=8 align=4
    get_local 0
    i32.const 1
    i32.store
    get_local 0
    call po_map_assertvalid
    i32.const 0
    get_local 0
    i32.store offset=1540
    get_local 0
    call po_map_assertvalid)
  (func __wasilibc_register_preopened_fd (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 2
    set_global 0
    i32.const 0
    i32.load offset=1540
    call po_map_assertvalid
    i32.const -1
    set_local 3
    block  ;; label = @1
      get_local 1
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=1540
      tee_local 4
      call po_map_assertvalid
      get_local 0
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          get_local 4
          i32.load offset=12
          tee_local 5
          get_local 4
          i32.load offset=8
          i32.eq
          br_if 0 (;@3;)
          get_local 4
          i32.load offset=4
          set_local 6
          br 1 (;@2;)
        end
        i32.const 24
        get_local 5
        i32.const 1
        i32.shl
        call calloc
        tee_local 6
        i32.eqz
        br_if 1 (;@1;)
        get_local 6
        get_local 4
        i32.load offset=4
        tee_local 7
        get_local 5
        i32.const 24
        i32.mul
        call memcpy
        set_local 5
        get_local 7
        call free
        get_local 4
        get_local 5
        i32.store offset=4
        get_local 4
        get_local 4
        i32.load offset=8
        i32.const 1
        i32.shl
        i32.store offset=8
        get_local 4
        i32.load offset=12
        set_local 5
      end
      get_local 4
      get_local 5
      i32.const 1
      i32.add
      i32.store offset=12
      get_local 1
      call strdup
      set_local 7
      get_local 6
      get_local 5
      i32.const 24
      i32.mul
      i32.add
      tee_local 1
      get_local 0
      i32.store offset=4
      get_local 1
      get_local 7
      i32.store
      block  ;; label = @2
        get_local 0
        get_local 2
        i32.const 8
        i32.add
        call __wasi_fd_fdstat_get
        tee_local 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        get_local 0
        i32.store offset=1536
        br 1 (;@1;)
      end
      get_local 1
      get_local 2
      i64.load offset=16
      i64.store offset=8
      get_local 1
      get_local 2
      i64.load offset=24
      i64.store offset=16
      get_local 4
      call po_map_assertvalid
      get_local 4
      call po_map_assertvalid
      i32.const 0
      set_local 3
      i32.const 0
      get_local 4
      i32.store offset=1540
    end
    get_local 2
    i32.const 32
    i32.add
    set_global 0
    get_local 3)
  (func sbrk (type 4) (param i32) (result i32)
    block  ;; label = @1
      get_local 0
      br_if 0 (;@1;)
      current_memory
      i32.const 16
      i32.shl
      return
    end
    block  ;; label = @1
      get_local 0
      i32.const 65535
      i32.and
      br_if 0 (;@1;)
      get_local 0
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      block  ;; label = @2
        get_local 0
        i32.const 16
        i32.shr_u
        grow_memory
        tee_local 0
        i32.const -1
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.const 48
        i32.store offset=1536
        i32.const -1
        return
      end
      get_local 0
      i32.const 16
      i32.shl
      return
    end
    call abort
    unreachable)
  (func dummy (type 7))
  (func __prepare_for_exit (type 7)
    call dummy
    call __stdio_exit)
  (func __ofl_lock (type 8) (result i32)
    i32.const 1544)
  (func __stdio_exit (type 7)
    (local i32 i32 i32)
    block  ;; label = @1
      call __ofl_lock
      i32.load
      tee_local 0
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        block  ;; label = @3
          get_local 0
          i32.load offset=20
          get_local 0
          i32.load offset=24
          i32.eq
          br_if 0 (;@3;)
          get_local 0
          i32.const 0
          i32.const 0
          get_local 0
          i32.load offset=32
          call_indirect 0
          drop
        end
        block  ;; label = @3
          get_local 0
          i32.load offset=4
          tee_local 1
          get_local 0
          i32.load offset=8
          tee_local 2
          i32.eq
          br_if 0 (;@3;)
          get_local 0
          get_local 1
          get_local 2
          i32.sub
          i64.extend_s/i32
          i32.const 0
          get_local 0
          i32.load offset=36
          call_indirect 1
          drop
        end
        get_local 0
        i32.load offset=52
        tee_local 0
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      i32.const 0
      i32.load offset=1548
      tee_local 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        get_local 0
        i32.load offset=20
        get_local 0
        i32.load offset=24
        i32.eq
        br_if 0 (;@2;)
        get_local 0
        i32.const 0
        i32.const 0
        get_local 0
        i32.load offset=32
        call_indirect 0
        drop
      end
      get_local 0
      i32.load offset=4
      tee_local 1
      get_local 0
      i32.load offset=8
      tee_local 2
      i32.eq
      br_if 0 (;@1;)
      get_local 0
      get_local 1
      get_local 2
      i32.sub
      i64.extend_s/i32
      i32.const 0
      get_local 0
      i32.load offset=36
      call_indirect 1
      drop
    end
    block  ;; label = @1
      i32.const 0
      i32.load offset=2696
      tee_local 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        get_local 0
        i32.load offset=20
        get_local 0
        i32.load offset=24
        i32.eq
        br_if 0 (;@2;)
        get_local 0
        i32.const 0
        i32.const 0
        get_local 0
        i32.load offset=32
        call_indirect 0
        drop
      end
      get_local 0
      i32.load offset=4
      tee_local 1
      get_local 0
      i32.load offset=8
      tee_local 2
      i32.eq
      br_if 0 (;@1;)
      get_local 0
      get_local 1
      get_local 2
      i32.sub
      i64.extend_s/i32
      i32.const 0
      get_local 0
      i32.load offset=36
      call_indirect 1
      drop
    end
    block  ;; label = @1
      i32.const 0
      i32.load offset=1548
      tee_local 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        get_local 0
        i32.load offset=20
        get_local 0
        i32.load offset=24
        i32.eq
        br_if 0 (;@2;)
        get_local 0
        i32.const 0
        i32.const 0
        get_local 0
        i32.load offset=32
        call_indirect 0
        drop
      end
      get_local 0
      i32.load offset=4
      tee_local 1
      get_local 0
      i32.load offset=8
      tee_local 2
      i32.eq
      br_if 0 (;@1;)
      get_local 0
      get_local 1
      get_local 2
      i32.sub
      i64.extend_s/i32
      i32.const 0
      get_local 0
      i32.load offset=36
      call_indirect 1
      drop
    end)
  (func __towrite (type 4) (param i32) (result i32)
    (local i32)
    get_local 0
    get_local 0
    i32.load offset=60
    tee_local 1
    i32.const -1
    i32.add
    get_local 1
    i32.or
    i32.store offset=60
    block  ;; label = @1
      get_local 0
      i32.load
      tee_local 1
      i32.const 8
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      get_local 1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    get_local 0
    i64.const 0
    i64.store offset=4 align=4
    get_local 0
    get_local 0
    i32.load offset=40
    tee_local 1
    i32.store offset=24
    get_local 0
    get_local 1
    i32.store offset=20
    get_local 0
    get_local 1
    get_local 0
    i32.load offset=44
    i32.add
    i32.store offset=16
    i32.const 0)
  (func fwrite (type 5) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    get_local 2
    get_local 1
    i32.mul
    set_local 4
    block  ;; label = @1
      block  ;; label = @2
        get_local 3
        i32.load offset=16
        tee_local 5
        br_if 0 (;@2;)
        i32.const 0
        set_local 5
        get_local 3
        call __towrite
        br_if 1 (;@1;)
        get_local 3
        i32.load offset=16
        set_local 5
      end
      block  ;; label = @2
        get_local 5
        get_local 3
        i32.load offset=20
        tee_local 6
        i32.sub
        get_local 4
        i32.ge_u
        br_if 0 (;@2;)
        get_local 3
        get_local 0
        get_local 4
        get_local 3
        i32.load offset=32
        call_indirect 0
        set_local 5
        br 1 (;@1;)
      end
      i32.const 0
      set_local 7
      block  ;; label = @2
        block  ;; label = @3
          get_local 3
          i32.load offset=64
          i32.const 0
          i32.ge_s
          br_if 0 (;@3;)
          get_local 4
          set_local 5
          br 1 (;@2;)
        end
        get_local 0
        get_local 4
        i32.add
        set_local 8
        i32.const 0
        set_local 7
        i32.const 0
        set_local 5
        loop  ;; label = @3
          block  ;; label = @4
            get_local 4
            get_local 5
            i32.add
            br_if 0 (;@4;)
            get_local 4
            set_local 5
            br 2 (;@2;)
          end
          get_local 8
          get_local 5
          i32.add
          set_local 9
          get_local 5
          i32.const -1
          i32.add
          tee_local 10
          set_local 5
          get_local 9
          i32.const -1
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
        get_local 3
        get_local 0
        get_local 4
        get_local 10
        i32.add
        i32.const 1
        i32.add
        tee_local 7
        get_local 3
        i32.load offset=32
        call_indirect 0
        tee_local 5
        get_local 7
        i32.lt_u
        br_if 1 (;@1;)
        get_local 10
        i32.const -1
        i32.xor
        set_local 5
        get_local 8
        get_local 10
        i32.add
        i32.const 1
        i32.add
        set_local 0
        get_local 3
        i32.load offset=20
        set_local 6
      end
      get_local 6
      get_local 0
      get_local 5
      call memcpy
      drop
      get_local 3
      get_local 3
      i32.load offset=20
      get_local 5
      i32.add
      i32.store offset=20
      get_local 7
      get_local 5
      i32.add
      set_local 5
    end
    block  ;; label = @1
      get_local 5
      get_local 4
      i32.ne
      br_if 0 (;@1;)
      get_local 2
      i32.const 0
      get_local 1
      select
      return
    end
    get_local 5
    get_local 1
    i32.div_u)
  (func fputs (type 2) (param i32 i32) (result i32)
    (local i32)
    i32.const -1
    i32.const 0
    get_local 0
    call strlen
    tee_local 2
    get_local 0
    i32.const 1
    get_local 2
    get_local 1
    call fwrite
    i32.ne
    select)
  (func __overflow (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    get_local 1
    i32.store8 offset=15
    block  ;; label = @1
      block  ;; label = @2
        get_local 0
        i32.load offset=16
        tee_local 3
        br_if 0 (;@2;)
        i32.const -1
        set_local 3
        get_local 0
        call __towrite
        br_if 1 (;@1;)
        get_local 0
        i32.load offset=16
        set_local 3
      end
      block  ;; label = @2
        get_local 0
        i32.load offset=20
        tee_local 4
        get_local 3
        i32.eq
        br_if 0 (;@2;)
        get_local 0
        i32.load offset=64
        get_local 1
        i32.const 255
        i32.and
        tee_local 3
        i32.eq
        br_if 0 (;@2;)
        get_local 0
        get_local 4
        i32.const 1
        i32.add
        i32.store offset=20
        get_local 4
        get_local 1
        i32.store8
        br 1 (;@1;)
      end
      i32.const -1
      set_local 3
      get_local 0
      get_local 2
      i32.const 15
      i32.add
      i32.const 1
      get_local 0
      i32.load offset=32
      call_indirect 0
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      get_local 2
      i32.load8_u offset=15
      set_local 3
    end
    get_local 2
    i32.const 16
    i32.add
    set_global 0
    get_local 3)
  (func puts (type 4) (param i32) (result i32)
    block  ;; label = @1
      get_local 0
      i32.const 2584
      call fputs
      i32.const 0
      i32.ge_s
      br_if 0 (;@1;)
      i32.const -1
      return
    end
    block  ;; label = @1
      i32.const 0
      i32.load offset=2648
      i32.const 10
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=2604
      tee_local 0
      i32.const 0
      i32.load offset=2600
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      get_local 0
      i32.const 1
      i32.add
      i32.store offset=2604
      get_local 0
      i32.const 10
      i32.store8
      i32.const 0
      return
    end
    i32.const 2584
    i32.const 10
    call __overflow
    i32.const 31
    i32.shr_s)
  (func __stdio_close (type 4) (param i32) (result i32)
    get_local 0
    i32.load offset=56
    call close)
  (func writev (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 3
    set_global 0
    i32.const -1
    set_local 4
    block  ;; label = @1
      block  ;; label = @2
        get_local 2
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        i32.const 0
        i32.const 28
        i32.store offset=1536
        br 1 (;@1;)
      end
      block  ;; label = @2
        get_local 0
        get_local 1
        get_local 2
        get_local 3
        i32.const 12
        i32.add
        call __wasi_fd_write
        tee_local 2
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        get_local 2
        i32.store offset=1536
        i32.const -1
        set_local 4
        br 1 (;@1;)
      end
      get_local 3
      i32.load offset=12
      set_local 4
    end
    get_local 3
    i32.const 16
    i32.add
    set_global 0
    get_local 4)
  (func __stdio_write (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 3
    set_global 0
    get_local 3
    get_local 2
    i32.store offset=12
    get_local 3
    get_local 1
    i32.store offset=8
    get_local 3
    get_local 0
    i32.load offset=24
    tee_local 1
    i32.store
    get_local 3
    get_local 0
    i32.load offset=20
    get_local 1
    i32.sub
    tee_local 1
    i32.store offset=4
    i32.const 2
    set_local 4
    block  ;; label = @1
      block  ;; label = @2
        get_local 1
        get_local 2
        i32.add
        tee_local 5
        get_local 0
        i32.load offset=56
        get_local 3
        i32.const 2
        call writev
        tee_local 6
        i32.eq
        br_if 0 (;@2;)
        get_local 3
        set_local 1
        loop  ;; label = @3
          block  ;; label = @4
            get_local 6
            i32.const -1
            i32.gt_s
            br_if 0 (;@4;)
            i32.const 0
            set_local 6
            get_local 0
            i32.const 0
            i32.store offset=24
            get_local 0
            i64.const 0
            i64.store offset=16
            get_local 0
            get_local 0
            i32.load
            i32.const 32
            i32.or
            i32.store
            get_local 4
            i32.const 2
            i32.eq
            br_if 3 (;@1;)
            get_local 2
            get_local 1
            i32.load offset=4
            i32.sub
            set_local 6
            br 3 (;@1;)
          end
          get_local 1
          i32.const 8
          i32.add
          get_local 1
          get_local 6
          get_local 1
          i32.load offset=4
          tee_local 7
          i32.gt_u
          tee_local 8
          select
          tee_local 1
          get_local 1
          i32.load
          get_local 6
          get_local 7
          i32.const 0
          get_local 8
          select
          i32.sub
          tee_local 7
          i32.add
          i32.store
          get_local 1
          get_local 1
          i32.load offset=4
          get_local 7
          i32.sub
          i32.store offset=4
          get_local 5
          get_local 6
          i32.sub
          set_local 5
          get_local 0
          i32.load offset=56
          get_local 1
          get_local 4
          get_local 8
          i32.sub
          tee_local 4
          call writev
          tee_local 8
          set_local 6
          get_local 5
          get_local 8
          i32.ne
          br_if 0 (;@3;)
        end
      end
      get_local 0
      get_local 0
      i32.load offset=40
      tee_local 1
      i32.store offset=24
      get_local 0
      get_local 1
      i32.store offset=20
      get_local 0
      get_local 1
      get_local 0
      i32.load offset=44
      i32.add
      i32.store offset=16
      get_local 2
      set_local 6
    end
    get_local 3
    i32.const 16
    i32.add
    set_global 0
    get_local 6)
  (func __isatty (type 4) (param i32) (result i32)
    (local i32 i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 1
    set_global 0
    block  ;; label = @1
      block  ;; label = @2
        get_local 0
        get_local 1
        i32.const 8
        i32.add
        call __wasi_fd_fdstat_get
        tee_local 0
        br_if 0 (;@2;)
        i32.const 59
        set_local 0
        get_local 1
        i32.load8_u offset=8
        i32.const 2
        i32.ne
        br_if 0 (;@2;)
        get_local 1
        i32.load8_u offset=16
        i32.const 36
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        set_local 2
        br 1 (;@1;)
      end
      i32.const 0
      set_local 2
      i32.const 0
      get_local 0
      i32.store offset=1536
    end
    get_local 1
    i32.const 32
    i32.add
    set_global 0
    get_local 2)
  (func __stdout_write (type 0) (param i32 i32 i32) (result i32)
    get_local 0
    i32.const 1
    i32.store offset=32
    block  ;; label = @1
      get_local 0
      i32.load8_u
      i32.const 64
      i32.and
      br_if 0 (;@1;)
      get_local 0
      i32.load offset=56
      call __isatty
      br_if 0 (;@1;)
      get_local 0
      i32.const -1
      i32.store offset=64
    end
    get_local 0
    get_local 1
    get_local 2
    call __stdio_write)
  (func lseek (type 1) (param i32 i64 i32) (result i64)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 3
    set_global 0
    block  ;; label = @1
      block  ;; label = @2
        get_local 0
        get_local 1
        get_local 2
        i32.const 255
        i32.and
        get_local 3
        i32.const 8
        i32.add
        call __wasi_fd_seek
        tee_local 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 70
        get_local 0
        get_local 0
        i32.const 76
        i32.eq
        select
        i32.store offset=1536
        i64.const -1
        set_local 1
        br 1 (;@1;)
      end
      get_local 3
      i64.load offset=8
      set_local 1
    end
    get_local 3
    i32.const 16
    i32.add
    set_global 0
    get_local 1)
  (func __stdio_seek (type 1) (param i32 i64 i32) (result i64)
    get_local 0
    i32.load offset=56
    get_local 1
    get_local 2
    call lseek)
  (func memcpy (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        get_local 2
        i32.eqz
        br_if 0 (;@2;)
        get_local 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        get_local 0
        set_local 3
        loop  ;; label = @3
          get_local 3
          get_local 1
          i32.load8_u
          i32.store8
          get_local 2
          i32.const -1
          i32.add
          set_local 4
          get_local 3
          i32.const 1
          i32.add
          set_local 3
          get_local 1
          i32.const 1
          i32.add
          set_local 1
          get_local 2
          i32.const 1
          i32.eq
          br_if 2 (;@1;)
          get_local 4
          set_local 2
          get_local 1
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      get_local 2
      set_local 4
      get_local 0
      set_local 3
    end
    block  ;; label = @1
      block  ;; label = @2
        get_local 3
        i32.const 3
        i32.and
        tee_local 2
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            get_local 4
            i32.const 16
            i32.ge_u
            br_if 0 (;@4;)
            get_local 4
            set_local 2
            br 1 (;@3;)
          end
          get_local 4
          i32.const -16
          i32.add
          set_local 2
          loop  ;; label = @4
            get_local 3
            get_local 1
            i32.load
            i32.store
            get_local 3
            i32.const 4
            i32.add
            get_local 1
            i32.const 4
            i32.add
            i32.load
            i32.store
            get_local 3
            i32.const 8
            i32.add
            get_local 1
            i32.const 8
            i32.add
            i32.load
            i32.store
            get_local 3
            i32.const 12
            i32.add
            get_local 1
            i32.const 12
            i32.add
            i32.load
            i32.store
            get_local 3
            i32.const 16
            i32.add
            set_local 3
            get_local 1
            i32.const 16
            i32.add
            set_local 1
            get_local 4
            i32.const -16
            i32.add
            tee_local 4
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          get_local 2
          i32.const 8
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          get_local 3
          get_local 1
          i64.load align=4
          i64.store align=4
          get_local 1
          i32.const 8
          i32.add
          set_local 1
          get_local 3
          i32.const 8
          i32.add
          set_local 3
        end
        block  ;; label = @3
          get_local 2
          i32.const 4
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          get_local 3
          get_local 1
          i32.load
          i32.store
          get_local 1
          i32.const 4
          i32.add
          set_local 1
          get_local 3
          i32.const 4
          i32.add
          set_local 3
        end
        block  ;; label = @3
          get_local 2
          i32.const 2
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          get_local 3
          get_local 1
          i32.load8_u
          i32.store8
          get_local 3
          get_local 1
          i32.load8_u offset=1
          i32.store8 offset=1
          get_local 3
          i32.const 2
          i32.add
          set_local 3
          get_local 1
          i32.const 2
          i32.add
          set_local 1
        end
        get_local 2
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        get_local 3
        get_local 1
        i32.load8_u
        i32.store8
        get_local 0
        return
      end
      block  ;; label = @2
        get_local 4
        i32.const 32
        i32.lt_u
        br_if 0 (;@2;)
        get_local 2
        i32.const -1
        i32.add
        tee_local 2
        i32.const 2
        i32.gt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              get_local 2
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 0 (;@5;)
            end
            get_local 3
            get_local 1
            i32.load8_u offset=1
            i32.store8 offset=1
            get_local 3
            get_local 1
            i32.load
            tee_local 5
            i32.store8
            get_local 3
            get_local 1
            i32.load8_u offset=2
            i32.store8 offset=2
            get_local 4
            i32.const -3
            i32.add
            set_local 6
            get_local 3
            i32.const 3
            i32.add
            set_local 7
            get_local 4
            i32.const -20
            i32.add
            i32.const -16
            i32.and
            set_local 8
            i32.const 0
            set_local 2
            loop  ;; label = @5
              get_local 7
              get_local 2
              i32.add
              tee_local 3
              get_local 1
              get_local 2
              i32.add
              tee_local 9
              i32.const 4
              i32.add
              i32.load
              tee_local 10
              i32.const 8
              i32.shl
              get_local 5
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              get_local 3
              i32.const 4
              i32.add
              get_local 9
              i32.const 8
              i32.add
              i32.load
              tee_local 5
              i32.const 8
              i32.shl
              get_local 10
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              get_local 3
              i32.const 8
              i32.add
              get_local 9
              i32.const 12
              i32.add
              i32.load
              tee_local 10
              i32.const 8
              i32.shl
              get_local 5
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              get_local 3
              i32.const 12
              i32.add
              get_local 9
              i32.const 16
              i32.add
              i32.load
              tee_local 5
              i32.const 8
              i32.shl
              get_local 10
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              get_local 2
              i32.const 16
              i32.add
              set_local 2
              get_local 6
              i32.const -16
              i32.add
              tee_local 6
              i32.const 16
              i32.gt_u
              br_if 0 (;@5;)
            end
            get_local 7
            get_local 2
            i32.add
            set_local 3
            get_local 1
            get_local 2
            i32.add
            i32.const 3
            i32.add
            set_local 1
            get_local 4
            get_local 8
            i32.sub
            i32.const -19
            i32.add
            set_local 4
            br 2 (;@2;)
          end
          get_local 3
          get_local 1
          i32.load
          tee_local 5
          i32.store8
          get_local 3
          get_local 1
          i32.load8_u offset=1
          i32.store8 offset=1
          get_local 4
          i32.const -2
          i32.add
          set_local 6
          get_local 3
          i32.const 2
          i32.add
          set_local 7
          get_local 4
          i32.const -20
          i32.add
          i32.const -16
          i32.and
          set_local 8
          i32.const 0
          set_local 2
          loop  ;; label = @4
            get_local 7
            get_local 2
            i32.add
            tee_local 3
            get_local 1
            get_local 2
            i32.add
            tee_local 9
            i32.const 4
            i32.add
            i32.load
            tee_local 10
            i32.const 16
            i32.shl
            get_local 5
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            get_local 3
            i32.const 4
            i32.add
            get_local 9
            i32.const 8
            i32.add
            i32.load
            tee_local 5
            i32.const 16
            i32.shl
            get_local 10
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            get_local 3
            i32.const 8
            i32.add
            get_local 9
            i32.const 12
            i32.add
            i32.load
            tee_local 10
            i32.const 16
            i32.shl
            get_local 5
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            get_local 3
            i32.const 12
            i32.add
            get_local 9
            i32.const 16
            i32.add
            i32.load
            tee_local 5
            i32.const 16
            i32.shl
            get_local 10
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            get_local 2
            i32.const 16
            i32.add
            set_local 2
            get_local 6
            i32.const -16
            i32.add
            tee_local 6
            i32.const 17
            i32.gt_u
            br_if 0 (;@4;)
          end
          get_local 7
          get_local 2
          i32.add
          set_local 3
          get_local 1
          get_local 2
          i32.add
          i32.const 2
          i32.add
          set_local 1
          get_local 4
          get_local 8
          i32.sub
          i32.const -18
          i32.add
          set_local 4
          br 1 (;@2;)
        end
        get_local 3
        get_local 1
        i32.load
        tee_local 5
        i32.store8
        get_local 4
        i32.const -1
        i32.add
        set_local 6
        get_local 3
        i32.const 1
        i32.add
        set_local 7
        get_local 4
        i32.const -20
        i32.add
        i32.const -16
        i32.and
        set_local 8
        i32.const 0
        set_local 2
        loop  ;; label = @3
          get_local 7
          get_local 2
          i32.add
          tee_local 3
          get_local 1
          get_local 2
          i32.add
          tee_local 9
          i32.const 4
          i32.add
          i32.load
          tee_local 10
          i32.const 24
          i32.shl
          get_local 5
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          get_local 3
          i32.const 4
          i32.add
          get_local 9
          i32.const 8
          i32.add
          i32.load
          tee_local 5
          i32.const 24
          i32.shl
          get_local 10
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          get_local 3
          i32.const 8
          i32.add
          get_local 9
          i32.const 12
          i32.add
          i32.load
          tee_local 10
          i32.const 24
          i32.shl
          get_local 5
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          get_local 3
          i32.const 12
          i32.add
          get_local 9
          i32.const 16
          i32.add
          i32.load
          tee_local 5
          i32.const 24
          i32.shl
          get_local 10
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          get_local 2
          i32.const 16
          i32.add
          set_local 2
          get_local 6
          i32.const -16
          i32.add
          tee_local 6
          i32.const 18
          i32.gt_u
          br_if 0 (;@3;)
        end
        get_local 7
        get_local 2
        i32.add
        set_local 3
        get_local 1
        get_local 2
        i32.add
        i32.const 1
        i32.add
        set_local 1
        get_local 4
        get_local 8
        i32.sub
        i32.const -17
        i32.add
        set_local 4
      end
      block  ;; label = @2
        get_local 4
        i32.const 16
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        get_local 3
        get_local 1
        i32.load16_u align=1
        i32.store16 align=1
        get_local 3
        get_local 1
        i32.load8_u offset=2
        i32.store8 offset=2
        get_local 3
        get_local 1
        i32.load8_u offset=3
        i32.store8 offset=3
        get_local 3
        get_local 1
        i32.load8_u offset=4
        i32.store8 offset=4
        get_local 3
        get_local 1
        i32.load8_u offset=5
        i32.store8 offset=5
        get_local 3
        get_local 1
        i32.load8_u offset=6
        i32.store8 offset=6
        get_local 3
        get_local 1
        i32.load8_u offset=7
        i32.store8 offset=7
        get_local 3
        get_local 1
        i32.load8_u offset=8
        i32.store8 offset=8
        get_local 3
        get_local 1
        i32.load8_u offset=9
        i32.store8 offset=9
        get_local 3
        get_local 1
        i32.load8_u offset=10
        i32.store8 offset=10
        get_local 3
        get_local 1
        i32.load8_u offset=11
        i32.store8 offset=11
        get_local 3
        get_local 1
        i32.load8_u offset=12
        i32.store8 offset=12
        get_local 3
        get_local 1
        i32.load8_u offset=13
        i32.store8 offset=13
        get_local 3
        get_local 1
        i32.load8_u offset=14
        i32.store8 offset=14
        get_local 3
        get_local 1
        i32.load8_u offset=15
        i32.store8 offset=15
        get_local 3
        i32.const 16
        i32.add
        set_local 3
        get_local 1
        i32.const 16
        i32.add
        set_local 1
      end
      block  ;; label = @2
        get_local 4
        i32.const 8
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        get_local 3
        get_local 1
        i32.load8_u
        i32.store8
        get_local 3
        get_local 1
        i32.load8_u offset=1
        i32.store8 offset=1
        get_local 3
        get_local 1
        i32.load8_u offset=2
        i32.store8 offset=2
        get_local 3
        get_local 1
        i32.load8_u offset=3
        i32.store8 offset=3
        get_local 3
        get_local 1
        i32.load8_u offset=4
        i32.store8 offset=4
        get_local 3
        get_local 1
        i32.load8_u offset=5
        i32.store8 offset=5
        get_local 3
        get_local 1
        i32.load8_u offset=6
        i32.store8 offset=6
        get_local 3
        get_local 1
        i32.load8_u offset=7
        i32.store8 offset=7
        get_local 3
        i32.const 8
        i32.add
        set_local 3
        get_local 1
        i32.const 8
        i32.add
        set_local 1
      end
      block  ;; label = @2
        get_local 4
        i32.const 4
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        get_local 3
        get_local 1
        i32.load8_u
        i32.store8
        get_local 3
        get_local 1
        i32.load8_u offset=1
        i32.store8 offset=1
        get_local 3
        get_local 1
        i32.load8_u offset=2
        i32.store8 offset=2
        get_local 3
        get_local 1
        i32.load8_u offset=3
        i32.store8 offset=3
        get_local 3
        i32.const 4
        i32.add
        set_local 3
        get_local 1
        i32.const 4
        i32.add
        set_local 1
      end
      block  ;; label = @2
        get_local 4
        i32.const 2
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        get_local 3
        get_local 1
        i32.load8_u
        i32.store8
        get_local 3
        get_local 1
        i32.load8_u offset=1
        i32.store8 offset=1
        get_local 3
        i32.const 2
        i32.add
        set_local 3
        get_local 1
        i32.const 2
        i32.add
        set_local 1
      end
      get_local 4
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      get_local 3
      get_local 1
      i32.load8_u
      i32.store8
    end
    get_local 0)
  (func memset (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64)
    block  ;; label = @1
      get_local 2
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      get_local 1
      i32.store8
      get_local 2
      get_local 0
      i32.add
      tee_local 3
      i32.const -1
      i32.add
      get_local 1
      i32.store8
      get_local 2
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      get_local 0
      get_local 1
      i32.store8 offset=2
      get_local 0
      get_local 1
      i32.store8 offset=1
      get_local 3
      i32.const -3
      i32.add
      get_local 1
      i32.store8
      get_local 3
      i32.const -2
      i32.add
      get_local 1
      i32.store8
      get_local 2
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      get_local 0
      get_local 1
      i32.store8 offset=3
      get_local 3
      i32.const -4
      i32.add
      get_local 1
      i32.store8
      get_local 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      get_local 0
      i32.const 0
      get_local 0
      i32.sub
      i32.const 3
      i32.and
      tee_local 4
      i32.add
      tee_local 3
      get_local 1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      tee_local 1
      i32.store
      get_local 3
      get_local 2
      get_local 4
      i32.sub
      i32.const -4
      i32.and
      tee_local 4
      i32.add
      tee_local 2
      i32.const -4
      i32.add
      get_local 1
      i32.store
      get_local 4
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      get_local 3
      get_local 1
      i32.store offset=8
      get_local 3
      get_local 1
      i32.store offset=4
      get_local 2
      i32.const -8
      i32.add
      get_local 1
      i32.store
      get_local 2
      i32.const -12
      i32.add
      get_local 1
      i32.store
      get_local 4
      i32.const 25
      i32.lt_u
      br_if 0 (;@1;)
      get_local 3
      get_local 1
      i32.store offset=24
      get_local 3
      get_local 1
      i32.store offset=20
      get_local 3
      get_local 1
      i32.store offset=16
      get_local 3
      get_local 1
      i32.store offset=12
      get_local 2
      i32.const -16
      i32.add
      get_local 1
      i32.store
      get_local 2
      i32.const -20
      i32.add
      get_local 1
      i32.store
      get_local 2
      i32.const -24
      i32.add
      get_local 1
      i32.store
      get_local 2
      i32.const -28
      i32.add
      get_local 1
      i32.store
      get_local 4
      get_local 3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      tee_local 5
      i32.sub
      tee_local 2
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      get_local 1
      i64.extend_u/i32
      tee_local 6
      i64.const 32
      i64.shl
      get_local 6
      i64.or
      set_local 6
      get_local 3
      get_local 5
      i32.add
      set_local 1
      loop  ;; label = @2
        get_local 1
        get_local 6
        i64.store
        get_local 1
        i32.const 24
        i32.add
        get_local 6
        i64.store
        get_local 1
        i32.const 16
        i32.add
        get_local 6
        i64.store
        get_local 1
        i32.const 8
        i32.add
        get_local 6
        i64.store
        get_local 1
        i32.const 32
        i32.add
        set_local 1
        get_local 2
        i32.const -32
        i32.add
        tee_local 2
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    get_local 0)
  (func strdup (type 4) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      get_local 0
      call strlen
      i32.const 1
      i32.add
      tee_local 1
      call malloc
      tee_local 2
      i32.eqz
      br_if 0 (;@1;)
      get_local 2
      get_local 0
      get_local 1
      call memcpy
      drop
    end
    get_local 2)
  (func strlen (type 4) (param i32) (result i32)
    (local i32 i32 i32)
    get_local 0
    set_local 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          get_local 0
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            get_local 0
            i32.load8_u
            br_if 0 (;@4;)
            get_local 0
            get_local 0
            i32.sub
            return
          end
          get_local 0
          i32.const 1
          i32.add
          set_local 1
          loop  ;; label = @4
            get_local 1
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            get_local 1
            i32.load8_u
            set_local 2
            get_local 1
            i32.const 1
            i32.add
            tee_local 3
            set_local 1
            get_local 2
            i32.eqz
            br_if 2 (;@2;)
            br 0 (;@4;)
          end
        end
        get_local 1
        i32.const -4
        i32.add
        set_local 1
        loop  ;; label = @3
          get_local 1
          i32.const 4
          i32.add
          tee_local 1
          i32.load
          tee_local 2
          i32.const -1
          i32.xor
          get_local 2
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          get_local 2
          i32.const 255
          i32.and
          br_if 0 (;@3;)
          get_local 1
          get_local 0
          i32.sub
          return
        end
        loop  ;; label = @3
          get_local 1
          i32.load8_u offset=1
          set_local 2
          get_local 1
          i32.const 1
          i32.add
          tee_local 3
          set_local 1
          get_local 2
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      get_local 3
      i32.const -1
      i32.add
      set_local 3
    end
    get_local 3
    get_local 0
    i32.sub)
  (table (;0;) 5 5 anyfunc)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 68240))
  (export "memory" (memory 0))
  (export "_start" (func _start))
  (elem (i32.const 1) __stdio_write __stdio_close __stdout_write __stdio_seek)
  (data (i32.const 1024) "Hello World!\00")
  (data (i32.const 1040) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
  (data (i32.const 2584) "\05\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\04\00\00\00\18\06\00\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18\0a\00\00"))
