use basicdb; 
    
create TABLE basicdb.rank_demo (
 name VARCHAR(10)
);


insert into basicdb.rank_demo(name)
values('A'),('B'),('B'),('C'),('C'),('D'),('E');

select * from basicdb.rank_demo;

+------+
| name |
+------+
| A    |
| B    |
| B    |
| C    |
| C    |
| D    |
| E    |
+------+


select
    name,
    RANK() OVER (
        ORDER BY name
    ) as my_rank
FROM
    basicdb.rank_demo;

+------+---------+
| name | my_rank |
+------+---------+
| A    |       1 |
| B    |       2 |
| B    |       2 |
| C    |       4 |
| C    |       4 |
| D    |       6 |
| E    |       7 |
+------+---------+

