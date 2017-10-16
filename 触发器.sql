������
1����伶����������עִ����䣬��������䴥����
2���м���������Ӱ���˶��������ݣ�����ô�������ͻᴥ�����ٴΡ�
3�����Ƽ�������
����1������һ���������������Ƕ�t_student ��������ݲ�����ʱ�򣬴�ӡһ�����


CREATE [OR REPLACE] TRIGGER trigger_name
AFTER | BEFORE | INSTEAD OF
[INSERT] [[OR] UPDATE [OF column_list]] 
[[OR] DELETE]
ON table_or_view_name
[REFERENCING {OLD [AS] old / NEW [AS] new}]
[FOR EACH ROW]
[WHEN (condition)]
pl /sql_block;

--1.��伶������
create or replace trigger  trigger_student 
after  insert or update or delete 
on t_student
begin 
   dbms_output.put_line('����������');
end;

insert into t_student(sid,sname) values(seq_t_student.nextval,'����');
commit;


create or replace trigger  trigger_student 
after  insert or update or delete 
on t_student
begin 
   dbms_output.put_line('����������');
   if inserting then 
      dbms_output.put_line('����');
   end if;
   if updating then 
      dbms_output.put_line('����');
   end if;
   if deleting then 
      dbms_output.put_line('ɾ��');
   end if;
end;

insert into t_student(sid,sname) values(seq_t_student.nextval,'����');
commit;
delete from t_student where sid = 7052;
commit;


��䴥�����ĸ��ӻ���
����������һ��������,��¼�����ݿ��ṹ�Ĳ�����¼��
create table t_log(   --����һ�������洢������¼
table_name varchar(20) primary key,
insertnum number,
updatenum number,
deletenum number
)

create or replace trigger trigger_t_log 
after insert or update or delete 
on t_student
declare 
   datanum number(5);
begin
      --1���ж��Ƿ��ǵ�һ�β����ñ�ṹ������
      select count(1) into datanum from t_log where table_name= 't_student';
      if datanum =0
      then --��ʾ��һ�β���
           insert into t_log(table_name)values('t_student');
      end if;
      --�ڴ������в�Ҫʹ��commit;

      --2���жϲ���������
      if inserting then 
         Dbms_Output.put_line('123');
         update t_log set insertnum = nvl(insertnum,0)+1 where table_name ='t_student';
      end if;
      if updating then 
         update t_log set updatenum = nvl(updatenum,0)+1 where table_name ='t_student';
      end if;
      if deleting then 
         update t_log set deletenum = nvl(deletenum,0)+1 where table_name ='t_student';
      end if;
end;

insert into t_student(sid,sname) values(seq_t_student.nextval,'����');
commit;



--2.�м���������Ӱ���˶�����  �������ʹ������ٴ�
create or replace trigger  trigger_student 
after  insert or update or delete 
on t_student  for each row     --��ͬ��
begin 
   dbms_output.put_line('����������');
end;

delete from t_student where sid between 5000 and 5500;
commit;


--3.���Ƽ���������
���м��������Ļ����������when
��������һ������������ɾ��ѧ����ʱ�򴥷�������ɾ������Ϊ'������'��ѧ����
create or replace trigger trigger_test1
before delete on t_student for each row 
when (old.sname ='������')
declare 
begin
     dbms_output.put_line('���Ƽ�������������');
     --��֯���ݵ�ɾ��
     raise_application_error('-20001','������¼���ܱ�ɾ��');
end;

delete from t_student where sname = '������';
commit;
