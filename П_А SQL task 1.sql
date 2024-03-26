DELIMITER $$
create procedure numbeR_even(num int)
begin
	set @result := '';
	set @j := 2;
    if num % 2 = 0 then
		if @j = 2 then
			set @result = concat(@result, @j);
            set @j = @j + 2;
		end if;
		while @j <= num do
		set @result = concat(@result, ', ', @j);
		set @j = @j + 2;
		end while;
		select @result;
	end if;
end$$
DELIMITER ;

call numbeR_even(100)
