let ft_print_alphabet () =
    let rec ft_print_letter c =
        if c <= 122 then
        begin
            print_char (char_of_int c);
            ft_print_letter (c + 1)
        end
        else
            print_endline "" in
    ft_print_letter 97

let () = ft_print_alphabet ()
