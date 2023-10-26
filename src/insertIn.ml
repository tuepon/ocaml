let rec insert_in elem lst pos =
    match pos, lst with
    | 1, _ -> elem :: lst
    | _, [] -> failwith "Position out of bounds"
    | _, head :: tail -> head :: insert_in elem tail (pos - 1)

let values = [1; 5; 2; 7] ;;

let resulting_list = insert_in 8 values 3 ;;

Printf.printf "Original List [%s]\n" (String.concat "; " 
    (List.map string_of_int values));

Printf.printf "Modified List [%s]\n" (String.concat "; " 
    (List.map string_of_int resulting_list));