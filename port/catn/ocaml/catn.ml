let usage = "usage: catn N [FILE]..."

let input_entire channel =
    let buf = Buffer.create 4096 in
    try
        while true do
            Buffer.add_string buf (input_line channel) ;
            Buffer.add_char buf '\n' ;
        done ;
        ""
    with End_of_file -> Buffer.contents buf

let read_argf args =
    match Array.length args with
    | 0   -> input_entire stdin
    | len -> (
        let buf = Buffer.create 4096 in
        for i = 1 to len do
            let path = Array.get args (i-1) in
            let fin  = open_in path in
            Buffer.add_string buf (input_entire fin) ;
            close_in fin ;
        done ;
        Buffer.contents buf
    )

let () =
    if ((Array.length Sys.argv) < 2) then (
        Printf.fprintf stderr "%s\n" usage ;
        exit 2 ;
    ) ;

    let n   = int_of_string (Array.get Sys.argv 1) in
    let src = read_argf (Array.sub Sys.argv 2 ((Array.length Sys.argv) - 2)) in

    if n < 0 then (
        while true do
            print_string src
        done
    ) else (
        for i = 1 to n do
            print_string src
        done
    )
