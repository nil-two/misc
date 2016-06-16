let distance x1 y1 x2 y2 =
    sqrt (((x2-.x1)**2.0) +. ((y2-.y1)**2.0))

let solve x1 y1 x2 y2 =
    Printf.printf "%.6f\n" (distance x1 y1 x2 y2)

let () =
    Scanf.scanf "%f %f %f %f" solve
