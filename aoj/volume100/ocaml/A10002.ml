let area a b =
    a * b

let perimeter a b =
    2*a + 2*b

let solve a b =
    Printf.printf "%d %d\n" (area a b) (perimeter a b)

let () =
    Scanf.scanf "%d %d" solve
