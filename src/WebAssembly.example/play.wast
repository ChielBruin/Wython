(module
  (func $_log (import "console" "log") (param i32))
;;   (func $__fwrite (import "env" "__fwrite") (param i32 i32 i32 i32) (result i32))
;;   (func $_get__stdout (import "env" "get__stdout") (param) (result i32))
  (memory 1)
  (data (i32.const 0) "Hello, world!\n")

  (func $main 
        (i32.const 42)
        (call $_log)
 ;;    (local $stdout i32)
 ;;    (local $unneccessary i32)
 ;;    (call $_get__stdout)
 ;;    (set_local $stdout)
 ;;    (i32.const 0) ;; *str
 ;;    (i32.const 1) ;; Data size 
 ;;    (i32.const 13) ;; String Length 
 ;;    (get_local $stdout);; Stream
 ;;    (call $__fwrite)
 ;;    (set_local $unneccessary)
  )
  (export "main" (func $main))
)
