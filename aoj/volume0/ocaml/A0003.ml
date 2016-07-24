let is_triangle a b c =
    a**2.0 +. b**2.0 = c**2.0

let to_result a b c =
    if is_triangle a b c then "YES" else "NO"

let () =
    let n = Scanf.scanf "%d\n" (fun x -> x) in
    for i = 1 to n do
        let lengthes = Scanf.scanf "%f %f %f\n" (fun a b c -> [|a; b; c|]) in
        Array.sort compare lengthes ;

        let a, b, c = lengthes.(0), lengthes.(1), lengthes.(2) in
        let result  = to_result a b c in
        Printf.printf "%s\n" result ;
    done
