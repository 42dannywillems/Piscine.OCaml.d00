let ft_is_palindrome str =
    let l = String.length str in
    let rec ft_is_palindrome_loc i =
        if i < (l / 2) && (String.get str i) = (String.get str (l - 1 - i)) then
            ft_is_palindrome_loc (i + 1)
        else
            i = l / 2 in
    ft_is_palindrome_loc 0

let () =
    let test str = if (ft_is_palindrome str) then print_endline "OK" else
        print_endline "Not OK" in
    test "Hello";
    test "car";
    test "BeB";
    test "lamarieeiramal"
