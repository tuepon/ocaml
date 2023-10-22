let rec last_elem lst =
    match lst with
    | [] -> failwith "Empty list has no last element"
    | [x] -> x
    | _ :: tail -> last_elem tail

let numbers = [1; 8; 2; 5] ;;

let words = ["sea"; "water"; "ocean"]

let result = last_elem words ;;

Printf.printf "The last element is: %s\n" result 
