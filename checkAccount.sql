DECLARE
	accNo varchar2(10);
	bal number(10,2);
BEGIN
	accNo:=&accNo;
	select balance into bal from accounts where accountNumber=accNo;
	if bal-2000>=500 then
		UPDATE ACCOUNTS SET BALANCE= bal-2000 WHERE ACCOUNTNUMBER = accNo;
		dbms_output.put_line('UPDATED THE DATA..');
	else
		dbms_output.put_line('Insufficent balance, withdrawal not possible');
	end if;
END;
/
SELECT * FROM ACCOUNTS;