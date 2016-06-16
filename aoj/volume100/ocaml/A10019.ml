let to_number ch =
    (int_of_char ch) - (int_of_char '0')

let sum_of_numbers x =
    let sum = ref 0 in
    String.iter (fun ch ->
        sum := !sum + (to_number ch)
    ) x ;
    !sum

let solve x =
    Printf.printf "%d\n" (sum_of_numbers x)

let () =
    let rec loop () =
        let x = read_line () in
        match x with
        | ("0") -> ()
        | (_)   -> (
            solve x ;
            loop () ;
        )
    in
    loop ()
