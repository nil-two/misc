let () =
    let n_stacks = Scanf.scanf " %d " (fun n -> n) in
    let stacks   = Array.make n_stacks (Stack.create ()) in
    for i = 1 to n_stacks do
        Array.set stacks (i-1) (Stack.create ())
    done ;

    let rec loop () =
        let order = Scanf.scanf " %s " (fun order -> order) in
        match order with
        | "quit" -> ()
        | "push" -> (
            let dst   = Scanf.scanf " %d " (fun index -> Array.get stacks (index-1)) in
            let block = Scanf.scanf " %s " (fun block -> block) in
            Stack.push block dst ;
            loop () ;
        )
        | "pop"  -> (
            let src   = Scanf.scanf " %d " (fun index -> Array.get stacks (index-1)) in
            let block = Stack.pop src in
            Printf.printf "%s\n" block ;
            loop () ;
        )
        | "move"  -> (
            let src = Scanf.scanf " %d " (fun index -> Array.get stacks (index-1)) in
            let dst = Scanf.scanf " %d " (fun index -> Array.get stacks (index-1)) in
            Stack.push (Stack.pop src) dst ;
            loop () ;
        )
        | _      -> ()
    in
    loop ()
