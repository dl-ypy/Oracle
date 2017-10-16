--添加


create table t_student(
sid number(5) primary key,
sname varchar2(20),
ssex char(3),
sage number(3),
saddress varchar2(50),
sbirth date,
cid number(5)
);

create table t_class(
cid number(5),
cname varchar2(20)
);


--添加数据：insert
--单行插入：
语法1： insert  into 表名(字段1,....,字段n) values(值1,...,值n)
注意:表名后跟着的字段列表必须是表结构中存在的字段,values 后面跟着的值列表必须与字段列表一一对应。

案例1：往学生表插入一个数据
insert into t_student(sid,sname,ssex,sage,saddress)
values(2,'张三','男',18,'上海')

所有的DML操作执行后都需要提交或者回滚才可以改变数据库中的内容。
若是没有提交或者未回滚，这些操作是可以后悔，修改的内容存在于内存中。

--to_date():将字符类型的数据以某种格式转化为日期类型的数据

--select sysdate, '2017-01-01', to_date(sysdate,'yyyy-mm-dd-HH-mi-ss') from dual;

insert into t_student(sid,sname,ssex,sage,saddress,sbirth)
values(4,'张三','男',18,'上海',to_date('2017-01-15','yyyy-mm-dd'));
--commit;     --提交
--rollback;     --回退


语法二：insert into 表名 values(值列表);

insert into t_class values(1,'Java01班');
commit;
这个语法主要针对表机构字段比较少的情况，省略了表名后面的字段列表，
那么值列表就默认跟表机构中的字段的顺序一致，所有的字段都插入了数据

insert into t_student(sid,sname,ssex,sage,saddress,sbirth)
values(4,'李四','男',22,'深圳',to_date('2017-01-15','yyyy-mm-dd'));
commit; 
每一次插入数据，系统都会自动检查主键是否唯一。

--序列（在Sequences中新建）：作用就是用来管理表中的主键的。
命名规范：seq+表名

select seq_t_student.nextval from dual;
select seq_t_student.currval from dual;

nextval 获取序列的下一个数字
currval 获取序列的当前数字。


--多行插入

insert into t_student(sid,sname,ssex,sage,saddress,sbirth)
values(seq_t_student.nextval,'李四','男',22,'深圳',to_date('2017-01-15','yyyy-mm-dd'));
commit; 


--复制表：复制表的结构和表的数据
语法结构：
create table 表名 as select * from 表名;
例子：    在这里  * 表示匹配所有，这里匹配的是表结构中的所有字段名称。
create table t_student_copy as select * from t_student

只复制表的结构，不复制表中的数据
create table t_student_copy2  as select * from t_student where 1<>1;

select * from t_student where 1<>1;
我们可以用where来选择需要哪些数据

将一张表的数据赋值给另一张表
insert into t_student_copy2 select * from t_student_copy;
注意：查询出来的结果集的字段类型和名称必须和插入的表的结构一致。

insert into t_student_copy2(sid,sname)select sid,sname from  t_student_copy;
commit;
