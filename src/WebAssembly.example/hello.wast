(module
  (func $_log (import "console" "log") (param i32))
  (func $_logString (import "lib" "logString") (param i32 i32))
  (memory $_memory (import "memory" "memory") 1)
  (data (i32.const 0) "Hello, Rasmus!\n")
  (data (i32.const 15) "Hello, Chiel!\n")

  (func $main 
     (i32.const 0) ;; *str
     (i32.const 14) ;; String Length 
     (call $_logString)
     (i32.const 15) ;; *str
     (i32.const 13) ;; String Length 
     (call $_logString)
  )
  (export "main" (func $main))
)
