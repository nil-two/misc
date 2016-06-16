let to_score m f r =
    match (m, f, r) with
    | _ when m == -1 || f == -1   -> "F"
    | _ when m+f >= 80            -> "A"
    | _ when m+f >= 65            -> "B"
    | _ when m+f >= 50            -> "C"
    | _ when m+f >= 30 && r >= 50 -> "C"
    | _ when m+f >= 30            -> "D"
    | _                           -> "F"

let solve m f r =
    Printf.printf "%s\n" (to_score m f r)

let () =
    let rec loop () =
        let (m, f, r) = Scanf.scanf "%d %d %d\n" (fun m f r -> (m, f, r)) in
        match (m, f, r) with
        | (-1, -1, -1) -> ()
        | (_, _, _) -> (
            solve m f r ;
            loop () ;
        )
    in
    loop ()
