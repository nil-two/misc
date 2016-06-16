let pi =
    4.0 *. atan 1.0

let area r =
    r *. r *. pi

let circumference r =
    2.0 *. r *. pi

let solve r =
    Printf.printf "%.6f %.6f\n" (area r) (circumference r)

let () =
    Scanf.scanf "%f" solve
