--异常处理
1、系统预定义异常
案例：

Exception when 异常 
then 处理方式
when 异常
then处理方式

    declare
        v_sid number(30);
        v_name varchar2(30);
        v_age number(5);
    begin
        select sname,sage into v_name,v_age from t_student ;
        dbms_output.put_line(v_name||'-------'||v_age);

        Exception when no_data_found then dbms_output.put_line('没有找到数据');
        when too_many_rows 
        then dbms_output.put_line('找到太多行数据');
        when others 
        then  dbms_output.put_line('其他类型的异常');
    end;



2、自定义异常
    declare 
          --1、声明一个Exception类型的变量
          myexception Exception;
          v_name varchar2(20) := '&请输入一个信息';
    begin
           if v_name ='abc'
           then       
                dbms_output.put_line('if语句中....');
                --2、抛出异常
                raise myexception;
           end if;
                dbms_output.put_line('正常结束....');
           --3、捕获异常
           exception when myexception 
           then
           dbms_output.put_line('自定义异常触发了....');
           when others
           then 
           dbms_output.put_line('其他异常....');
    end;
