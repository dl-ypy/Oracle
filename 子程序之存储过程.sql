�ӳ��򣺶���������PL/SQL�飬���벢�ұ�����������
�����ӳ���
    ���̣��洢����
    ����������
    
    
    
--�洢���̣�
    �﷨:create or replace procedure ��������[�����б�]
              is|as  --�൱��PL/SQL���е�declare     ��������
              begin    --��д�߼����룬�����쳣����
              end;

1���޲ι���
����������һ���洢���̣���ѧ�����в���1000�����ݡ�
create or replace  procedure pro_add_student
is
begin
       for v_i in 1..1000 loop
       insert into t_student(sid,sname,sage)values(seq_t_student.nextval,'����'||v_i,v_i);
       end loop;
       commit;
end;


--1�����Ҳ�˵������ҵ���Ҫ���õĴ洢���̣��Ҽ��ҵ����Բ�����
--2����PL/SQL���е���

begin
  pro_add_student();--�ڵ��ô洢����ʱ�����û�в��������ſ���ʡ�ԡ�
end;



�вι���:
create or replace  procedure pro_test(
p_name varchar2,      --����
p_sex  varchar2,
p_age  number

)is
begin
       dbms_output.put_line(p_name||'...'||p_sex||'....'||p_age);
end;

--����
declare
v_name varchar2(20) :='����';
v_age number :=15;
v_sex varchar2(3) :='��';
begin 
      pro_test(v_name,v_sex,v_age);
end;


--���������洢����ֻ�ǵ��������£���û�з�����Ϣ��

�������ͣ� in  out   in out
in :Ĭ������²�������Ϊin���������ݡ�
out:������Ҫ���ص���Ϣ
in out:

����������һ���洢���̣�ʵ�ָ���ѧ��������ѯѧ����Ϣ��
�������صĽ����ӡ������
Create or replace procedure pro_test_2(
p_name in varchar2,
p_out out sys_refcursor)   --�� REF �α걣���ѯ������Ϣ
is
v_sql varchar2(200);
begin
      v_sql := 'select *from t_student where 1=1';
      if p_name is not null 
             then v_sql :=v_sql||'and sname like ''%'||p_name||'%'' ';--\\  \n   \t    �������еĵ�����Ҫ�����������Ŵ���
      end if;
      --dbms_output.put_line(v_sql);
      open p_out for v_sql;
      
end;


declare 
v_out sys_refcursor;
v_stu t_student%rowtype;
begin 

pro_test_2('����',v_out);
      loop
            fetch v_out into v_stu;
            exit  when v_out%notfound;
            dbms_output.put_line(v_stu.sid||'............'||v_stu.sname);
      end loop;
      close v_out;
end;




select *from t_student where 1=1and sname like  '%����%' 









