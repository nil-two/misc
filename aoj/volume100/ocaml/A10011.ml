let read_n_words n =
    let words = Array.make n "" in
    for i = 1 to n do
        Scanf.scanf " %s " (Array.set words (i-1))
    done ;
    Array.to_list words

let solve items =
    Printf.printf "%s\n" (String.concat " " (List.rev items))

let () =
    let n_items = read_int () in
    let items   = read_n_words n_items in
    solve items
