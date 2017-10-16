--表操作

--创建表
create table t_student(
sid number(5),
sname varchar2(20),
ssex char(3),
sage number(3)
);


--级联删除表
drop table t_student cascade constraint;


1、在表中新添加一个字段
alter table 表名 add 字段名称 类型(长度);
alter table t_student add sbirthday date;

2、对标的数据类型进行修改
alter table 表名 modify 字段名称 新类型(长度)；
alter table t_student modify sbirthday varchar2(20);

3、对表中的数据字段名修改
alter table 表名 rename column 原名称 to 新字段名称;
alter table t_student rename column sbirthday to sbirth;

4、删除表中的字段
alter table 表名 drop column 字段名;
alter table t_student drop column sbirth;



--约束：
--限定非空(not null):不允许某个字段的值为空值(null),可以对多个字段设置非空约束。

create table t_student(
sid number(5) not null, 
sname varchar2(20) not null,
ssex varchar2(20),
sage number(3)
);  


--默认值(default): 限定某个字段的值默认情况下给出一个指定的值

create table t_student(
sid number(5) , 
sname varchar2(20),
ssex varchar2(20) default '男',
sage number(3) default 18
);  

注意：精简版本的oracle数据库，default设定默认值只对数值类型有效。


--唯一性约束(unique)：保证数据库表中的任意一行的某个字段或者某一组字段与其他行相比是唯一的。


create table t_student(
sid number(5) unique, 
sname varchar2(20),
ssex varchar2(20) ,
sage number(3) ,

);  

--联合唯一约束
constraint  约束名 unique (字段名1，字段名2)

create table t_student(
sid number(5), 
sname varchar2(20),
ssex varchar2(20) ,
sage number(3) ,
constraint sid_name unique(sid,sname)
);  


create table t_student(
sid number(5) unique, 
sname varchar2(20) unique,
ssex varchar2(20) ,
sage number(3) ,

);  

唯一性约束可以设定多个字段为唯一性约束，允许插入空值，并且也允许插入多个空值，提高查询的效率。

--当表建立完成后，设定唯一性约束：
create table t_student(
sid number(5), 
sname varchar2(20),
ssex varchar2(20) ,
sage number(3)
);
alter table 表名  add constraint 约束名 unique(字段名)；

alter table t_student add constraint unique_sid unique(sid);


--主键约束：作用是确定  某一个字段或者某一组字段可以确定某条记录
--创建表的时候设定主键：

create table t_student(
sid number(5) primary key , 
sname varchar2(20) ,
ssex varchar2(20) ,
sage number(3)
);

--表创建完成后设定主键：
alter table 表名 add constraint 约束标识名 primary key(字段名);

alter table t_student add constraint pk_sid primary key(sid);

注意：主键不允许空值，并且唯一。


--复合主键：多个字段作为主键
alter table t_student add constraint pk_id_name primary key(sid,sname);


--外键约束：
大部分情况下是为了关联两张表的
--创建表的时候关联外键（与mysql相同，与sqlServer不同）
constraint 约束名 foreign key(字段名称) reference 关联的表名(关联的字段名)


create table t_class(
cid number(5) primary key ,
cname varchar2(20)                         ---从表
);


create table t_student(
sid number(5) , 
sname varchar2(20) ,                        ---主表
ssex varchar2(20) ,
sage number(3),
cid number(5),
constraint fk_cid foreign key(cid) references t_class(cid)
);

注意:添加外键的时候，外键字段必须是从表的主键，否则添加不成功。



--表建立后添加外键：
alter table 表名 add constraint 约束名 foreign key(字段名) references 从表名(字段名);
alter table t_student add constraint pk_cid foreign key(cid) references t_class(cid);



外键关联：外键引用的是从表中的主键
主键关联：一张表中的外键引用的是本表中的主键



cascade :级联删除，删除从表中的数据时，其他关联的数据的都要被删除。
set null:将关联的数据中的值设置成为null
no action:不做任何操作。


check 约束： 检查某个字段的值得范围是否符合要求。

create table t_student(
sid number(5) , 
sname varchar2(20) ,                        ---主表
ssex varchar2(20) check(ssex not in('男','女','未知')) ,
--ssex varchar2(20) check(ssex in('男','女','未知')) ,
--ssex varchar2(20) check(ssex = '男'or ssex ='女' or ssex = '未知') ,


sage number(3) check(sage!=0)
--sage number(3) check(sage!=0)
--sage number(3) check(sage<>0)
--sage number(3) check(sage between 18 and 20)
--sage number(3) check(sage not between 18 and 20)
--sage number(3) check(sage<18 or sage>20)
);







