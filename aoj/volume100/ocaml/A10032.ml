let () =
    let stack = Stack.create () in
    let rec loop () =
        let order = Scanf.scanf " %s " (fun order -> order) in
        match order with
        | "quit" -> ()
        | "push" -> (
            let block = Scanf.scanf " %s " (fun block -> block) in
            Stack.push block stack ;
            loop () ;
        )
        | "pop"  -> (
            let block = Stack.pop stack in
            Printf.printf "%s\n" block ;
            loop () ;
        )
        | _      -> ()
    in
    loop ()
