let x = 10;;
Printf.printf "%d\n" x;;
let foo = 1;;
Printf.printf "%d\n" foo;;
print_endline ;;
let foo' = foo * 2;;
Printf.printf "%d\n" foo';;
(* let int_inc  (x: int): int =x +1;; *)

let rec factorial n =
    if n = 0 then 1
    else n * factorial (n-1)
;;

let fact3 = factorial 3;;

Printf.printf "%d\n" fact3;;
let fact4 = factorial (5-1);;
Printf.printf "%d\n" fact4;;

let print_hello() = print_endline "hello world";;

print_hello()
let make_inc x y = x + y ;; 
(* let make_inc x y = x+y;; *)
let inc_2 = make_inc 2 ;;   (* inc_2 is int -> int *)
let ret = inc_2 3 ;; (* Evaluates to 5 *)
Printf.printf "%d\n" ret;;

let print_and_return x = 
    print_endline (string_of_int x);;
    x
;;
print_and_return 123

(* let x = 10 in *)
(* let y = 20 in *)
(* x + y ;; *)

let my_lambda = fun x -> x*x;;
my_lambda 1;;
