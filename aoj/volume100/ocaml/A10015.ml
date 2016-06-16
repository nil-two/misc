let kinds = ["S"; "H"; "C"; "D"]

let indexes = [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13]

let to_card kind index =
    kind ^ " " ^ (string_of_int index)

let () =
    let n_cards = read_int () in
    let cards   = Hashtbl.create n_cards in
    List.iter (fun kind ->
        List.iter (fun index ->
            Hashtbl.add cards (to_card kind index) false
        ) indexes
    ) kinds ;

    for i = 1 to n_cards do
        let card = read_line () in
        Hashtbl.add cards card true
    done ;

    List.iter (fun kind ->
        List.iter (fun index ->
            let card = to_card kind index in
            if not (Hashtbl.find cards card) then (
                print_string card ;
                print_newline () ;
            )
        ) indexes
    ) kinds
