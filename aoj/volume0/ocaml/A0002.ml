let () =
    try
        while true do
            let x, y   = Scanf.scanf "%d %d\n" (fun x y -> x, y) in
            let total  = x + y in
            let digits = String.length (string_of_int total) in
            Printf.printf "%d\n" digits
        done
    with
        End_of_file -> ()
