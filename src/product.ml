let prod lst =
    List.fold_left ( * ) 1 lst

let result = prod [3; 1; 2; 4] ;;
Printf.printf "The product is: %d\n" result