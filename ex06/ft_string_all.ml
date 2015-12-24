let ft_string_all f str =
    let l = String.length str in
    let rec ft_check_char i =
        if i < l && (f (String.get str i)) then
            ft_check_char (i + 1)
        else
            i = l in
    ft_check_char 0

let () =
    let c = int_of_char in
    let ft_is_char ch = ((c ch) >= 65 && (c ch) <= 90) || ((c ch) >= 97 && (c
    ch) <= 122) in
    let test str =
        if ft_string_all ft_is_char str then
            print_endline "OK"
        else
            print_endline "Not OK" in
    test "Hello";
    test "Hello "
