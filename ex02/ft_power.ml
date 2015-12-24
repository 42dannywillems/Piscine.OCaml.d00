let rec ft_power x y =
    if y = 0 then
        1
    else
        begin
            if (y mod 2) = 0 then
                let a = ft_power x (y / 2) in a * a
            else
                let a = ft_power x ((y - 1) / 2) in a * a * x
        end
