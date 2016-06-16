let n_ways n x =
    let count = ref 0 in
    for a = 1 to n do
        for b = a+1 to n do
            for c = b+1 to n do
                if a + b + c == x then
                    count := !count + 1
            done ;
        done ;
    done ;
    !count

let solve n x =
    Printf.printf "%d\n" (n_ways n x)

let () =
    let rec loop () =
        let (n, x) = Scanf.scanf "%d %d\n" (fun x y -> (x, y)) in
        match (n, x) with
        | (0, 0) -> ()
        | (_, _) -> (
            solve n x ;
            loop () ;
        )
    in 
    loop ()
