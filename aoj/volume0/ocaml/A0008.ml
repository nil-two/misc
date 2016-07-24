let count_combination n =
    let count = ref 0 in
    for a = 0 to 9 do
        for b = 0 to 9 do
            for c = 0 to 9 do
                for d = 0 to 9 do
                    if a + b + c + d = n then (
                        count := !count + 1
                    )
                done
            done
        done
    done ;
    !count

let () =
    try
        while true do
            let n = read_int () in
            let c = count_combination n in
            Printf.printf "%d\n" c
        done
    with
        End_of_file -> ()
