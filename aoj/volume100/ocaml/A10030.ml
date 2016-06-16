let () =
    let n = Scanf.scanf " %d " (fun n -> n) in
    let s = Hashtbl.create n in
    for i = 1 to n do
        Scanf.scanf " %d " (fun x -> Hashtbl.replace s x true)
    done ;

    let q = Scanf.scanf " %d " (fun n -> n) in
    let t = Hashtbl.create q in
    for i = 1 to q do
        Scanf.scanf " %d " (fun x -> Hashtbl.replace t x true)
    done ;

    let original_length = Hashtbl.length s in
    Hashtbl.iter (fun k v -> 
        Hashtbl.remove s k
    ) t ;
    let removed_length = Hashtbl.length s in

    Printf.printf "%d\n" (original_length - removed_length)
