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


   
     
        1、列出至少有一个雇员的所有部门
        select d.dname
        from emp e
        join dept d
        on e.deptno = d.deptno
        group by d.dname;
        
        2、列出薪金比"SMITH"多的所有雇员
        select *
        from emp e
        where e.sal >
        (select sal from emp where ename = 'SMITH');
        
        3、列出所有雇员的姓名及其直接上级的姓名
        select e.ename,e1.ename 直接上级
        from emp e
        join emp e1 
        on e.mgr = e1.empno;
        
　　4、列出入职日期早于其直接上级的所有雇员
        select e.*
        from emp e
        join (
             select *
             from emp
        ) e1 on e.mgr = e1.empno
        where e.hiredate < e1.hiredate;
        
　　5、列出部门名称和这些部门的雇员,同时列出那些没有雇员的部门
        select d.deptno,d.dname,e.ename
        from emp e
        right join dept d
        on e.deptno = d.deptno;
        
　　6、列出所有“CLERK”（办事员）的姓名及其部门名称
        select e.ename,d.dname
        from emp e
        join dept d
        on e.deptno = d.deptno
        where e.job = '办事员';
        
　　7、列出各种工作类别的最低薪金，显示最低薪金大于1500的记录
        select e.job, min(e.sal) 最低薪金
        from emp e
        group by e.job
        having min(e.sal) > 1500;
        
　　8、列出从事“SALES”（销售）工作的雇员的姓名及其部门名称
        select e.ename,d.dname
        from emp e
        join dept d
        on e.deptno = d.deptno
        where e.job = 'SALES';
        
　　9、列出薪金高于公司平均水平的所有雇员
        select *
        from emp e
        where e.sal > (select avg(sal) from emp);
        
　　10、列出与“SCOTT”从事相同工作的所有雇员
        select *
        from emp e
        where e.job in
        (select job from emp where ename = 'scott')
        and e.deptno in
        (select deptno from emp where ename = 'scott');
        
　　11、列出某些雇员的姓名和薪金，条件是他们的薪金等于部门30中
          任何一个雇员的薪金
          select e.ename,e.sal
          from emp e
          where e.sal in (
          select sal from emp where deptno = 30
          );
          
　　12、列出某些雇员的姓名和薪金，条件是他们的薪金高于部门30中所有雇员的薪金
          select e.ename,e.sal
          from emp e
          where e.sal > (
          select max(sal) from emp where deptno = 30
          );
          
　　13、列出每个部门的信息以及该部门中雇员的数量
          select d.*,e.员工数量
          from dept d
          left join
          (
          select deptno,count(1) 员工数量
          from emp
          group by deptno
          ) e
          on e.deptno = d.deptno
          order by e.deptno;
          
　　14、列出所有雇员的雇员名称、部门名称和薪金
          select e.ename,d.dname,e.sal
          from emp e
          join dept d
          on e.deptno = d.deptno;
          
        15、列出从事同一种工作但属于不同部门的雇员的不同组合
        select e.ename,e1.ename
        from emp e
        join emp e1
        on e.job=e1.job and e.deptno<>e1.deptno;
        
        16、列出分配有雇员数量的所有部门的详细信息，即使是分配有0个雇员
         select d.*,e.员工数量
          from dept d
          left join
          (
          select deptno,count(1) 员工数量
          from emp
          group by deptno
          ) e
          on e.deptno = d.deptno
          order by e.deptno;
          
　　17、列出各种类别工作的最低工资
          select e.job,min(e.sal) 最低工资
          from emp e
          group by  e.job;
          
　　18、列出各个部门的MANAGER（经理）的最低薪金
          select d.dname,min(e.sal) 最低薪金
          from emp e
          join dept d
          on e.deptno = d.deptno
          where e.job = '经理'
          group by d.dname;
          
　　19、列出按年薪排序的所有雇员的年薪
          select e.*,e.sal*12 年薪
          from emp e
          order by e.sal;
          
　　20、列出薪金水平处于第四位的雇员
          select *
          from
          (
               select e1.*,rownum num
               from
               (
                   select *
                   from emp
                   order by sal desc
               ) e1
           ) where num  = 4;
