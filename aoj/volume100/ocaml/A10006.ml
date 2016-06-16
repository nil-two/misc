let rec loop i () =
    let n = read_int () in
    match n with
    | 0 -> ()
    | _ -> (
        Printf.printf "Case %d: %d\n" i n ;
        loop (i + 1) () ;
    )
in
loop 1 ()
