let pi = 4.0 *. atan 1.0

let solve a b deg =
    let rad = deg *. pi /. 180.0 in
    let c   = sqrt (a**2.0 +. b**2.0 -. 2.0*.a*.b*.(cos rad)) in

    let area      = a*.b*.(sin rad) /. 2.0 in
    let perimeter = a +. b +. c in
    let h         = 2.0*.area /. a in

    Printf.printf "%.6f\n%.6f\n%.6f\n" area perimeter h

let () =
    Scanf.scanf "%f %f %f" solve
