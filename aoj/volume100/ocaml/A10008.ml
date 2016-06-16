let solve a b =
    Printf.printf "%d %d %.6f\n" (a / b) (a mod b) ((float a) /. (float b))

let () =
    Scanf.scanf "%d %d" solve
