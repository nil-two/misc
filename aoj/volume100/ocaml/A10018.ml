let char_swapcase ch =
    let code = int_of_char ch in
    match code with
    | _ when (int_of_char 'a') <= code && code <= (int_of_char 'z') -> Char.uppercase ch
    | _ when (int_of_char 'A') <= code && code <= (int_of_char 'Z') -> Char.lowercase ch
    | _                                                             -> ch

let string_swapcase s =
    String.map char_swapcase s

let solve text =
    Printf.printf "%s\n" (string_swapcase text)

let () =
    solve (read_line ())
