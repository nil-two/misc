let solve a b c =
    let ls = [|a; b; c|] in
    Array.sort compare ls ;
    Printf.printf "%d %d %d\n" (Array.get ls 0) (Array.get ls 1) (Array.get ls 2)

let () =
    Scanf.scanf "%d %d %d" solve
