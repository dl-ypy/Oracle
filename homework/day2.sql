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

    1��ѡ����30�еĹ�Ա 
    select * from emp where deptno = 30;
    
��2���г����а���Ա����������źͲ���
    select e.ename ����,e.empno ���,d.dname ����
    from emp e
    join dept d on e.deptno = d.deptno
    where e.job = '����Ա'; 
    
��3���ҳ�Ӷ�����н��Ĺ�Ա
    select * from emp where sal < comm;
    
��4���ҳ�Ӷ�����н��60%�Ĺ�Ա
    select * from emp where (comm-sal)/sal > 0.6;
    
��5���ҳ�����10�����о���Ͳ���20�е����а���Ա����ϸ����
    select * 
    from emp
    where deptno = 10 and job = '����' or deptno = 20 and job = '����Ա'
    
��6���ҳ�����10�����о�������20�����а���Ա���Ȳ��Ǿ����ֲ��ǰ���Ա��н��>=
    2000�����й�Ա����ϸ���ϡ�
    select * 
    from emp
    where (deptno = 10 and job = '����') 
    or (deptno = 20 and job = '����Ա')
    or (job != '����' and job != '����Ա' and sal >= 2000);
    
��7���ҳ���ȡӶ��Ĺ�Ա�Ĳ�ͬ����
    select job
    from emp
    where comm > 0
    group by job;   

��8���ҳ�����ȡӶ�����ȡ��Ӷ�����100�Ĺ�Ա
    select * 
    from emp
    where comm is null or comm < 100;

��9���ҳ��������һ���ܹ͵����й�Ա
    select *
    from emp e
    where last_day(e.hiredate) = e.hiredate;
    
��10���ҳ�����25��֮ǰ�ܹ͵Ĺ�Ա
    select * 
    from emp e
    where (extract(year from sysdate)-extract(year from e.hiredate)) > 25;
    
��11����ʾֻ������ĸ��д�����й�Ա������  --��ascii()����ʾASCII��
    select e.ename
    from emp e
    where substr(e.ename,0,1) between 'A' and 'Z';
    
��12����ʾ����Ϊ2���ַ��Ĺ�Ա����
    select e.ename
    from emp e
    where e.ename like '__';
    
��13����ʾ������'R'�Ĺ�Ա����
     select e.ename
    from emp e
    where e.ename not like '%R%';
    
��14����ʾ���й�Ա��������ǰ�����ַ�
    select substr(e.ename, 0,3) ����ǰ�����ַ�
    from emp e;
��
    15����ʾ���й�Ա����������a�滻����'A'  -- translate(����1������2������3) ����   ���ַ���������1 �е��ַ���������2  �滻Ϊ �ַ���������3
��select case when (e.ename like '%A%') then translate(e.ename,'A','a') else e.ename end ����
    from emp e;
    
    16����ʾ���й�Ա�������Լ���10��������޵�����
    select e.ename, case when (extract(year from sysdate)-extract(year from e.hiredate))>=10 then e.hiredate end
    from emp e; 
    
��17����ʾ��Ա����ϸ���ϣ�����������
    select *
    from emp e
    order by e.ename;
    
��18����ʾ��Ա������������������ޣ������ϵĹ�Ա������ǰ��
    select e.*, (extract(year from sysdate)-extract(year from e.hiredate)) ��������
    from emp e
    order by �������� desc;
    
��19����ʾ���й�Ա��������������н�𣬰������Ľ���˳�����򣬶�������ͬʱ��н������
    select e.ename,e.job,e.sal
    from emp e
    order by e.job desc,e.sal;
    
��20����ʾ���й�Ա�������ͼ��빫˾����ݺ��·ݣ�����Ա�ܹ������������򣬽�������ݵ���Ŀ������ǰ��
    select e.ename,extract(year from e.hiredate) ���, extract(month from e.hiredate) �·�
    from emp e
    order by ���,�·�;
��
    21����ʾ��һ����Ϊ30�����������й�Ա����н��
    select e.*, (e.sal/360) ��н��
    from emp e;
    
��22���ҳ��ڣ��κ���ݵģ�2����Ƹ�����й�Ա
    select e.ename, extract(month from e.hiredate) �·�
    from emp e 
    where extract(month from e.hiredate) = 2;
    
��23������ÿ����Ա����ʾ����빫˾������   --to_number()ת��Ϊ����    round() ��������
    select e.*, round(to_number(sysdate-e.hiredate)) ����
    from emp e;
��
    24����ʾ�����ֶε��κ�λ�ã����� "A" �����й�Ա������
��select e.ename
    from emp e
    where e.ename like '%A%';
    
    25�����ꡢ�º�����ʾ���й�Ա�ķ�������    --months_between() ���¼���ʱ���
    select e.*,(extract(year from sysdate)-extract(year from e.hiredate)) ��, months_between(sysdate, e.hiredate) ��, round(to_number(sysdate-e.hiredate)) ��
    from emp e; 
