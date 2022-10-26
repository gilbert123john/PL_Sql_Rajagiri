declare
	num number;
	rem number;
begin
	num:=&num;
	rem:=0;
	while (num>0)
	loop
		
	rem:=rem*10+mod(num,10);
	num:=trunc(num/10);

	end loop;
	dbms_output.put_line(rem);
end;
/