let reverse_string s =
    let length = String.length s in
    let t      = Buffer.create length in
    let last   = length - 1 in
    for i = 0 to last do
        Buffer.add_char t s.[last-i]
    done ;
    Buffer.contents t

let () =
    let s          = read_line () in
    let reversed_s = reverse_string s in
    Printf.printf "%s\n" reversed_s
