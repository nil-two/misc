let () =
    let n_items = read_int () in
    let items   = Array.make n_items "" in
    for i = 1 to n_items do
        let item = read_line () in
        Array.set items (i - 1) item
    done ;

    Array.sort String.compare items ;

    print_string (Array.get items 0) ;
    print_newline () ;
