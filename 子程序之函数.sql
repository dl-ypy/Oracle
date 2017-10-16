函数:方法，和 java中的方法相似

语法：create  function 方法名称[参数列表]
           return 返回类型
           is|as
           begin
           end;
--1.无参函数
案例：创建一个函数，返回一个字符串

create or replace function fun_get_name
return varchar2
is
begin
return '返回的数据';
end;


调用函数：
1、和调用存储过程一样
2、在PL/SQL块中调用:
begin 
dbms_output.put_line(fun_get_name());   --必须有输出语句
end;
3、 通过Select语句：
select fun_get_name from dual;


--有参的函数

create or replace function fun_get_name(v_id number)
return varchar2
is v_out varchar2(20);
begin
select sname into v_out from t_student where sid =v_id;
return '返回的数据'||v_out;

end;


select sid ,fun_get_name(sid) from t_student;
