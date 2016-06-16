let solve nums =
    let sorted = List.sort compare nums in
    let result = String.concat " " (List.map string_of_int sorted) in
    Printf.printf "%s\n" result

let () =
    let n    = read_int () in
    let nums = Array.make n 0 in
    for i = 1 to n do
        Scanf.scanf " %d " (Array.set nums (i-1))
    done ;
    solve (Array.to_list nums)
