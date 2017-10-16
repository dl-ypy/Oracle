--DQL：数据库查询语言
--简单查询：
语法： 
    select <字段列表> 
    from <表名>
    [where]  <条件>
    [group by] <分组字段>
    [having] <分组条件>
    [order by] <排序字段>
加中括号的是在查询语句中可能出现的，没加的是一定会出现的语句。


案例1：查询学生表中所有学生的消息细腻（所有信息） 
-- * 表示所有的字段
select * from  t_student;

select sid,sname,ssex,sage,saddress,sbirth,cid from t_student;

案例2 ：查询学生表中所有学生的姓名和年龄。
select sname,sage from t_student;
案例3：查询学生表中所有学生的姓名和年龄,列表名显示为"【姓名】"和"【年龄】".
select sname as 姓名,sage as 年龄 from t_student;
以上使用是别名，
select sname as "【姓名】",sage as "【年龄】" from t_student;
别名中如果出现特殊字符，需要用双引号括起来
其中as 一般情况下都会省略
select sname "【姓名】",sage "【年龄】" from t_student;


--拼接符号（|| ）：
案例1：查询学生表中所有学生信息及学生姓名和地址的拼接信息       【张三】深圳

select t_student.*,sname,saddress
from t_student
在这种情况下，首先要确定*要匹配哪一张表,如果不确定，就会报错

select t_student.*, '【'|| sname || '】'|| saddress  as 名字
from t_student

在Oracle中表示拼接的符号为|| 在Java中表示拼接的符号为+


--带条件的查询：
案例1：查询学生表中sid为13的学生的所有信息
select * from t_student where sid =13;
select * from t_student where sid in (13);

案例2：查询学生表中地址不是深圳的学生的所有信息
select * from t_student where saddress != '深圳';
select * from t_student where saddress not in('深圳');
select * from t_student where saddress <> '深圳';

案例3：查询学生表中年龄在18到23之间的学生的所有信息
select *from t_student where sage >= 18 and sage <= 23;


案例4：查询学生表中姓名不为空的学生的所有信息
select * from t_student where sname is not null;

案例5：查询学生表中年龄不等于18的学生的所有信息。
select * from t_student where sage!=18;

select *                --1
from t_student          --2
where sid =13;          --3
2-->3-->1


--模糊查询：(like  百分号(%)  下划线  )
案例1：查询学生表中所有姓张的学生的所有信息
      select * 
      from t_student 
      where sname like '张%';
      --%表示匹配0 个或者以上的字符
案例2：查询学生表中姓名以祥结尾的学生的所有信息
      select *
      from t_student
      where sname like '%祥';
案例3：查询学生表中名字带有"志"这个字的学生的所有信息
      select *
      from t_student
      where sname like '%志%'
案例4：查询学生表中名字带有"志"且是三个字的名字的学生的所有信息
      select *
      from t_student
      where sname like '_志_' or  sname like '志__'  or  sname like '__志' -- 志--    --志      -志-
--_表示一个字符


--排序：
注意：如果没有指定升序或者降序排列，默认按照升序排列。
      升序 asc    降序关键字 desc

案例1：查询学生表中所有学生的信息并按照年龄排序。
  select *
  from t_student
  order by sage desc;
  
  select *
  from t_student
  order by sage asc;

案例2：查询学生表中所有学生的信息，并按照年龄排序降序，如果年龄相等，按照学号排序升序

  select *
  from t_student
  order by sage desc,sid asc;
注意：以多个字段排序的话，orderby在查询语句中只能出现一次。多个排序字段名用英文逗号隔开。



--聚合函数：
count():统计记录数
案例1：统计学生表中的学生数
count(*):统计总人数
根据*去统计  只要一个字段有值，那么就会被统计进来
select count(*) from t_student;

select count(sname) from t_student;   --根据字段统计人数，若字段为空，则不会统计。


count(1) 当中的代表的是常量，根据常量来统计总人数。一般都会采用这种统计方式。


select count(1) from t_student

注意:select  后面跟的字段必须是表结构中的字段或者是'*'或者是常量

select sname 姓名,sage 年龄 ,1 from t_student;

max()--求最大值
min()--求最小值
avg()--求平均值
sum()--求综合

select count(1) 总人数  , max(sage)最大年龄, min(sage) 最小年龄, avg(sage)平均年龄, sum(sage)年龄总和 
from t_student;


--分组函数:分组函数一般会和聚合函数一起使用。
案例1：统计学生表中每个城市的学生的人数。
select saddress ,count(1)    --1
from t_student               --2
group by saddress            --3

2-->3-->1

注意：分组函数和聚合函数一起使用的时候，select字段后面只能是分组的字段或者聚合函数

select saddress ,max(sage)
from t_student             
group by saddress    

单独使用分组函数，相当于去掉重复行


--distinct 去掉重复行。
select distinct saddress from t_student




案例1：统计学生表中每个城市的学生男生和女生人数。

select saddress, ssex ,count(1)
from t_student
group by saddress,ssex


案例2：统计出学生表中各城市学生人数大于5以上的城市
select saddress ,count(1)     --1
from t_student                --2             
group by saddress             --3
having count(1)>4

2-->3-->4-->1

--having判断分组后的数据的条件   count()统计分组后的数据中的人数

案例3:统计学生表中年龄大于18岁的所有大学生的信息
select * from  t_student where sage>18

案例4：统计出学生表中年龄大于18岁的所有大学生在城市中的人数
select saddress ,count(1)
from t_Student
where sage>18
group by saddress 


案例5：统计出学生表中年龄大于18岁的所有大学生在城市中的人数大于5的记录
select saddress, count(1)
from t_student
where sage>18
group by saddress 
having count(1)>5

案例6：统计出学生表中年龄大于18岁的所有大学生在城市中男生和女生人数大于3的记录

select saddress,ssex, count(1)
from t_student
where sage>18
group by saddress ,ssex
having count(1)>1

--where 和 having 的区别：
where在分组前执行，确定分组的数据来源
having在分组后执行，对分组后的数据进行条件过滤
having只能出现在group by分组函数中，对分组后的数据进行过滤的
where可以出现在group by分组函数外的情况中。


语法： 
    select <字段列表> 
    from <表名>
    [where]  <条件>
    [group by] <分组字段>
    [having] <分组条件>
    [order by] <排序字段>
    
    from-->where-->group by-->having-->select -->order



