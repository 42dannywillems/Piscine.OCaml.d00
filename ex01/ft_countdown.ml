let rec ft_countdown x =
    if x <= 0 then
        print_endline "0"
    else
        begin
            print_int x;
            print_endline "";
            ft_countdown (x - 1)
        end
