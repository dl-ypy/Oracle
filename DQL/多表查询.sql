--多表查询：
--1、交叉查询
交叉查询的结果集的总记录数时候两张表的笛卡尔乘积，数据重复。
  select t1.*,t2.*
  from t_student  t1, t_class t2;
  等值查询：在交叉连接的基础上过滤了一些不符合条件的数据。
  select t1.*,t2.*
  from t_student  t1, t_class t2
  where t1.cid = t2.cid;
  注意：会过滤掉不符合条件的记录，在数据量大的时候，执行效率低，数据不重复。


--2、内连接：执行效率比交叉查询高
select * from t_student t1 inner join  t_class t2 on t1.cid = t2.cid;

内连接数据较少的放在左边执行效率比放在右边高。


--3、外连接

       1)左外连接
         在内连接的基础上，将左边不符合条件的数据也显示出来
         以左边的表为主，左边的数据全部显示，右边的表的数据不满足条件的会被干掉
         select * 
         from t_student t1 left join t_class t2  on t1.cid = t2.cid;
        
       
       2)右外连接
         以右边的表为主，右边的数据全部显示，左边的表的数据不满足条件的会被干掉
         select * 
         from t_student t1 right join  t_class t2 on t1.cid =t2.cid;      
       
       3)全连接
       
         全连接 = 左外连接+右外连接+去掉重复项
         将左边和右边的数据全部显示
       select *
       from t_student t1 full join t_class t2 on t1.cid = t2.cid;
       
       
--union 和 union all
union :用来求两个结果集的交集，并且去掉重复项，根据第一列字段进行升序排序
union all:用来求两个结果集的交集，但是没有去掉重复项，也没有进行排序

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
       
       
       
       
       
       
       
       
