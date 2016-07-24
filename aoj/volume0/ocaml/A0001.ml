let () =
    let heights = Array.make 10 0 in
    for i = 1 to 10 do
        let n = read_int () in
        heights.(i-1) <- n
    done ;

    Array.sort compare heights ;

    for i = 1 to 3 do
        let height = heights.(10-i) in
        Printf.printf "%d\n" height
    done ;
