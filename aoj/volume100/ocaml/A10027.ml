let n_games = read_int () in
let rec game a_score b_score n_rests =
    match n_rests with
    | 0 -> (a_score, b_score)
    | _ -> (
        let (a, b) = Scanf.scanf "%s %s\n" (fun a b -> (a, b)) in
        let result = String.compare a b in
        match result with
        | -1 -> game (a_score+0) (b_score+3) (n_rests-1)
        | 1  -> game (a_score+3) (b_score+0) (n_rests-1)
        | 0  -> game (a_score+1) (b_score+1) (n_rests-1)
        | _  -> (0, 0)
    )
in
let (a_score, b_score) = game 0 0 n_games in
Printf.printf "%d %d\n" a_score b_score
