select student_name , course_name 
from students s left join enrollments e on s.student_id = e.student_id
left join courses c on e.course_id = c.course_id ;


select course_name , c.course_id
from courses c left join enrollments e on c.course_id = e.course_id
where e.course_id is null ;


select i.instructor_name, c.course_name 
from instructors i left join courses c on i.instructor_id= c.instructor_id;


select course_name 
from courses c where instructor_id is null ;

select s.student_name , e.enrollment_date , s.student_id
from enrollments e right join students s on e.student_id = s.student_id ;

select s.student_name 
from students s left join enrollments e on s.student_id = e.student_id 
where e.enrollment_id is null ;



select course_name 
from courses c left join enrollments e on c.course_id = e.course_id
where e.course_id is null ;

SELECT s.student_name,
       c.course_name,
       i.instructor_name
FROM students s left join enrollments e 
on s.student_id = e.student_id
left join courses c on c.course_id = e.course_id
left join instructors i on c.instructor_id = i.instructor_id;


select student_name , course_name 
from students s cross join courses