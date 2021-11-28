select *
from Contacts
order by 
Case
When FirstName like N'D%' Then FirstName
Else LastName 
End