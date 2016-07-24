let () =
    try
        while true do
            let a1, b1, c1, a2, b2, c2 = Scanf.scanf "%f %f %f %f %f %f\n" (fun a1 b1 c1 a2 b2 c2 -> a1, b1, c1, a2, b2, c2) in
            let a = (a1*.b2 -. a2*.b1) in
            let x = (c1*.b2 -. c2*.b1) /. a +. 0.0 in
            let y = (a1*.c2 -. a2*.c1) /. a +. 0.0 in
            Printf.printf "%.3f %.3f\n" x y
        done
    with
        End_of_file -> ()
