PL/SQL编程：过程语言与结构化查询语言（SQL）组合而成

语法：
  declare
    变量声明
   begin
    执行代码
    异常处理
   end


案例1：打印hello corcle   
    declare
    begin
    dbms_output.put_line('hello oracle');
    end;

    begin 
            --注意
            --1.如果没有变量声明，decalare可省略
            --2.begin和end之间必须有代码
           null;
    end:


案例2：声明另个变量，a，b，求a和b的和，并打印

       declare
           --int a;
           --int b;
           v_a number(5) := 1;
           v_b number(5) := 2;
           v_c number(5);
       begin
           v_c := v_a + v_b;
           dbms_output.put_line('a+b='||v_c);
       end;
       --赋值要用 : =


动态赋值：&
       declare
           --int a;
           --int b;
           v_a number(5) :=&请输入a的值;
           v_b number(5) :=&请输入b的值;
           v_c number(5);
           v_d varchar2(20) :='&请输入字符串';    --输入字符串需要用单引号引起来
       begin                        
           v_c := v_a + v_b;
           dbms_output.put_line('a+b='||v_c);
           dbms_output.put_line('d:'||v_d);
       end;
       
       
获取sid=1的学生的姓名，并打印出来
--into 关键字

    declare
        v_sid number(5):= 1;
        v_name varchar2(20);
    begin--在PL/SQL块中的select语句中必须使用into才能赋值
        select sname into v_name from t_student where sid = v_sid;
        dbms_output.put_line(v_name);
    end;
    --如果有多个字段需要查询赋值，在into语句的左侧列出需要查询的字段，在into的右侧一一对应需要接受的变量名。
    --声明变量的时候，声明变量的类型的大小容易溢出
    
    
新类型
%type--字段（属性）类型

    declare
        v_sid number(30):= 1;
        v_name t_student.sname%type;
    begin
        select sname into v_name from t_student where sid = v_sid;
        dbms_output.put_line(v_name);
    end;


案例：查询出sid = 1 的学生的左右信息，
%rowtype--行类型

    declare
        v_sname t_student.sname%type;
        v_sage t_student.sage%type;
        v_ssex t_student.ssex%type;
        v_saddress t_student.saddress%type;
        v_stu t_student%rowtype;
    begin
        select * into  v_stu from t_student where sid = 1;
        dbms_output.put_line(v_stu.sname||'-------'||v_stu.sage||'-------'||v_stu.ssex||'-------'||v_stu.saddress);
    end;
