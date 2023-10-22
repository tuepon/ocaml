(*
let rec sum lst =
    match lst with
    | [] -> 0
    | h :: t -> h + sum t


let numbers = [2; 8; 4; 5; 9] ;;
let result = sum numbers ;;

Printf.printf "Sum: %d\n" result
*)

let rec print_list lst =
    match lst with
    | [] -> ()
    | head :: tail ->
      Printf.printf "%d " head;
      print_list tail

let numbers = [2; 8; 4; 5; 9] ;;

print_list numbers;

print_newline ()

















