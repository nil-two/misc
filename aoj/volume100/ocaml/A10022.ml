let string_euqal a b =
    (String.compare (String.lowercase a) (String.lowercase b)) == 0

let count_words w =
    let rec loop count =
        let s = Scanf.scanf " %s " (fun s -> s) in
        match s with
        | "END_OF_TEXT" -> count
        | _             -> (
            if string_euqal s w then
                loop (count + 1)
            else
                loop count
        )
    in
    loop 0

let () =
    let w     = read_line () in
    let count = count_words w in
    Printf.printf "%d\n" count
