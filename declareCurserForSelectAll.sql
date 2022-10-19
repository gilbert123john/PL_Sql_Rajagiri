declare
	cursor emp_cursor is select * from employee where rownum<4;
	--case 1: to creat a cursor;
	emp_rec emp_cursor%rowtype;
begin
	open emp_cursor; --Case 2: to open a cursor
	fetch emp_cursor into emp_rec; --Case 3 : to fetch data to cursor
	while emp_cursor%found loop
		dbms_output.put_line('Employee No. '||emp_rec.empNo); -- to do operations in cursor
		dbms_output.put_line('Employee job. '||emp_rec.job);
		dbms_output.put_line('Employee job. '||emp_rec.salary);
		fetch emp_cursor into emp_rec;
	end loop;
	close emp_cursor;--Case 4:close the opened cursor
end;
/