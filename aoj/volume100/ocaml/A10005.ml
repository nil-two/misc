let repeat_string s n =
    String.concat "" (Array.to_list (Array.make n s))
in
print_string (repeat_string "Hello World\n" 1000)
