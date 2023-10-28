(*
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
*)
let insert_in elem str pos =
    let len = String.length str in
    if pos < 1 || pos > len then
	failwith "Position out of bounds"
    else
	let prefix = String.sub str 0 pos in
	let suffix = String.sub str pos (len-pos) in
	prefix ^ (String.make 1 elem) ^ suffix

let original_string = "abcd";;
let resulting_string = insert_in 'X'original_string 1;;

Printf.printf "Original String: \"%s\"\n" original_string; 
Printf.printf "Modified String: \"%s\"\n" resulting_string 
