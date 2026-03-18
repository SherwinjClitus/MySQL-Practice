SELECT 
    S.student_id,
    S.student_name,
    Su.subject_name,
    COUNT(E.student_id) AS attended_exams
FROM Students S
CROSS JOIN Subjects Su
LEFT JOIN Examinations E
ON S.student_id = E.student_id
AND Su.subject_name = E.subject_name
GROUP BY student_id,student_name,subject_name
ORDER BY student_id,student_name,subject_name;