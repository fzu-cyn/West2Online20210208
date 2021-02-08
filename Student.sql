CREATE DATABASE class;
USE class;

CREATE TABLE student (
  `ID`   		int 		NOT NULL AUTO_INCREMENT COMMENT '学号',
  `name` 		varchar(50) NOT NULL 				COMMENT '姓名',
  `sex` 		varchar(10) NOT NULL 				COMMENT '性别',
  `teachername` varchar(50) NOT NULL 				COMMENT '教师姓名',
  `class` 		int 		NOT NULL 				COMMENT '班级',
  PRIMARY KEY (`ID`)
) ENGINE=INNODB DEFAULT CHARSET=UTF8;

SELECT * FROM Student;
START TRANSACTION;
#插入数据

insert  into `student`(`ID`,`name`,`sex`,`teachername`,`class`) 
				values (1,'柯南','男','Alen',1),
						(2,'小兰','女','Bob',2),
						(3,'园子','女','Tom',3),
						(4,'服部','男','Alen',1),
						(5,'红叶','女','Bob',2),
						(6,'快斗','男','Tom',3),
						(7,'青子','女','Alen',1),
						(8,'小哀','女','Bob',2),
						(9,'毛利','男','Tom',3);
#更新ID=001的学生的教师和班级
UPDATE Student 
SET teachername = 'Bob' ,
    class = 2
WHERE ID = 1 ;
#删除ID=009的学生
DELETE FROM Student
WHERE ID  = 9 ;
#查询教师Bob的学生
SELECT ID,NAME,sex,teachername,class
FROM Student
WHERE teachername = 'Bob'
ORDER BY ID;
COMMIT;
