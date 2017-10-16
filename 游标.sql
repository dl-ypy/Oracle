游标：
在讲游标之前我们无法处理多行数据，游标的作用就是用来处理多行数据的，类似于java中的集合。
游标分为三种：
  1、隐式游标
  2、显式游标
  3、REF游标
  
1、隐式游标
  在PL/SQL中使用DML(数据操作语言insert，update，delete)语句时，隐式游标会自动创建。
  隐式游标自动声明，自动打开和关闭，其名为SQL。
  作用：通过检查隐式游标的属性可以获得最近执行的DML语句的信息。
  %FOUND  当SQL语句影响了一行或多行数据时为true
  %NOTFOUND SQL语句没有影响任何行为时为true。
  %ROWCOUNT SQL语句影响的行数。
  %ISOPEN 游标是否打开。始终是false。
  
  例子：
  begin
  insert into t_Student(sid,sname)values(seq_t_student.nextval,'测试数据');
  insert into t_Student(sid,sname)values(seq_t_student.nextval,'测试数据');
  dbms_output.put_line('影响的行数:'||SQL%Rowcount);
  --通过隐式游标获取操作的相关信息，必须在commit 之前，之后获取不到。且只能获取到最近执行的的DML语言
  commit;
  end;

2.显式游标
无参游标
案例一：游标实现：查询学生信息并打印。
declare
v_stu t_student%rowtype;
--1.声明一个游标
Cursor getStudentCursor is select * from t_student;
--cursoor 游标类型  getStudentCursor 游标名字   is作为关键字，后跟sql语句
begin
--2.打开游标
open getStudentCursor;
--3.循环提取数据
     loop
          --从游标中一行行提取数据，然后赋值给v_stu
          fetch getStudentCursor into v_stu;
          exit when getStudentCursor%notfound;
          dbms_output.put_line(v_stu.sid||'.....'||v_stu.saddress||'........'||v_stu.sage);
      end loop;
--4.关闭游标      
close getStudentCursor;      
end;


有参游标
例：根据性别查询信息
declare
--1. 声明游标
Cursor getStudentCursor(v_ssex varchar2) is select * from t_student where ssex = v_ssex;
v_stu t_student%rowtype;
begin
--2. 打开游标
open getStudentCursor('男');
     loop
              fetch getStudentCursor into v_stu;
              exit when getStudentCursor%notfound;
               dbms_output.put_line(v_stu.sid||'.....'||v_stu.saddress||'........'||v_stu.sage);
     end loop;
close getStudentCursor;      
end;

--简化   通过for循环，不用手动打开和关闭游标
declare
--1. 声明游标
Cursor getStudentCursor(v_ssex varchar2) is select * from t_student where ssex = v_ssex;

begin
       for v_stu in getStudentCursor('男') loop
             dbms_output.put_line(v_stu.sid||'.....'||v_stu.saddress||'........'||v_stu.sage);
       end loop;    
end;



3.REF游标
显式游标和REF游标的区别：
显式游标在声明时就已经指定需要指向的SQL语句
REF在运行时确定需要执行的SQL语句。
declare
       -- 1.声明一个REF类型变量
       myrefcursor sys_refcursor;
       --游标名           类型
       v_sql varchar2(100);
       v_stu t_student%rowtype;
begin
       v_sql := 'select * from t_student';
       --2. 打开游标
       open myrefcursor for v_sql;
       loop
                fetch myrefcursor into v_stu;
                exit when myrefcursor%notfound;
                dbms_output.put_line(v_stu.sid||'.....'||v_stu.saddress||'........'||v_stu.sage);
        end loop;
        close myrefcursor;
end;       
