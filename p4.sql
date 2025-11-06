declare 
  total_sum emppp_163.sal%type;
begin

  insert into emppp_163 values('&emp_no','&emp_name', &sal);

  update emppp_163 set sal=sal+2000 where emp_name='Blake';
  update emppp_163 set sal=sal+1500 where emp_name='Clark';

  select sum(sal) into total_sum from emppp_163;

  if total_sum>20000 then
    rollback;
    dbms_output.put_line('Transaction Failed, Total Salary exceeds 20000');
  else  
    commit;
    dbms_output.put_line('Transaction Successful, Total Salary is: '||total_sum);
  end if;

end;