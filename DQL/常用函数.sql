--常用函数：
1、to_date():
将字符串类型的数据根据指定的格式转化成日期类型的格式
--dual 虚拟表
select '2017-02-15' ,to_date('2017-02-15','yyyy-mm-dd') from dual;


2、to_char():将日期类型或者数值类型的数据根据指定的格式转化为字符类型
select sysdate from dual;
select sysdate , to_char(sysdate ,'yyyy-mm-dd HH:mi:ss') from dual;
--yyyy  年
--mm    月                  --yyyy-MM-dd HH-mm-ss
--dd   日
--HH   小时
--mi   分钟
--ss   秒

select sysdate , to_char(sysdate ,'yyyy-mm-dd HH:mi:ss'), to_char(sysdate ,'yyyy'), to_char(sysdate ,'mm') from dual;

select sysdate , to_char(sysdate ,'yyyy"年"mm"月"dd"日"') from dual;
注意：若格式中存在非格式化的字符，则需要用双引号将字符括起来



3 decode(字段名,值1,返回值1,值2,返回值2,值3,返回值4...,值n,返回值n,缺省值):
类似于Java当中的if ...else  if ....else
select t.*,decode(ssex,'1','男','2','女','未知')
from t_student t

if ...else  ...

select t.*,decode(ssex,'1','男','未知')
from t_student t

if*(){

}
select t.*,decode(ssex,'1','男')
from t_student t



4、nvl(x,value): 如果x为空，则返回value值，否则返回x
select t.* ,nvl(sname,'身份不明') ,decode(sname,null,'身份不明',sname)
from t_student t;
思考题：统计出学生表中年龄在18-20和21-26之间的人数。
select sage, count(1)
from t_student
where sage>=18 and sage<=20 or sage>=21 and sage<=26
group by sage


select t.* ,decode (sage ,18,1,19,1,20,1,0)"[18-20]",decode (sage ,21,1,22,1,23,1,24,1,25,1,26,1,0)"[21-26]"
from t_student t;


5、sum()求和
select sum(decode (sage ,18,1,19,1,20,1,0)) "[18-20]",sum(decode (sage ,21,1,22,1,23,1,24,1,25,1,26,1,0))"[21-26]"
from t_student t;



6、case when 

case when 条件 then 值1  else 值1 end

select sum( case when sage between 18 and 20 then 1 else 0 end ) "[18-20]",
sum(case when sage between 21 and 26  then 1 else 0 end )  "[21-26]"
from t_student t;

使用count来实现：

select count( case when sage between 18 and 20 then 1 end ) "[18-20]",
count(case when sage between 21 and 26  then 1 end )  "[21-26]"
from t_student t;


7、last_day():获得当月的最后一天
select last_day(sysdate)
from dual;



8、extract：提取日期中的特定部分
select extract(year from sysdate)
from dual;


9、substr :截取字符串
select substr('abcdefg',4,3)
from dual;


10、length：用来判断字符的长度

select t.*, length(sname)
from t_student t;


11、instr 查找字符的方法   'abcdefg'
select instr('abcdefg','h')
from dual;

select t.*,instr(sname,'祥')
from t_student  t
where instr(sname,'祥')!=0


--伪列：数据库会为每一张表添加一个伪列,伪列不会存储在表中。例如  rowid
rowid：是每一条数据的物理地址，唯一确定每一条数据的，具备唯一性。
只能查询 不能修改。
--插入数据的时候，自动生成
select t.*,rowid from t_student t;


--rownum:行号，数据库为了维护每一条数据所生成的一行唯一的标识符。每次维护都会生成。
rownum会在执行查询后，在对结果集进行编号。
select *from t_student t where ssex ='1';

案例1：查询学生表中的前10条数据
select t.*,rownum 
from t_student t
 where rownum<=10;
案例2：查询学生表中的年龄最大的前三条数据
select * from(
select t.* ,rownum num from t_student t order by sage desc
)  where rownum<=3

案例3：查询学生表中的第3个到第10个学生的所有数据
分页
select t.* ,rownum from t_student t where rownum<=10 and rownum>=3
--每次查询rownum都会重新排序
select t2.*,rownum from (
select t1.* ,rownum num from t_student t1 where rownum<=10
) t2 where  num>=3








