let relation a b =
    if a == b then "a == b"
    else if a < b then "a < b"
    else if a > b then "a > b"
    else ""

let solve a b =
    Printf.printf "%s\n" (relation a b)

let () =
    Scanf.scanf "%d %d" solve
