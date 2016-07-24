let rec add_debt debt n =
    if n <= 0 then debt
    else add_debt (floor ((ceil (debt*.1.05/.1000.0)) *.1000.0)) (n-1)

let () =
    let debt         = 100000.0 in
    let n            = read_int () in
    let hellish_debt = int_of_float (add_debt debt n) in
    Printf.printf "%d\n" hellish_debt
