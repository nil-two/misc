let shuffle cards h =
    (String.sub cards h ((String.length cards)-h)) ^ (String.sub cards 0 h)

let () =
    let rec loop () =
        let cards = ref (read_line ()) in
        match !cards with
        | "-" -> ()
        | _   -> (
            let n_shuffle = read_int () in
            for i = 1 to n_shuffle do
                let h = read_int () in
                cards := shuffle !cards h
            done ;
            Printf.printf "%s\n" !cards ;
            loop ()
        )
    in
    loop ()
