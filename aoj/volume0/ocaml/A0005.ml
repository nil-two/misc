let rec gcd a b =
    if a == b then a 
    else if a < b then gcd a (b-a)
    else if a > b then gcd (a-b) b
    else 0

let lcm a b =
     (a * b) / (gcd a b)

let () =
    try
        while true do
            let a, b     = Scanf.scanf "%d %d\n" (fun a b -> a, b) in
            let gcd, lcm = (gcd a b), (lcm a b) in
            Printf.printf "%d %d\n" gcd lcm
        done
    with
        End_of_file -> ()
