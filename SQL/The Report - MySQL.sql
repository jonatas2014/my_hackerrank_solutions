SELECT CASE 
           WHEN st.marks >= 70 
               THEN CONCAT(st.name," ",gr.grade," ",st.marks)
           ELSE 
               CONCAT("NULL ",gr.grade," ",st.marks)
       END
FROM students st, grades gr
WHERE st.marks >= gr.min_mark AND st.marks <= gr.max_mark
ORDER BY gr.grade DESC, st.name ASC;
