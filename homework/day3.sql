create table student (
id number(3) not null PRIMARY key,
name VARCHAR2(20) not null,
sex varchar2(4),
birth number(4),
department varchar2(20),
address VARCHAR2(50)
);
--创建score表。SQL代码如下：
create table score(
   id number(3) not null  PRIMARY key,
   stu_id number(3)  not null,
   c_name VARCHAR(20) ,
   grade number(3)
);

insert into student values(901,'张老大','男',1985,'计算机系','北京市海淀区');
insert into student values(902,'张老二','男',1986,'中文系','北京市昌平区');
insert into student values(903,'张三','女',1990,'中文系','湖南省永州市');
insert into student values(904,'李四','男',1990,'英语系','辽宁省阜新市');
insert into student values(905,'王五','女',1991,'英语系','福建省厦门市');
insert into student values(906,'王六','男',1988,'计算机系','湖南省衡阳市');
commit;

insert into score values(1,901,'计算机',98);
insert into score values(2,901,'英语',80);
insert into score values(3,902,'计算机',65);
insert into score values(4,902,'中文',88);
insert into score values(5,903,'中文',95);
insert into score values(6,904,'计算机',70);
insert into score values(7,904,'英语',92);
insert into score values(8,905,'英语',94);
insert into score values(9,906,'计算机',90);
insert into score values(10,906,'英语',85);
commit;



1、查询student表的第2条到4条记录 
select * from
 (
 select s1.* ,rownum num
 from student s1 
 where rownum between 1 and 4
 ) where num >=2;
 
2、从student表查询所有学生的学号（id）、姓名（name）和院系（department）的信息
select s.id 学号, s.name 姓名, s.department 院系
from student s;

3、从student表中查询计算机系和英语系的学生的信息
select * 
from student
where department = '计算机系' or department = '英语系';

4、从student表中查询年龄25~30岁的学生信息
select s.*, (extract(year from sysdate)-birth) 年龄
from student s
where (extract(year from sysdate)-birth) between 25 and 30;

5、从student表中查询每个院系有多少人?
select department, count(1) 人数
from student
group by department;

6、从score表中查询每个科目的最高分
select c_name, max(grade)
from score
group by c_name;

7、查询李四的考试科目（c_name）和考试成绩（grade）
select s.name 名字, s1.c_name 科目, s1.grade 成绩
from student s
join score s1
on s.id = s1.stu_id
where s.name = '李四';

还可以用嵌套查询：...in(可有多个值)     ...=(这里查询只能有一个值)    ...=any(可有多个值)

8、用内连接的方式查询所有学生的信息和考试信息
select s.*,s1.*
from student s
inner join score s1
on s.id = s1.stu_id; 

9、计算每个学生的总成绩
select s.name, sum(s1.grade) 总成绩
from student s
join score s1
on s.id = s1.stu_id
group by s.name;

10、计算每个考试科目的平均成绩
select s.c_name, avg(s.grade) 平均成绩
from score s
group by s.c_name;

11、查询计算机成绩低于95的学生信息
select s.*,s1.*
from student s
join score s1
on s.id = s1.stu_id
where s1.c_name = '计算机' and s1.grade <95;

select * from student t where exists (
select stu_id from score where c_name = '计算机' and stu_id = t.id 
)
--exists 主要用于结果集数据量比较大的情况，执行效率比in高

12、查询同时参加计算机和英语考试的学生的信息
select s.*,s5.*
from student s
join score s5
on s.id = s5.stu_id
join
(
select s1.stu_id
from score s1
join (select s2.stu_id from score s2 where s2.c_name='英语') s3
on s1.stu_id = s3.stu_id
where s1.c_name = '计算机'
) s4
on s5.stu_id = s4.stu_id;

select * from student s  where exists (
select * from score
where stu_id in (
select stu_id from score where c_name = '计算机'
) and c_name = '英语' and s.id = stu_id 
);

13、将计算机考试成绩按从高到低进行排序
select *
from score
where c_name = '计算机'
order by grade desc;

14、从student表和score表中查询出学生的学号，然后合并查询结果 UNION与union all
select id
from student
union
select stu_id
from score;

select id
from student
union all
select stu_id
from score;

15、查询姓张或者姓王的同学的姓名、院系和考试科目及成绩
select s.name 姓名,s.department 院系, s1.c_name 科目, s1.grade 成绩
from student s
left join score s1
on s.id = s1.stu_id
where s.name like '王%' or s.name like '张%';

16、查询都是湖南的学生的姓名、年龄、院系和考试科目及成绩
select s.name 姓名,(extract(year from sysdate)-s.birth) 年龄, s.department 院系, s1.c_name 科目, s1.grade 成绩
from student s
join score s1
on s.id = s1.stu_id
where s.address like '湖南%';
