create
or replace procedure extraire is Cursor curseur is
select
    *
from
    Personne
where
    NumServP = 10;

begin for i in curseur loop dbms_output.put_line(
    'l''employe ' || i.NomP || ' a pour poste ' || i.PosteP
);

end loop;

end;

/ begin extraire();

end;

/ -- show errors
-- decompteur reccursive
create
or replace procedure decompteur(x number) is begin if (x = 0) then dbms_output.put_line(0);

else dbms_output.put_line(x);

decompteur(x -1);

end if;

end;

/ begin decompteur(5);

end;

/