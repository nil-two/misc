let rec loop () =
    let (a, b) = Scanf.scanf "%d %d\n" (fun a b -> (a, b)) in
    match (a, b) with
    | (0, 0) -> ()
    | (_, _) -> (
        Printf.printf "%d %d\n" (min a b) (max a b) ;
        loop () ;
    )
in
loop ()
