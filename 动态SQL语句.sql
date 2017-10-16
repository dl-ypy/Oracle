--动态SQL语句
EXECUTE IMMEDIATE DYNAMIC_SQL_STRING
[INTO DEFINE_VARIABLEE_LIST]    --将结果赋给变量
[USING BIND_ARGUMENT_LIST];   --使用参数

v_sql varchar(100):='select * from t_student';
--当一个变量存储着SQL语句时，我们想要执行这句SQL语句，必须先用动态SQL语句来接收这个SQL语句字符串，然后再执行。

declare 
      v_sql_string varchar(100);
      v_sname t_student.sname%type;
      v_sid t_student.sid%type:=2;
      v_sage t_student.sage%type:=19;
begin
      v_sql_string:= 'select sname from t_student where sid=:a and sage =:b';
      --dbms_output.put_line(v_sql_string);
      execute immediate v_sql_string into v_sname using v_sid,v_sage;
      dbms_output.put_line('查询结果:'||v_sname);
end;
--多个参数时，保证顺序一致


