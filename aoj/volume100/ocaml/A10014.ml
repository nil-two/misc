let to_pattern x y =
    if (x+y) mod 2 == 0 then '#' else '.'

let solve h w =
    let rec loop x y =
        match (x, y) with
        | (x, y) when x == w && y == h -> (
            print_char (to_pattern x y) ;
            print_newline () ;
            print_newline () ;
        )
        | (x, y) when x == w -> (
            print_char (to_pattern x y) ;
            print_newline () ;
            loop 1 (y+1) ;
        )
        | (x, y) -> (
            print_char (to_pattern x y) ;
            loop (x+1) y ;
        )
    in
    loop 1 1

let () =
    let rec loop () =
        let (h, w) = Scanf.scanf "%d %d\n" (fun h w -> (h, w)) in
        match (h, w) with
        | (0, 0) -> ()
        | (_, _) -> (
            solve h w ;
            loop () ;
        )
    in
    loop ()
