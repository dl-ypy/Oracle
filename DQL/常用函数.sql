--���ú�����
1��to_date():
���ַ������͵����ݸ���ָ���ĸ�ʽת�����������͵ĸ�ʽ
--dual �����
select '2017-02-15' ,to_date('2017-02-15','yyyy-mm-dd') from dual;


2��to_char():���������ͻ�����ֵ���͵����ݸ���ָ���ĸ�ʽת��Ϊ�ַ�����
select sysdate from dual;
select sysdate , to_char(sysdate ,'yyyy-mm-dd HH:mi:ss') from dual;
--yyyy  ��
--mm    ��                  --yyyy-MM-dd HH-mm-ss
--dd   ��
--HH   Сʱ
--mi   ����
--ss   ��

select sysdate , to_char(sysdate ,'yyyy-mm-dd HH:mi:ss'), to_char(sysdate ,'yyyy'), to_char(sysdate ,'mm') from dual;

select sysdate , to_char(sysdate ,'yyyy"��"mm"��"dd"��"') from dual;
ע�⣺����ʽ�д��ڷǸ�ʽ�����ַ�������Ҫ��˫���Ž��ַ�������



3 decode(�ֶ���,ֵ1,����ֵ1,ֵ2,����ֵ2,ֵ3,����ֵ4...,ֵn,����ֵn,ȱʡֵ):
������Java���е�if ...else  if ....else
select t.*,decode(ssex,'1','��','2','Ů','δ֪')
from t_student t

if ...else  ...

select t.*,decode(ssex,'1','��','δ֪')
from t_student t

if*(){

}
select t.*,decode(ssex,'1','��')
from t_student t



4��nvl(x,value): ���xΪ�գ��򷵻�valueֵ�����򷵻�x
select t.* ,nvl(sname,'��ݲ���') ,decode(sname,null,'��ݲ���',sname)
from t_student t;
˼���⣺ͳ�Ƴ�ѧ������������18-20��21-26֮���������
select sage, count(1)
from t_student
where sage>=18 and sage<=20 or sage>=21 and sage<=26
group by sage


select t.* ,decode (sage ,18,1,19,1,20,1,0)"[18-20]",decode (sage ,21,1,22,1,23,1,24,1,25,1,26,1,0)"[21-26]"
from t_student t;


5��sum()���
select sum(decode (sage ,18,1,19,1,20,1,0)) "[18-20]",sum(decode (sage ,21,1,22,1,23,1,24,1,25,1,26,1,0))"[21-26]"
from t_student t;



6��case when 

case when ���� then ֵ1  else ֵ1 end

select sum( case when sage between 18 and 20 then 1 else 0 end ) "[18-20]",
sum(case when sage between 21 and 26  then 1 else 0 end )  "[21-26]"
from t_student t;

ʹ��count��ʵ�֣�

select count( case when sage between 18 and 20 then 1 end ) "[18-20]",
count(case when sage between 21 and 26  then 1 end )  "[21-26]"
from t_student t;


7��last_day():��õ��µ����һ��
select last_day(sysdate)
from dual;



8��extract����ȡ�����е��ض�����
select extract(year from sysdate)
from dual;


9��substr :��ȡ�ַ���
select substr('abcdefg',4,3)
from dual;


10��length�������ж��ַ��ĳ���

select t.*, length(sname)
from t_student t;


11��instr �����ַ��ķ���   'abcdefg'
select instr('abcdefg','h')
from dual;

select t.*,instr(sname,'��')
from t_student  t
where instr(sname,'��')!=0


--α�У����ݿ��Ϊÿһ�ű����һ��α��,α�в���洢�ڱ��С�����  rowid
rowid����ÿһ�����ݵ������ַ��Ψһȷ��ÿһ�����ݵģ��߱�Ψһ�ԡ�
ֻ�ܲ�ѯ �����޸ġ�
--�������ݵ�ʱ���Զ�����
select t.*,rowid from t_student t;


--rownum:�кţ����ݿ�Ϊ��ά��ÿһ�����������ɵ�һ��Ψһ�ı�ʶ����ÿ��ά���������ɡ�
rownum����ִ�в�ѯ���ڶԽ�������б�š�
select *from t_student t where ssex ='1';

����1����ѯѧ�����е�ǰ10������
select t.*,rownum 
from t_student t
 where rownum<=10;
����2����ѯѧ�����е���������ǰ��������
select * from(
select t.* ,rownum num from t_student t order by sage desc
)  where rownum<=3

����3����ѯѧ�����еĵ�3������10��ѧ������������
��ҳ
select t.* ,rownum from t_student t where rownum<=10 and rownum>=3
--ÿ�β�ѯrownum������������
select t2.*,rownum from (
select t1.* ,rownum num from t_student t1 where rownum<=10
) t2 where  num>=3








