授权
grant create view to ypy;

视图:可看成一张虚拟表
当表中的某些字段不能暴露给用户时，我们需要报可以暴露给用户的字段抽取出来

--or  replace    当视图存在时， 则替换，否则创建
create or replace view v_t_student as
select sid,sname,ssex from t_student;

视图的使用：
       1）查询视图和查询表的操作是一样的
                      select * from v_t_student;
       2）对视图的数据进行DML操作，相当于操作了表中的数据
                      update v_t_student set sname = 'aaa' where sid  10;
       3）在对视图进行操作时，只能进行简单的操作，不能操作复杂的视图
                      create or replace view v_emp as select ename,sal/30 salary from emp order by salary desc;
                      update v_emp set ....;    --不允许修改，因为此视图中的salary是算出来的
                      select * from v_emp;
        
       视图的作用：提高查询效率
                      1.将某些字段提取出来，提高了安全性
                      2.将一些常用的操作（运算）封装到视图中，简化了sql语言。
                      
                      
                      
索引：一般不需要自己创建，系统会自动给出相关约束，添加索引
索引的原则：索引并不是越多越好，一般会将主键或者唯一性约束添加索引。
索引的存在提高了查询效率
