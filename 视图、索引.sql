��Ȩ
grant create view to ypy;

��ͼ:�ɿ���һ�������
�����е�ĳЩ�ֶβ��ܱ�¶���û�ʱ��������Ҫ�����Ա�¶���û����ֶγ�ȡ����

--or  replace    ����ͼ����ʱ�� ���滻�����򴴽�
create or replace view v_t_student as
select sid,sname,ssex from t_student;

��ͼ��ʹ�ã�
       1����ѯ��ͼ�Ͳ�ѯ��Ĳ�����һ����
                      select * from v_t_student;
       2������ͼ�����ݽ���DML�������൱�ڲ����˱��е�����
                      update v_t_student set sname = 'aaa' where sid  10;
       3���ڶ���ͼ���в���ʱ��ֻ�ܽ��м򵥵Ĳ��������ܲ������ӵ���ͼ
                      create or replace view v_emp as select ename,sal/30 salary from emp order by salary desc;
                      update v_emp set ....;    --�������޸ģ���Ϊ����ͼ�е�salary���������
                      select * from v_emp;
        
       ��ͼ�����ã���߲�ѯЧ��
                      1.��ĳЩ�ֶ���ȡ����������˰�ȫ��
                      2.��һЩ���õĲ��������㣩��װ����ͼ�У�����sql���ԡ�
                      
                      
                      
������һ�㲻��Ҫ�Լ�������ϵͳ���Զ��������Լ�����������
������ԭ������������Խ��Խ�ã�һ��Ὣ��������Ψһ��Լ�����������
�����Ĵ�������˲�ѯЧ��
