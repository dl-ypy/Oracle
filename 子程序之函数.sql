����:�������� java�еķ�������

�﷨��create  function ��������[�����б�]
           return ��������
           is|as
           begin
           end;
--1.�޲κ���
����������һ������������һ���ַ���

create or replace function fun_get_name
return varchar2
is
begin
return '���ص�����';
end;


���ú�����
1���͵��ô洢����һ��
2����PL/SQL���е���:
begin 
dbms_output.put_line(fun_get_name());   --������������
end;
3�� ͨ��Select��䣺
select fun_get_name from dual;


--�вεĺ���

create or replace function fun_get_name(v_id number)
return varchar2
is v_out varchar2(20);
begin
select sname into v_out from t_student where sid =v_id;
return '���ص�����'||v_out;

end;


select sid ,fun_get_name(sid) from t_student;
