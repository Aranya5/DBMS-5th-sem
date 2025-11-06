declare
  n fact_163.fnumber%type;
  f fact_163.fact_number%type;
begin
  f:=1;
  n:=&n;
  for i in 1..n 
  loop
    f := f*i;
  end loop;
  insert into fact_163 values(n,f);
end;
