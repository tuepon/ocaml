let average lst =
    let sum = List.fold_left (+) 0 lst in
    let count = List.length lst in
    float_of_int sum /. float_of_int count

let numbers = [8; 1; 3; 9] ;;
let avg = average numbers ;;

Printf.printf "Average: %.2f\n" avg
