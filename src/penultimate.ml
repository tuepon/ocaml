let rec before_last lst =
    match lst with
    | [] -> failwith "List is empty"
    | [_] -> failwith "List has only one element"
    | [x;_] -> x 
    | _ :: tail -> before_last tail

let numbers = [1; 8; 2; 5] ;;

let result = before_last numbers ;;

Printf.printf "The penultimate element is: %d\n" result 
