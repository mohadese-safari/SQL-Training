select *,ISNULL(Email,'A')
from Contacts
--Where ISNULL(Email,'A') like N'A%'


select * ,
case
when email is null then 'A' 
else email
end
from Contacts