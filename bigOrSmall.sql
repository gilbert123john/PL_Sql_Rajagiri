declare
n1 number;
n2 number;
begin
n1:= &n1;
n2:= &n2;
if n1>n2 then
	dbms_output.put_line(n1||' is big');
elsif n1=n2 then
	dbms_output.put_line(n1||' and '||n2 ||' are equal');
else
	dbms_output.put_line(n2||' is big');
end if;
end;
/