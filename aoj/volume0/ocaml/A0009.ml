let () =
    let max = 999999 in
    let is_primes = Array.make (max+1) true in
    for x = 2 to max / 2 do
        if is_primes.(x) then (
            for y = 2 to max / x do
                is_primes.(x*y) <- false
            done ;
        ) ;
    done ;

    let n_primes = Array.make (max+1) 0 in
    let count    = ref 0 in
    for x = 2 to max do
        if is_primes.(x) then (
            count := !count + 1
        ) ;
        n_primes.(x) <- !count
    done ;

    try
        while true do
            let n = read_int () in
            Printf.printf "%d\n" (n_primes.(n))
        done
    with
        End_of_file -> ()
