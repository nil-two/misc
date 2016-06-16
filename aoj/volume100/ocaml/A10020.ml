let is_alphabet ch =
    let code = (int_of_char ch) in
    (int_of_char 'a') <= code && code <= (int_of_char 'z')

let () =
    let counts = Hashtbl.create 26 in
    for code = (int_of_char 'a') to (int_of_char 'z') do
        Hashtbl.add counts (char_of_int code) 0
    done ;

    let rec loop () =
        try
            let line = read_line () in
            String.iter (fun ch ->
                let ch = Char.lowercase ch in
                if is_alphabet ch then
                    let count = Hashtbl.find counts ch in
                    Hashtbl.add counts ch (count + 1)
            ) line ;
            loop () ;
        with
        End_of_file -> ()
    in
    loop () ;

    for code = (int_of_char 'a') to (int_of_char 'z') do
        let ch = (char_of_int code) in
        Printf.printf "%c : %d\n" ch (Hashtbl.find counts ch)
    done ;
