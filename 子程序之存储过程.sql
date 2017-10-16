子程序：独立命名的PL/SQL块，编译并且保存在数据中
两种子程序：
    过程：存储过程
    函数：方法
    
    
    
--存储过程：
    语法:create or replace procedure 过程名称[参数列表]
              is|as  --相当于PL/SQL块中的declare     声明变量
              begin    --编写逻辑代码，进行异常处理
              end;

1、无参过程
案例：创建一个存储过程，往学生表中插入1000调数据。
create or replace  procedure pro_add_student
is
begin
       for v_i in 1..1000 loop
       insert into t_student(sid,sname,sage)values(seq_t_student.nextval,'李四'||v_i,v_i);
       end loop;
       commit;
end;


--1、在右侧菜单栏中找到需要调用的存储过程，右键找到测试并调用
--2、在PL/SQL块中调用

begin
  pro_add_student();--在调用存储过程时，如果没有参数，括号可以省略。
end;



有参过程:
create or replace  procedure pro_test(
p_name varchar2,      --参数
p_sex  varchar2,
p_age  number

)is
begin
       dbms_output.put_line(p_name||'...'||p_sex||'....'||p_age);
end;

--运行
declare
v_name varchar2(20) :='李四';
v_age number :=15;
v_sex varchar2(3) :='男';
begin 
      pro_test(v_name,v_sex,v_age);
end;


--以上两个存储过程只是单纯的做事，并没有反馈信息。

参数类型： in  out   in out
in :默认情况下参数类型为in，接受数据。
out:保存需要返回的信息
in out:

案例：创建一个存储过程，实现根据学生姓名查询学生信息，
并将返回的结果打印出来。
Create or replace procedure pro_test_2(
p_name in varchar2,
p_out out sys_refcursor)   --用 REF 游标保存查询到的信息
is
v_sql varchar2(200);
begin
      v_sql := 'select *from t_student where 1=1';
      if p_name is not null 
             then v_sql :=v_sql||'and sname like ''%'||p_name||'%'' ';--\\  \n   \t    单引号中的单引号要用两个单引号代替
      end if;
      --dbms_output.put_line(v_sql);
      open p_out for v_sql;
      
end;


declare 
v_out sys_refcursor;
v_stu t_student%rowtype;
begin 

pro_test_2('张三',v_out);
      loop
            fetch v_out into v_stu;
            exit  when v_out%notfound;
            dbms_output.put_line(v_stu.sid||'............'||v_stu.sname);
      end loop;
      close v_out;
end;




select *from t_student where 1=1and sname like  '%李四%' 









