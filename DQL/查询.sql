--DQL�����ݿ��ѯ����
--�򵥲�ѯ��
�﷨�� 
    select <�ֶ��б�> 
    from <����>
    [where]  <����>
    [group by] <�����ֶ�>
    [having] <��������>
    [order by] <�����ֶ�>
�������ŵ����ڲ�ѯ����п��ܳ��ֵģ�û�ӵ���һ������ֵ���䡣


����1����ѯѧ����������ѧ������Ϣϸ�壨������Ϣ�� 
-- * ��ʾ���е��ֶ�
select * from  t_student;

select sid,sname,ssex,sage,saddress,sbirth,cid from t_student;

����2 ����ѯѧ����������ѧ�������������䡣
select sname,sage from t_student;
����3����ѯѧ����������ѧ��������������,�б�����ʾΪ"��������"��"�����䡿".
select sname as ����,sage as ���� from t_student;
����ʹ���Ǳ�����
select sname as "��������",sage as "�����䡿" from t_student;
������������������ַ�����Ҫ��˫����������
����as һ������¶���ʡ��
select sname "��������",sage "�����䡿" from t_student;


--ƴ�ӷ��ţ�|| ����
����1����ѯѧ����������ѧ����Ϣ��ѧ�������͵�ַ��ƴ����Ϣ       ������������

select t_student.*,sname,saddress
from t_student
����������£�����Ҫȷ��*Ҫƥ����һ�ű�,�����ȷ�����ͻᱨ��

select t_student.*, '��'|| sname || '��'|| saddress  as ����
from t_student

��Oracle�б�ʾƴ�ӵķ���Ϊ|| ��Java�б�ʾƴ�ӵķ���Ϊ+


--�������Ĳ�ѯ��
����1����ѯѧ������sidΪ13��ѧ����������Ϣ
select * from t_student where sid =13;
select * from t_student where sid in (13);

����2����ѯѧ�����е�ַ�������ڵ�ѧ����������Ϣ
select * from t_student where saddress != '����';
select * from t_student where saddress not in('����');
select * from t_student where saddress <> '����';

����3����ѯѧ������������18��23֮���ѧ����������Ϣ
select *from t_student where sage >= 18 and sage <= 23;


����4����ѯѧ������������Ϊ�յ�ѧ����������Ϣ
select * from t_student where sname is not null;

����5����ѯѧ���������䲻����18��ѧ����������Ϣ��
select * from t_student where sage!=18;

select *                --1
from t_student          --2
where sid =13;          --3
2-->3-->1


--ģ����ѯ��(like  �ٷֺ�(%)  �»���  )
����1����ѯѧ�������������ŵ�ѧ����������Ϣ
      select * 
      from t_student 
      where sname like '��%';
      --%��ʾƥ��0 ���������ϵ��ַ�
����2����ѯѧ���������������β��ѧ����������Ϣ
      select *
      from t_student
      where sname like '%��';
����3����ѯѧ���������ִ���"־"����ֵ�ѧ����������Ϣ
      select *
      from t_student
      where sname like '%־%'
����4����ѯѧ���������ִ���"־"���������ֵ����ֵ�ѧ����������Ϣ
      select *
      from t_student
      where sname like '_־_' or  sname like '־__'  or  sname like '__־' -- ־--    --־      -־-
--_��ʾһ���ַ�


--����
ע�⣺���û��ָ��������߽������У�Ĭ�ϰ����������С�
      ���� asc    ����ؼ��� desc

����1����ѯѧ����������ѧ������Ϣ��������������
  select *
  from t_student
  order by sage desc;
  
  select *
  from t_student
  order by sage asc;

����2����ѯѧ����������ѧ������Ϣ���������������������������ȣ�����ѧ����������

  select *
  from t_student
  order by sage desc,sid asc;
ע�⣺�Զ���ֶ�����Ļ���orderby�ڲ�ѯ�����ֻ�ܳ���һ�Ρ���������ֶ�����Ӣ�Ķ��Ÿ�����



--�ۺϺ�����
count():ͳ�Ƽ�¼��
����1��ͳ��ѧ�����е�ѧ����
count(*):ͳ��������
����*ȥͳ��  ֻҪһ���ֶ���ֵ����ô�ͻᱻͳ�ƽ���
select count(*) from t_student;

select count(sname) from t_student;   --�����ֶ�ͳ�����������ֶ�Ϊ�գ��򲻻�ͳ�ơ�


count(1) ���еĴ�����ǳ��������ݳ�����ͳ����������һ�㶼���������ͳ�Ʒ�ʽ��


select count(1) from t_student

ע��:select  ��������ֶα����Ǳ�ṹ�е��ֶλ�����'*'�����ǳ���

select sname ����,sage ���� ,1 from t_student;

max()--�����ֵ
min()--����Сֵ
avg()--��ƽ��ֵ
sum()--���ۺ�

select count(1) ������  , max(sage)�������, min(sage) ��С����, avg(sage)ƽ������, sum(sage)�����ܺ� 
from t_student;


--���麯��:���麯��һ���;ۺϺ���һ��ʹ�á�
����1��ͳ��ѧ������ÿ�����е�ѧ����������
select saddress ,count(1)    --1
from t_student               --2
group by saddress            --3

2-->3-->1

ע�⣺���麯���;ۺϺ���һ��ʹ�õ�ʱ��select�ֶκ���ֻ���Ƿ�����ֶλ��߾ۺϺ���

select saddress ,max(sage)
from t_student             
group by saddress    

����ʹ�÷��麯�����൱��ȥ���ظ���


--distinct ȥ���ظ��С�
select distinct saddress from t_student




����1��ͳ��ѧ������ÿ�����е�ѧ��������Ů��������

select saddress, ssex ,count(1)
from t_student
group by saddress,ssex


����2��ͳ�Ƴ�ѧ�����и�����ѧ����������5���ϵĳ���
select saddress ,count(1)     --1
from t_student                --2             
group by saddress             --3
having count(1)>4

2-->3-->4-->1

--having�жϷ��������ݵ�����   count()ͳ�Ʒ����������е�����

����3:ͳ��ѧ�������������18������д�ѧ������Ϣ
select * from  t_student where sage>18

����4��ͳ�Ƴ�ѧ�������������18������д�ѧ���ڳ����е�����
select saddress ,count(1)
from t_Student
where sage>18
group by saddress 


����5��ͳ�Ƴ�ѧ�������������18������д�ѧ���ڳ����е���������5�ļ�¼
select saddress, count(1)
from t_student
where sage>18
group by saddress 
having count(1)>5

����6��ͳ�Ƴ�ѧ�������������18������д�ѧ���ڳ�����������Ů����������3�ļ�¼

select saddress,ssex, count(1)
from t_student
where sage>18
group by saddress ,ssex
having count(1)>1

--where �� having ������
where�ڷ���ǰִ�У�ȷ�������������Դ
having�ڷ����ִ�У��Է��������ݽ�����������
havingֻ�ܳ�����group by���麯���У��Է��������ݽ��й��˵�
where���Գ�����group by���麯���������С�


�﷨�� 
    select <�ֶ��б�> 
    from <����>
    [where]  <����>
    [group by] <�����ֶ�>
    [having] <��������>
    [order by] <�����ֶ�>
    
    from-->where-->group by-->having-->select -->order



