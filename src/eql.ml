let rec zipWith f xs ys =
    match (xs,ys) with
    | ([],_) | (_,[]) -> []
    | (x :: xs',y :: ys') -> f x y :: zipWith f xs' ys'


let eql xs ys =
    let condition x y = x = y in
    let zipped = zipWith condition xs ys in
    let lengths_equal = List.length xs = List.length ys in
    lengths_equal && List.fold_left (&&) true zipped 

(* let list1 = [1; 2; 3; 4; 5] ;;
let list2 = [1; 2; 3; 4; 5] ;;
let list3 = [1; 2; 3; 4; 6] ;; *)

let list1 = ["sea","water"] 
let list2 = ["sea","water"]
let list3 = ["ocean","water"]

let result1 = eql list1 list2 ;;
let result2 = eql list1 list3 ;;

Printf.printf "Are list1 and list2 equal? %b\n" result1;
Printf.printf "Are list1 and list3 equal? %b\n" result2
