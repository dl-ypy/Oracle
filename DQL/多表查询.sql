--����ѯ��
--1�������ѯ
�����ѯ�Ľ�������ܼ�¼��ʱ�����ű�ĵѿ����˻��������ظ���
  select t1.*,t2.*
  from t_student  t1, t_class t2;
  ��ֵ��ѯ���ڽ������ӵĻ����Ϲ�����һЩ���������������ݡ�
  select t1.*,t2.*
  from t_student  t1, t_class t2
  where t1.cid = t2.cid;
  ע�⣺����˵������������ļ�¼�������������ʱ��ִ��Ч�ʵͣ����ݲ��ظ���


--2�������ӣ�ִ��Ч�ʱȽ����ѯ��
select * from t_student t1 inner join  t_class t2 on t1.cid = t2.cid;

���������ݽ��ٵķ������ִ��Ч�ʱȷ����ұ߸ߡ�


--3��������

       1)��������
         �������ӵĻ����ϣ�����߲���������������Ҳ��ʾ����
         ����ߵı�Ϊ������ߵ�����ȫ����ʾ���ұߵı�����ݲ����������Ļᱻ�ɵ�
         select * 
         from t_student t1 left join t_class t2  on t1.cid = t2.cid;
        
       
       2)��������
         ���ұߵı�Ϊ�����ұߵ�����ȫ����ʾ����ߵı�����ݲ����������Ļᱻ�ɵ�
         select * 
         from t_student t1 right join  t_class t2 on t1.cid =t2.cid;      
       
       3)ȫ����
       
         ȫ���� = ��������+��������+ȥ���ظ���
         ����ߺ��ұߵ�����ȫ����ʾ
       select *
       from t_student t1 full join t_class t2 on t1.cid = t2.cid;
       
       
--union �� union all
union :����������������Ľ���������ȥ���ظ�����ݵ�һ���ֶν�����������
union all:����������������Ľ���������û��ȥ���ظ��Ҳû�н�������

select *
       from t_student t1 full join t_class t2 on t1.cid = t2.cid;
select * 
from t_student t1 left join t_class t2  on t1.cid = t2.cid
union
select * 
from t_student t1 right join  t_class t2 on t1.cid =t2.cid;        
       
select * 
from t_student t1 left join t_class t2  on t1.cid = t2.cid
union all
select * 
from t_student t1 right join  t_class t2 on t1.cid =t2.cid;        
       
       
       
       
       
       
       
       
