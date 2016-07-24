let () =
    for x = 1 to 9 do
        for y = 1 to 9 do
            Printf.printf "%dx%d=%d\n" x y (x*y)
        done
    done
