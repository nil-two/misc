let average nums =
    (List.fold_left (+.) 0.0 nums) /. (float (List.length nums))

let variance nums =
    let average = average nums in
    (List.fold_left (fun sum n -> sum +. (average-.n)**2.0) 0.0 nums) /. (float (List.length nums))

let standard_deviation nums =
    sqrt (variance nums)

let solve nums =
    Printf.printf "%f\n" (standard_deviation nums)

let () =
    let rec loop () =
        let n = Scanf.scanf " %d " (fun n -> n) in
        match n with
        | 0 -> ()
        | _ -> (
            let nums = Array.make n 0.0 in
            for i = 1 to n do
                Scanf.scanf " %f " (Array.set nums (i-1)) 
            done ;
            solve (Array.to_list nums) ;
            loop () ;
        )
    in
    loop ()
