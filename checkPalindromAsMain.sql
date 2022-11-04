declare
cursor c_name is select empname from employee where rownum<6;
ename employee.empname%type;
name varchar2(20);
begin
	open c_name;
	fetch c_name into ename;
	while c_name%found loop
		palin(ename,name);
		dbms_output.put_line(ename ||' is '|| name);
		fetch c_name into ename;
	end loop;
	close c_name;
end;
/		