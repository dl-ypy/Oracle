�α꣺
�ڽ��α�֮ǰ�����޷�����������ݣ��α�����þ�����������������ݵģ�������java�еļ��ϡ�
�α��Ϊ���֣�
  1����ʽ�α�
  2����ʽ�α�
  3��REF�α�
  
1����ʽ�α�
  ��PL/SQL��ʹ��DML(���ݲ�������insert��update��delete)���ʱ����ʽ�α���Զ�������
  ��ʽ�α��Զ��������Զ��򿪺͹رգ�����ΪSQL��
  ���ã�ͨ�������ʽ�α�����Կ��Ի�����ִ�е�DML������Ϣ��
  %FOUND  ��SQL���Ӱ����һ�л��������ʱΪtrue
  %NOTFOUND SQL���û��Ӱ���κ���ΪʱΪtrue��
  %ROWCOUNT SQL���Ӱ���������
  %ISOPEN �α��Ƿ�򿪡�ʼ����false��
  
  ���ӣ�
  begin
  insert into t_Student(sid,sname)values(seq_t_student.nextval,'��������');
  insert into t_Student(sid,sname)values(seq_t_student.nextval,'��������');
  dbms_output.put_line('Ӱ�������:'||SQL%Rowcount);
  --ͨ����ʽ�α��ȡ�����������Ϣ��������commit ֮ǰ��֮���ȡ��������ֻ�ܻ�ȡ�����ִ�еĵ�DML����
  commit;
  end;

2.��ʽ�α�
�޲��α�
����һ���α�ʵ�֣���ѯѧ����Ϣ����ӡ��
declare
v_stu t_student%rowtype;
--1.����һ���α�
Cursor getStudentCursor is select * from t_student;
--cursoor �α�����  getStudentCursor �α�����   is��Ϊ�ؼ��֣����sql���
begin
--2.���α�
open getStudentCursor;
--3.ѭ����ȡ����
     loop
          --���α���һ������ȡ���ݣ�Ȼ��ֵ��v_stu
          fetch getStudentCursor into v_stu;
          exit when getStudentCursor%notfound;
          dbms_output.put_line(v_stu.sid||'.....'||v_stu.saddress||'........'||v_stu.sage);
      end loop;
--4.�ر��α�      
close getStudentCursor;      
end;


�в��α�
���������Ա��ѯ��Ϣ
declare
--1. �����α�
Cursor getStudentCursor(v_ssex varchar2) is select * from t_student where ssex = v_ssex;
v_stu t_student%rowtype;
begin
--2. ���α�
open getStudentCursor('��');
     loop
              fetch getStudentCursor into v_stu;
              exit when getStudentCursor%notfound;
               dbms_output.put_line(v_stu.sid||'.....'||v_stu.saddress||'........'||v_stu.sage);
     end loop;
close getStudentCursor;      
end;

--��   ͨ��forѭ���������ֶ��򿪺͹ر��α�
declare
--1. �����α�
Cursor getStudentCursor(v_ssex varchar2) is select * from t_student where ssex = v_ssex;

begin
       for v_stu in getStudentCursor('��') loop
             dbms_output.put_line(v_stu.sid||'.....'||v_stu.saddress||'........'||v_stu.sage);
       end loop;    
end;



3.REF�α�
��ʽ�α��REF�α������
��ʽ�α�������ʱ���Ѿ�ָ����Ҫָ���SQL���
REF������ʱȷ����Ҫִ�е�SQL��䡣
declare
       -- 1.����һ��REF���ͱ���
       myrefcursor sys_refcursor;
       --�α���           ����
       v_sql varchar2(100);
       v_stu t_student%rowtype;
begin
       v_sql := 'select * from t_student';
       --2. ���α�
       open myrefcursor for v_sql;
       loop
                fetch myrefcursor into v_stu;
                exit when myrefcursor%notfound;
                dbms_output.put_line(v_stu.sid||'.....'||v_stu.saddress||'........'||v_stu.sage);
        end loop;
        close myrefcursor;
end;       
