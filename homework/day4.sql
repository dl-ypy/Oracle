create table emp --�C����Ա����Ϣ��
(
Ename varchar2(30), --����
Empno number(5),  --���
Deptno number(5), --���ڲ���
Job varchar2(20), --����(��Ա���)���磺manager ����clerk ����Ա
Hiredate Date, --��Ӷ����
Comm number(7,2),  --Ӷ��
Sal  number(7,2) , --н��
Mgr number(5)  --���
);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('����', 1, 10, '����Ա', null, 500, 2000, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('����', 2, 10, '����Ա', null, 650, 2333, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('����', 3, 20, '����Ա', null, 1650, 1221, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('С��', 4, 20, '����', null, 980, 3200, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('С��', 5, 10, '����Ա', null, 500, 2000, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('����', 6, 10, '����Ա', null, 890, 4321, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('����', 7, 40, '����Ա', null, 2350, 2200, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('����', 8, 20, '����', null, 1110, 1223, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('����', 9, 60, '����Ա', null, 500, 2311, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('С��', 10, 10, '����Ա', null, 300, 123, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('����', 11, 20, '����Ա', null, 4500, 2200, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('С��', 12, 80, '����', null, 385, 5000, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('˼˼', 13, 10, '����Ա', null, 467, 2000, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('���ƽ', 14, 30, '����Ա', null, 789, 4332, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('����', 15, 20, '����Ա', null, 321, 121, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('���', 16, 50, '����', null, 2212, 3200, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('����', 17, 10, '����Ա', null, 1432, 1233, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('���', 18, 50, '����Ա', null, 1112, 2200, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('��С', 19, 20, '����Ա', null, 1231, 12312, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('����', 20, 60, '����', null, 785, 3200, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('����', 21, 10, '����Ա', null, 333, 4355, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('���', 22, 70, '����Ա', null, 2345, 323, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('ʯ��', 23, 30, '����Ա', null, 121, 2200, null);
insert into EMP (ENAME, EMPNO, DEPTNO, JOB, HIREDATE, COMM, SAL, MGR)
values ('˼��', 24, 20, '����', null, 1221, 23443, null);
commit;
create table dept --���ű�
(
Dname varchar2(30),  --������
Deptno number(5), --���ź�
Loc varchar2(50)  -- ����λ��
);
insert into DEPT (DNAME, DEPTNO, LOC)
values ('�г���', 10, '����');
insert into DEPT (DNAME, DEPTNO, LOC)
values ('�з���', 20, '����');
insert into DEPT (DNAME, DEPTNO, LOC)
values ('���²�', 30, '����');
insert into DEPT (DNAME, DEPTNO, LOC)
values ('���²�', 40, '����');
insert into DEPT (DNAME, DEPTNO, LOC)
values ('�з���', 50, '����');
insert into DEPT (DNAME, DEPTNO, LOC)
values ('������', 60, '�Ϻ�');
insert into DEPT (DNAME, DEPTNO, LOC)
values ('�з���', 70, '��ɳ');
insert into DEPT (DNAME, DEPTNO, LOC)
values ('����', 80, '�人');
insert into DEPT (DNAME, DEPTNO, LOC)
values ('�з���', 90, '֣��');
commit;


   
     
        1���г�������һ����Ա�����в���
        select d.dname
        from emp e
        join dept d
        on e.deptno = d.deptno
        group by d.dname;
        
        2���г�н���"SMITH"������й�Ա
        select *
        from emp e
        where e.sal >
        (select sal from emp where ename = 'SMITH');
        
        3���г����й�Ա����������ֱ���ϼ�������
        select e.ename,e1.ename ֱ���ϼ�
        from emp e
        join emp e1 
        on e.mgr = e1.empno;
        
����4���г���ְ����������ֱ���ϼ������й�Ա
        select e.*
        from emp e
        join (
             select *
             from emp
        ) e1 on e.mgr = e1.empno
        where e.hiredate < e1.hiredate;
        
����5���г��������ƺ���Щ���ŵĹ�Ա,ͬʱ�г���Щû�й�Ա�Ĳ���
        select d.deptno,d.dname,e.ename
        from emp e
        right join dept d
        on e.deptno = d.deptno;
        
����6���г����С�CLERK��������Ա�����������䲿������
        select e.ename,d.dname
        from emp e
        join dept d
        on e.deptno = d.deptno
        where e.job = '����Ա';
        
����7���г����ֹ����������н����ʾ���н�����1500�ļ�¼
        select e.job, min(e.sal) ���н��
        from emp e
        group by e.job
        having min(e.sal) > 1500;
        
����8���г����¡�SALES�������ۣ������Ĺ�Ա���������䲿������
        select e.ename,d.dname
        from emp e
        join dept d
        on e.deptno = d.deptno
        where e.job = 'SALES';
        
����9���г�н����ڹ�˾ƽ��ˮƽ�����й�Ա
        select *
        from emp e
        where e.sal > (select avg(sal) from emp);
        
����10���г��롰SCOTT��������ͬ���������й�Ա
        select *
        from emp e
        where e.job in
        (select job from emp where ename = 'scott')
        and e.deptno in
        (select deptno from emp where ename = 'scott');
        
����11���г�ĳЩ��Ա��������н�����������ǵ�н����ڲ���30��
          �κ�һ����Ա��н��
          select e.ename,e.sal
          from emp e
          where e.sal in (
          select sal from emp where deptno = 30
          );
          
����12���г�ĳЩ��Ա��������н�����������ǵ�н����ڲ���30�����й�Ա��н��
          select e.ename,e.sal
          from emp e
          where e.sal > (
          select max(sal) from emp where deptno = 30
          );
          
����13���г�ÿ�����ŵ���Ϣ�Լ��ò����й�Ա������
          select d.*,e.Ա������
          from dept d
          left join
          (
          select deptno,count(1) Ա������
          from emp
          group by deptno
          ) e
          on e.deptno = d.deptno
          order by e.deptno;
          
����14���г����й�Ա�Ĺ�Ա���ơ��������ƺ�н��
          select e.ename,d.dname,e.sal
          from emp e
          join dept d
          on e.deptno = d.deptno;
          
        15���г�����ͬһ�ֹ��������ڲ�ͬ���ŵĹ�Ա�Ĳ�ͬ���
        select e.ename,e1.ename
        from emp e
        join emp e1
        on e.job=e1.job and e.deptno<>e1.deptno;
        
        16���г������й�Ա���������в��ŵ���ϸ��Ϣ����ʹ�Ƿ�����0����Ա
         select d.*,e.Ա������
          from dept d
          left join
          (
          select deptno,count(1) Ա������
          from emp
          group by deptno
          ) e
          on e.deptno = d.deptno
          order by e.deptno;
          
����17���г��������������͹���
          select e.job,min(e.sal) ��͹���
          from emp e
          group by  e.job;
          
����18���г��������ŵ�MANAGER�����������н��
          select d.dname,min(e.sal) ���н��
          from emp e
          join dept d
          on e.deptno = d.deptno
          where e.job = '����'
          group by d.dname;
          
����19���г�����н��������й�Ա����н
          select e.*,e.sal*12 ��н
          from emp e
          order by e.sal;
          
����20���г�н��ˮƽ���ڵ���λ�Ĺ�Ա
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
