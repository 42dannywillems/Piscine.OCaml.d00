let ft_print_comb2 () =
    let print_int_loc i =
        if i < 10 then
        begin
            print_char '0';
            print_int i
        end
        else
            print_int i
    in
    let rec ft_print_comb2_loc i j =
        print_string ", ";
        print_int_loc i;
        print_char ' ';
        print_int_loc j;
        if i = 98 && j = 99 then ()
        else if j = 99 then ft_print_comb2_loc (i + 1) (i + 2)
        else ft_print_comb2_loc i (j + 1)
    in
    print_int_loc 0;
    print_char ' ';
    print_int_loc 1;
    ft_print_comb2_loc 0 2;
    print_char '\n'

let () =
    ft_print_comb2()
