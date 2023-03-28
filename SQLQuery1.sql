
SELECT Te.id,Te.TeaName,Te.Email,Te.ContactNo,Te.joinDate,Te.Salary,Te.picture,Te.isActive,d.departmentName FROM [Teacher] Te INNER JOIN department d ON Te.departmentId=d.id
go
select*from Student
go
SELECT st.id,st.StuName,st.Age,st.Gender,st.picture,c.ClassName FROM [Student] st INNER JOIN Class c ON st.ClassId=c.id