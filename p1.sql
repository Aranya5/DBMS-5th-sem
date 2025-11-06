declare
  an account_163.account_id%type;
  amt account_163.balance%type;
begin
  an := '&an';
  select balance into amt from account_163 where account_id = an;

  if (amt-2000)>500 then
    update account_163 set balance = balance -2000 where account_id = an;
  else
    dbms_output.put_line('Insufficient Balance \n Balance left is: '||amt);
  end if;
end;