触发器
1、语句级触发器：关注执行语句，以上是语句触发器
2、行级触发器：影响了多少行内容，，那么触发器就会触发多少次。
3、限制级触发器
案例1：创建一个触发器，当我们对t_student 表进行数据操作的时候，打印一条语句


CREATE [OR REPLACE] TRIGGER trigger_name
AFTER | BEFORE | INSTEAD OF
[INSERT] [[OR] UPDATE [OF column_list]] 
[[OR] DELETE]
ON table_or_view_name
[REFERENCING {OLD [AS] old / NEW [AS] new}]
[FOR EACH ROW]
[WHEN (condition)]
pl /sql_block;

--1.语句级触发器
create or replace trigger  trigger_student 
after  insert or update or delete 
on t_student
begin 
   dbms_output.put_line('操作了数据');
end;

insert into t_student(sid,sname) values(seq_t_student.nextval,'王鹏');
commit;


create or replace trigger  trigger_student 
after  insert or update or delete 
on t_student
begin 
   dbms_output.put_line('操作了数据');
   if inserting then 
      dbms_output.put_line('插入');
   end if;
   if updating then 
      dbms_output.put_line('更新');
   end if;
   if deleting then 
      dbms_output.put_line('删除');
   end if;
end;

insert into t_student(sid,sname) values(seq_t_student.nextval,'王鹏');
commit;
delete from t_student where sid = 7052;
commit;


语句触发器的复杂化：
案例：创建一个触发器,记录对数据库表结构的操作记录。
create table t_log(   --创建一个表来存储操作记录
table_name varchar(20) primary key,
insertnum number,
updatenum number,
deletenum number
)

create or replace trigger trigger_t_log 
after insert or update or delete 
on t_student
declare 
   datanum number(5);
begin
      --1、判断是否是第一次操作该表结构的数据
      select count(1) into datanum from t_log where table_name= 't_student';
      if datanum =0
      then --表示第一次操作
           insert into t_log(table_name)values('t_student');
      end if;
      --在触发器中不要使用commit;

      --2、判断操作的类型
      if inserting then 
         Dbms_Output.put_line('123');
         update t_log set insertnum = nvl(insertnum,0)+1 where table_name ='t_student';
      end if;
      if updating then 
         update t_log set updatenum = nvl(updatenum,0)+1 where table_name ='t_student';
      end if;
      if deleting then 
         update t_log set deletenum = nvl(deletenum,0)+1 where table_name ='t_student';
      end if;
end;

insert into t_student(sid,sname) values(seq_t_student.nextval,'王鹏');
commit;



--2.行级触发器：影响了多少行  触发器就触发多少次
create or replace trigger  trigger_student 
after  insert or update or delete 
on t_student  for each row     --不同处
begin 
   dbms_output.put_line('操作了数据');
end;

delete from t_student where sid between 5000 and 5500;
commit;


--3.限制级触发器：
在行级触发器的基础上添加了when
案例创建一个触发器，再删除学生的时候触发，不能删除名称为'张子祥'的学生。
create or replace trigger trigger_test1
before delete on t_student for each row 
when (old.sname ='张子祥')
declare 
begin
     dbms_output.put_line('限制级触发器触发了');
     --组织数据的删除
     raise_application_error('-20001','该条记录不能被删除');
end;

delete from t_student where sname = '张子祥';
commit;
