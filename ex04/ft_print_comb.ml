let ft_print_comb () =
    let i = 0 in
    let j = 1 in
    let k = 2 in
    let rec ft_print_comb_loc i j k =
        print_int i;
        print_int j;
        print_int k;
        if i < 7 then
            begin
                print_string ", ";
                if k < 9 then
                    ft_print_comb_loc i j (k + 1)
                else if j < 8 then
                    ft_print_comb_loc i (j + 1) (j + 2)
                else if i < 7 then
                    ft_print_comb_loc (i + 1) (i + 2) (i + 3)
            end
                else
                    print_string "\n";
    in
    ft_print_comb_loc i j k

let () =
    ft_print_comb ()
