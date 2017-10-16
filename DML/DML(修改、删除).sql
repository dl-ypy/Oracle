--修改，删除

--修改语句（update）：
update 表名 set 字段名1=值1,...,字段名n = 值n  where 条件
修改多个字段是，每个字段之间用英文逗号隔开。
如果没有where 修改的是所有的数据。
案例1：更新学生表中所有的数据，地址改为成都。
update t_student set saddress = '成都'  ;
commit;
当修改所有数据时，会有提示是否删除所有数据

案例2：更新学生表中的sid为3的学生的地址为杭州
update t_student set saddress ='杭州' where sid = 3;
commit;

案例3：更新学生表中年龄在18到23的学生地址为上海
update t_student set saddress ='上海' where sage>=18 and sage<=23;
commit;
update t_student set saddress ='上海' where sage between 18 and 23;

案例4：更新学生表中年龄是16和26的学生地址为深圳
update t_student set saddress = '深圳' where sage = 16 or sage = 26;--in(16,26)
commit;

案例5：更新学生表中年龄不为18和23的学生的地址为广州。
update t_student set saddress='广州' where sage not in(18,23);  --sage !=18 and sage!=23
commit;

案例6：更新学生表中年龄为空的学生年龄为21.
update t_student set sage = 21 where sage is null;

update t_student set sage = 21 where sage=null;--语法没错，修改不成功

update t_student set sage = 21 where sage='';--语法没错  修改不成功

update t_student set sage = 21 where sage is not null;



--删除数据：
语法：delete from 表名 where 条件

delete from t_student where sid = 11;

--快速删除数据
truncate 
truncate  table 表名；   不需要提交      是DDL语言  也没有提示就把所有数据全部删除。

truncate table t_student_copy2;


--delete 和 truncate 的区别：
truncate是DDL语言 没有提交和回滚，
delete 是DML语言。是需要提交和回滚的。有提示
delete 删除的数据保存在内存中，可以恢复， 
truncate删除的数据时不可以恢复的。

truncate删除数据效率高
若是要删除大量数据，truncate执行速度比delete快。









