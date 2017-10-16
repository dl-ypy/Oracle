分支语句

--if 语句
if    条件   then...else ...end if

判断学生表当中的学生的性别
    declare 
           v_ssex t_student.ssex%type;
    begin
        select ssex into v_ssex from t_student where sid =1;
        if v_ssex =1 
        then
              dbms_output.put_line('男性'); 
        elsif v_ssex =2
        then 
              dbms_output.put_line('女性'); 
        else 
              dbms_output.put_line('不详'); 
        end if;
            dbms_output.put_line('程序结束'); 
    end;


--case 语句
语法：
case when  条件 then .. when 条件...else ...end case;
--判断student表中sid 为1 的学生的年龄

    declare
         v_sage t_student.sage%type;
    begin
        select sage into v_sage from t_student where sid = 1;
        case when v_sage<18 then dbms_output.put_line('未成年'); 
             when v_sage=18 then dbms_output.put_line('刚刚成年'); 
             else  dbms_output.put_line('成年人'); 
        end case;
    end;

    declare
        v_sage t_student.sage%type;
    begin
        select sage into v_sage from t_student where sid = 1;
        case v_sage
             when 17 then dbms_output.put_line('未成年'); 
             when 19 then dbms_output.put_line('刚刚成年'); 
             else  dbms_output.put_line('成年人'); 
        end case;
    end;


--循环：

loop
    exit when 退出循环的条件
end loop；

--不写exit when 就是无限循环
    declare 
        v_i number(5);
    begin
        v_i := 1;
        loop
            dbms_output.put_line(v_i);
            exit when v_i>9;  --满足条件就退出
            v_i :=v_i+1;
        end loop; 
    end;


--while 循环

    declare 
        v_i number(5);
    begin
        v_i := 1;
        while v_i<10  --满足条件就循环
             loop
                 dbms_output.put_line(v_i);
                 v_i :=v_i+1;
        end loop;
    end;


--for 循环
    begin
    for v_i in 1..10 loop
         dbms_output.put_line(v_i);
    end loop;
    end;

















