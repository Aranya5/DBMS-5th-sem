declare 
  r areas_163.radius%type;
  a areas_163.area%type;
  pi constant number(4,2) := 3.14;
begin
  r := 3;
  while r<=7
  loop
    a := pi*r*r;
    insert into areas_163 values(r,a);
    r := r+1;
  end loop;
end;