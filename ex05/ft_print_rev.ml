let ft_print_rev str =
    let l = String.length str in
    let rec ft_print_rev_char i =
        if i < l then
        begin
            print_char (String.get str (l - i - 1));
            ft_print_rev_char (i + 1)
        end
        else
            print_endline "" in
    if (String.length str) = 0 then
        print_endline str
    else
        ft_print_rev_char 0

let () =
    ft_print_rev "Hello";
    ft_print_rev "";
    ft_print_rev "World";
    ft_print_rev "Hello world"
