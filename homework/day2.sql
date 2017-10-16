create table emp --–创建员工信息表
(
Ename varchar2(30), --姓名
Empno number(5),  --编号
Deptno number(5), --所在部门
Job varchar2(20), --工种(人员类别)，如：manager 经理，clerk 办事员
Hiredate Date, --雇佣日期
Comm number(7,2),  --佣金
Sal  number(7,2) , --薪金
Mgr number(5)  --编号
);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('张三', 1, 10, '办事员', null, 500, 2000, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('李四', 2, 10, '办事员', null, 650, 2333, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('王五', 3, 20, '办事员', null, 1650, 1221, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('小张', 4, 20, '经理', null, 980, 3200, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('小刘', 5, 10, '办事员', null, 500, 2000, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('光文', 6, 10, '办事员', null, 890, 4321, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('胖子', 7, 40, '办事员', null, 2350, 2200, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('张磊', 8, 20, '经理', null, 1110, 1223, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('李宁', 9, 60, '办事员', null, 500, 2311, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('小李', 10, 10, '办事员', null, 300, 123, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('冬瓜', 11, 20, '办事员', null, 4500, 2200, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('小红', 12, 80, '经理', null, 385, 5000, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('思思', 13, 10, '办事员', null, 467, 2000, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('李红平', 14, 30, '办事员', null, 789, 4332, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('吴涛', 15, 20, '办事员', null, 321, 121, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('孙克', 16, 50, '经理', null, 2212, 3200, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('梁好', 17, 10, '办事员', null, 1432, 1233, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('李飞', 18, 50, '办事员', null, 1112, 2200, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('舒小', 19, 20, '办事员', null, 1231, 12312, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('邓涛', 20, 60, '经理', null, 785, 3200, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('麻子', 21, 10, '办事员', null, 333, 4355, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('李杰', 22, 70, '办事员', null, 2345, 323, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('石碣', 23, 30, '办事员', null, 121, 2200, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('思敏', 24, 20, '经理', null, 1221, 23443, null);
commit;

create table dept --部门表
(
Dname varchar2(30),  --部门名
Deptno number(5), --部门号
Loc varchar2(50)  -- 部门位置
);
insert into DEPT (DNAME, DEPTNO, LOC)
values ('市场部', 10, '大连');
insert into DEPT (DNAME, DEPTNO, LOC)
values ('研发部', 20, '沈阳');
insert into DEPT (DNAME, DEPTNO, LOC)
values ('人事部', 30, '深圳');
insert into DEPT (DNAME, DEPTNO, LOC)
values ('人事部', 40, '广州');
insert into DEPT (DNAME, DEPTNO, LOC)
values ('研发部', 50, '北京');
insert into DEPT (DNAME, DEPTNO, LOC)
values ('行政部', 60, '上海');
insert into DEPT (DNAME, DEPTNO, LOC)
values ('研发部', 70, '长沙');
insert into DEPT (DNAME, DEPTNO, LOC)
values ('财务部', 80, '武汉');
insert into DEPT (DNAME, DEPTNO, LOC)
values ('研发部', 90, '郑州');
commit;

    1、选择部门30中的雇员 
    select * from emp where deptno = 30;
    
　2、列出所有办事员的姓名、编号和部门
    select e.ename 姓名,e.empno 编号,d.dname 部门
    from emp e
    join dept d on e.deptno = d.deptno
    where e.job = '办事员'; 
    
　3、找出佣金高于薪金的雇员
    select * from emp where sal < comm;
    
　4、找出佣金高于薪金60%的雇员
    select * from emp where (comm-sal)/sal > 0.6;
    
　5、找出部门10中所有经理和部门20中的所有办事员的详细资料
    select * 
    from emp
    where deptno = 10 and job = '经理' or deptno = 20 and job = '办事员'
    
　6、找出部门10中所有经理、部门20中所有办事员，既不是经理又不是办事员但薪金>=
    2000的所有雇员的详细资料　
    select * 
    from emp
    where (deptno = 10 and job = '经理') 
    or (deptno = 20 and job = '办事员')
    or (job != '经理' and job != '办事员' and sal >= 2000);
    
　7、找出收取佣金的雇员的不同工作
    select job
    from emp
    where comm > 0
    group by job;   

　8、找出不收取佣金或收取的佣金低于100的雇员
    select * 
    from emp
    where comm is null or comm < 100;

　9、找出各月最后一天受雇的所有雇员
    select *
    from emp e
    where last_day(e.hiredate) = e.hiredate;
    
　10、找出早于25年之前受雇的雇员
    select * 
    from emp e
    where (extract(year from sysdate)-extract(year from e.hiredate)) > 25;
    
　11、显示只有首字母大写的所有雇员的姓名  --用ascii()可显示ASCII码
    select e.ename
    from emp e
    where substr(e.ename,0,1) between 'A' and 'Z';
    
　12、显示正好为2个字符的雇员姓名
    select e.ename
    from emp e
    where e.ename like '__';
    
　13、显示不带有'R'的雇员姓名
     select e.ename
    from emp e
    where e.ename not like '%R%';
    
　14、显示所有雇员的姓名的前三个字符
    select substr(e.ename, 0,3) 姓名前三个字符
    from emp e;
　
    15、显示所有雇员的姓名，用a替换所有'A'  -- translate(参数1，参数2，参数3) 函数   将字符串：参数1 中的字符串：参数2  替换为 字符串：参数3
　select case when (e.ename like '%A%') then translate(e.ename,'A','a') else e.ename end 姓名
    from emp e;
    
    16、显示所有雇员的姓名以及满10年服务年限的日期
    select e.ename, case when (extract(year from sysdate)-extract(year from e.hiredate))>=10 then e.hiredate end
    from emp e; 
    
　17、显示雇员的详细资料，按姓名排序
    select *
    from emp e
    order by e.ename;
    
　18、显示雇员姓名，根据其服务年限，将最老的雇员排在最前面
    select e.*, (extract(year from sysdate)-extract(year from e.hiredate)) 服务年限
    from emp e
    order by 服务年限 desc;
    
　19、显示所有雇员的姓名、工作和薪金，按工作的降序顺序排序，而工作相同时按薪金升序
    select e.ename,e.job,e.sal
    from emp e
    order by e.job desc,e.sal;
    
　20、显示所有雇员的姓名和加入公司的年份和月份，按雇员受雇日所在月排序，将最早年份的项目排在最前面
    select e.ename,extract(year from e.hiredate) 年份, extract(month from e.hiredate) 月份
    from emp e
    order by 年份,月份;
　
    21、显示在一个月为30天的情况下所有雇员的日薪金
    select e.*, (e.sal/360) 日薪金
    from emp e;
    
　22、找出在（任何年份的）2月受聘的所有雇员
    select e.ename, extract(month from e.hiredate) 月份
    from emp e 
    where extract(month from e.hiredate) = 2;
    
　23、对于每个雇员，显示其加入公司的天数   --to_number()转换为数字    round() 四舍五入
    select e.*, round(to_number(sysdate-e.hiredate)) 天数
    from emp e;
　
    24、显示姓名字段的任何位置，包含 "A" 的所有雇员的姓名
　select e.ename
    from emp e
    where e.ename like '%A%';
    
    25、以年、月和日显示所有雇员的服务年限    --months_between() 按月计算时间差
    select e.*,(extract(year from sysdate)-extract(year from e.hiredate)) 年, months_between(sysdate, e.hiredate) 月, round(to_number(sysdate-e.hiredate)) 天
    from emp e; 
