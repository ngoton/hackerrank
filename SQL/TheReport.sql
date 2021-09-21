SELECT IF (Grades.Grade > 7, Students.Name, NULL) AS Name, Grades.Grade, Students.Marks 
FROM Students 
INNER JOIN Grades ON Students.Marks BETWEEN Grades.Min_Mark AND Max_Mark
ORDER BY Grades.Grade DESC, Name ASC, Students.Marks ASC
