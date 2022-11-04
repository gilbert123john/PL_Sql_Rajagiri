create or replace procedure palin(ename in varchar2,name out varchar2)
is
empname varchar2(20);

begin
select reverse(ename) into empname from dual;
if empname=ename then
name:='Palindrome';
else 

name:='not aPalindrome';
end if;
end;
/