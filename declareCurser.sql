declare
	cursor emp_cursor is select empno,job from employee where rownum<4;
	--to creat a cursor;
	c_empno employee.empNo%type;
	c_job employee.job%type;
begin
	open emp_cursor;
	fetch emp_cursor into c_empno,c_job;
	while emp_cursor%found loop
		dbms_output.put_line('Employee No. '||c_empno);
		dbms_output.put_line('Employee job. '||c_job);
		fetch emp_cursor into c_empno,c_job;
	end loop;
	close emp_cursor;
end;
/