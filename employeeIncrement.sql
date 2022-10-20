declare
	cursor emp_cursor is select empname,salary,hire_date from employee;
	c_eName employee.empname%type;
	c_eSalary employee.salary%type;
	c_ehireDate employee.hire_date%type;
	years number;
	increment number;
begin
	open emp_cursor;
	fetch emp_cursor into c_eName,c_eSalary,c_ehireDate;
	while emp_cursor%found loop
		select trunc(months_between(sysdate,c_ehireDate)/12) into years from dual;
		dbms_output.put_line('Employee Name. '||c_eName);
		dbms_output.put_line('Employee OldSalary. '||c_eSalary);
		dbms_output.put_line('Employee years. '||years);
		
		if years>5 and years<11 then
			increment:=0.05*c_eSalary;
			c_eSalary:=c_eSalary+increment;
			dbms_output.put_line('increment=0.05*c_eSalary');
		elsif years>10 and years<16 then
			increment:=0.1*c_eSalary;
			c_eSalary:=c_eSalary+increment;
			dbms_output.put_line('increment=0.10*c_eSalary');
		elsif years>15 and years<21 then
			increment:=0.15*c_eSalary;
			c_eSalary:=c_eSalary+increment;
			dbms_output.put_line('increment=0.15*c_eSalary');
		elsif years>20 then
			increment:=0.25*c_eSalary;
			c_eSalary:=c_eSalary+increment;
			dbms_output.put_line('increment=0.25*c_eSalary');
		else
			increment:=0;
			c_eSalary:=c_eSalary;
			dbms_output.put_line('No Change');
		end if;
		dbms_output.put_line('Employee Increment. '||increment);
		dbms_output.put_line('Employee NewSalary. '||c_eSalary);
		dbms_output.put_line('-----------------------------------------------------');
		fetch emp_cursor into c_eName,c_eSalary,c_ehireDate;
	end loop;
	close emp_cursor;
end;
/