SELECT 
    s.student_id, 
    s.first_name, 
    s.last_name, 
    n.note, 
    n.created_at 
FROM 
    Students s
JOIN 
    Notes n ON s.student_id = n.student_id;
