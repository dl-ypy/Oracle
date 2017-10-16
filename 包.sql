包：由规范和主体组成（看成 java中的接口和实现类）
    规范：定义包中的过程和方法。
    主体：实心规范中定义的过程和方法。
    
    
    创建一个规范：
      create or replace package pkg_student
          is --定义相关的过程和方法
          procedure pro_test01(p_name varchar2);
          function fun_test02(p_name varchar2)return varchar2;
      end pkg_student;
      
    创建主体：
      create or replace package body pkg_student
             is--相关方法和过程的实现
                procedure pro_test01(p_name varchar2)
                is
                begin
                          dbms_output.put_line(p_name||'过程被调用了');
                end;
                  
                function fun_test02(p_name varchar2)return varchar2
                is
                begin
                         dbms_output.put_line(p_name||'方法被调用了');
                         return '';
                end;
      end pkg_student;
      
      
调用包中的过程和方法：
begin
      pkg_student.pro_test01('李四');
      dbms_output.put_line(pkg_student.fun_test02('王五'));
end;
