declare
n number;
begin
n:=1;
dbms_output.put_line('using exit control loop');
loop
	dbms_output.put_line(n||' ');
	n:=n+1;
exit when(n>10);
end loop;
dbms_output.put_line('Using entry comtrol loop or normal while');
n:=1;
while (n<=10)
loop
	dbms_output.put_line(n||' ');
	n:=n+1;
end loop;
dbms_output.put_line('Using For loop');
for n
in 0..10
loop
	dbms_output.put_line(n||' ');
end loop;
end;
/