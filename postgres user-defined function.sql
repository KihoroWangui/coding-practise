/*User defined function to find the total number of student ids*/
create or replace function
count_stud_id()
returns integer as  $total_stud_ids$
declare
total_ids integer;
begin
select count(stud_id)into $total_stud_ids$
from stud;
return $total_stud_ids$;
end;
$total_stud_ids$ language plpgsql;
/*To call the function*/
select count_stud_id();