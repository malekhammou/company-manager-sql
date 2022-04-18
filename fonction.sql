create or replace function nbre_emp(y number)
return  number 
is 

i number ;

begin

select count(*) into i from Personne where NumServP =y ;

return i;

end  ; 
/

select nbre_emp(10) from dual ; 


create or replace function minimum(a number , b number)
return  number 
is 

begin

if ( a < b) then
return a ;
else 
return minimum(a-b,b);
end if ;

end  ; 
/

select minimum(100,55) from dual ; 


create or replace function verif_sal(num in number)
return  boolean  
is 

i number; 
salaire number ; 
numS number ; 
begin

select SalaireP ,NumServP into salaire, numS from Personne where numP =num ; 


exception when NO_DATA_FOUND then     
return Null; 

select avg(SalaireP) into i  from Personne where NumServP =numS ; 


if ( i < salaire) then
return True ;
else 
if( i > salaire) then
return False;
end if ;
end if ;
end  ; 
/


begin 
if(verif_sal(25)) then
    dbms_output.put_line('True'); 

elsif (verif_sal(25)=False) then
    dbms_output.put_line('False'); 

else 
    dbms_output.put_line('erreur'); 

end if ;

end ; 
/