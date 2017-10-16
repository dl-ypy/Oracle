create table student (
id number(3) not null PRIMARY key,
name VARCHAR2(20) not null,
sex varchar2(4),
birth number(4),
department varchar2(20),
address VARCHAR2(50)
);
--����score��SQL�������£�
create table score(
   id number(3) not null  PRIMARY key,
   stu_id number(3)  not null,
   c_name VARCHAR(20) ,
   grade number(3)
);

insert into student values(901,'���ϴ�','��',1985,'�����ϵ','�����к�����');
insert into student values(902,'���϶�','��',1986,'����ϵ','�����в�ƽ��');
insert into student values(903,'����','Ů',1990,'����ϵ','����ʡ������');
insert into student values(904,'����','��',1990,'Ӣ��ϵ','����ʡ������');
insert into student values(905,'����','Ů',1991,'Ӣ��ϵ','����ʡ������');
insert into student values(906,'����','��',1988,'�����ϵ','����ʡ������');
commit;

insert into score values(1,901,'�����',98);
insert into score values(2,901,'Ӣ��',80);
insert into score values(3,902,'�����',65);
insert into score values(4,902,'����',88);
insert into score values(5,903,'����',95);
insert into score values(6,904,'�����',70);
insert into score values(7,904,'Ӣ��',92);
insert into score values(8,905,'Ӣ��',94);
insert into score values(9,906,'�����',90);
insert into score values(10,906,'Ӣ��',85);
commit;



1����ѯstudent��ĵ�2����4����¼ 
select * from
 (
 select s1.* ,rownum num
 from student s1 
 where rownum between 1 and 4
 ) where num >=2;
 
2����student���ѯ����ѧ����ѧ�ţ�id����������name����Ժϵ��department������Ϣ
select s.id ѧ��, s.name ����, s.department Ժϵ
from student s;

3����student���в�ѯ�����ϵ��Ӣ��ϵ��ѧ������Ϣ
select * 
from student
where department = '�����ϵ' or department = 'Ӣ��ϵ';

4����student���в�ѯ����25~30���ѧ����Ϣ
select s.*, (extract(year from sysdate)-birth) ����
from student s
where (extract(year from sysdate)-birth) between 25 and 30;

5����student���в�ѯÿ��Ժϵ�ж�����?
select department, count(1) ����
from student
group by department;

6����score���в�ѯÿ����Ŀ����߷�
select c_name, max(grade)
from score
group by c_name;

7����ѯ���ĵĿ��Կ�Ŀ��c_name���Ϳ��Գɼ���grade��
select s.name ����, s1.c_name ��Ŀ, s1.grade �ɼ�
from student s
join score s1
on s.id = s1.stu_id
where s.name = '����';

��������Ƕ�ײ�ѯ��...in(���ж��ֵ)     ...=(�����ѯֻ����һ��ֵ)    ...=any(���ж��ֵ)

8���������ӵķ�ʽ��ѯ����ѧ������Ϣ�Ϳ�����Ϣ
select s.*,s1.*
from student s
inner join score s1
on s.id = s1.stu_id; 

9������ÿ��ѧ�����ܳɼ�
select s.name, sum(s1.grade) �ܳɼ�
from student s
join score s1
on s.id = s1.stu_id
group by s.name;

10������ÿ�����Կ�Ŀ��ƽ���ɼ�
select s.c_name, avg(s.grade) ƽ���ɼ�
from score s
group by s.c_name;

11����ѯ������ɼ�����95��ѧ����Ϣ
select s.*,s1.*
from student s
join score s1
on s.id = s1.stu_id
where s1.c_name = '�����' and s1.grade <95;

select * from student t where exists (
select stu_id from score where c_name = '�����' and stu_id = t.id 
)
--exists ��Ҫ���ڽ�����������Ƚϴ�������ִ��Ч�ʱ�in��

12����ѯͬʱ�μӼ������Ӣ�￼�Ե�ѧ������Ϣ
select s.*,s5.*
from student s
join score s5
on s.id = s5.stu_id
join
(
select s1.stu_id
from score s1
join (select s2.stu_id from score s2 where s2.c_name='Ӣ��') s3
on s1.stu_id = s3.stu_id
where s1.c_name = '�����'
) s4
on s5.stu_id = s4.stu_id;

select * from student s  where exists (
select * from score
where stu_id in (
select stu_id from score where c_name = '�����'
) and c_name = 'Ӣ��' and s.id = stu_id 
);

13������������Գɼ����Ӹߵ��ͽ�������
select *
from score
where c_name = '�����'
order by grade desc;

14����student���score���в�ѯ��ѧ����ѧ�ţ�Ȼ��ϲ���ѯ��� UNION��union all
select id
from student
union
select stu_id
from score;

select id
from student
union all
select stu_id
from score;

15����ѯ���Ż���������ͬѧ��������Ժϵ�Ϳ��Կ�Ŀ���ɼ�
select s.name ����,s.department Ժϵ, s1.c_name ��Ŀ, s1.grade �ɼ�
from student s
left join score s1
on s.id = s1.stu_id
where s.name like '��%' or s.name like '��%';

16����ѯ���Ǻ��ϵ�ѧ�������������䡢Ժϵ�Ϳ��Կ�Ŀ���ɼ�
select s.name ����,(extract(year from sysdate)-s.birth) ����, s.department Ժϵ, s1.c_name ��Ŀ, s1.grade �ɼ�
from student s
join score s1
on s.id = s1.stu_id
where s.address like '����%';
