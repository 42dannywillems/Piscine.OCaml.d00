let ft_rot_n n s =
    let ft_is_lowercase c =
        let c_int = (int_of_char c) in ((c_int >= 97) && (c_int <= 122)) in
    let ft_is_uppercase c =
        let c_int = (int_of_char c) in ((c_int >= 65) && (c_int <= 90)) in
    let ft_rot_n_lowercase c =
        (char_of_int (((int_of_char c) - 97 + n) mod 26 + 97)) in
    let ft_rot_n_uppercase c =
        (char_of_int (((int_of_char c) - 65 + n) mod 26 + 65)) in
    let ft_rot_n_loc c =
        if ft_is_lowercase c then ft_rot_n_lowercase c
        else if ft_is_uppercase c then ft_rot_n_uppercase c
        else c in
    String.map ft_rot_n_loc s

let () =
    print_endline (ft_rot_n 5 "Hello world");
    print_endline (ft_rot_n 4 "World");
    print_endline (ft_rot_n 4 "1223434");
    print_endline (ft_rot_n 31 "Hello world")
