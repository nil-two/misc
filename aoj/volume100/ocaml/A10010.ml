let rec loop () =
    let (a, op, b) = Scanf.scanf "%d %s %d\n" (fun a op b -> (a, op, b)) in
    match op with
    | "?" -> ()
    | _   -> (
        let result = match op with
        | "+" -> a + b
        | "-" -> a - b
        | "*" -> a * b
        | "/" -> a / b
        | _   -> 0
        in
        Printf.printf "%d\n" result ;
        loop () ;
    )
in
loop ()
