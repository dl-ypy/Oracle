�����ɹ淶��������ɣ����� java�еĽӿں�ʵ���ࣩ
    �淶��������еĹ��̺ͷ�����
    ���壺ʵ�Ĺ淶�ж���Ĺ��̺ͷ�����
    
    
    ����һ���淶��
      create or replace package pkg_student
          is --������صĹ��̺ͷ���
          procedure pro_test01(p_name varchar2);
          function fun_test02(p_name varchar2)return varchar2;
      end pkg_student;
      
    �������壺
      create or replace package body pkg_student
             is--��ط����͹��̵�ʵ��
                procedure pro_test01(p_name varchar2)
                is
                begin
                          dbms_output.put_line(p_name||'���̱�������');
                end;
                  
                function fun_test02(p_name varchar2)return varchar2
                is
                begin
                         dbms_output.put_line(p_name||'������������');
                         return '';
                end;
      end pkg_student;
      
      
���ð��еĹ��̺ͷ�����
begin
      pkg_student.pro_test01('����');
      dbms_output.put_line(pkg_student.fun_test02('����'));
end;
