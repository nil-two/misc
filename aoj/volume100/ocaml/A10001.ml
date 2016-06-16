let cube n =
    int_of_float (float_of_int(n) ** 3.0)

let solve n =
    Printf.printf "%d\n" (cube n)

let () =
    Scanf.scanf "%d" solve
