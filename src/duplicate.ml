let rec print_list lst =
    match lst with
    | [] -> ()
    | [x] -> Printf.printf "%s" x
    | x :: xs -> Printf.printf "%s; " x; print_list xs
 
let rec duplicate lst =
    match lst with
    | [] -> []
    | head :: tail -> head :: head :: duplicate tail
   
let numbers = [1; 8; 5] ;;

let words = ["sea"; "forest"] ;;

let result = duplicate words ;;

print_list result;

Printf.printf "\n"
