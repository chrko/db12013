WITH RECURSIVE temp(id) AS
(SELECT id FROM Baum WHERE parent = 1
    UNION
    SELECT Baum.id FROM Baum, temp WHERE Baum.parent = temp.id
)
SELECT COUNT(*) FROM temp;
