--���


create table t_student(
sid number(5) primary key,
sname varchar2(20),
ssex char(3),
sage number(3),
saddress varchar2(50),
sbirth date,
cid number(5)
);

create table t_class(
cid number(5),
cname varchar2(20)
);


--������ݣ�insert
--���в��룺
�﷨1�� insert  into ����(�ֶ�1,....,�ֶ�n) values(ֵ1,...,ֵn)
ע��:��������ŵ��ֶ��б�����Ǳ�ṹ�д��ڵ��ֶ�,values ������ŵ�ֵ�б�������ֶ��б�һһ��Ӧ��

����1����ѧ�������һ������
insert into t_student(sid,sname,ssex,sage,saddress)
values(2,'����','��',18,'�Ϻ�')

���е�DML����ִ�к���Ҫ�ύ���߻ع��ſ��Ըı����ݿ��е����ݡ�
����û���ύ����δ�ع�����Щ�����ǿ��Ժ�ڣ��޸ĵ����ݴ������ڴ��С�

--to_date():���ַ����͵�������ĳ�ָ�ʽת��Ϊ�������͵�����

--select sysdate, '2017-01-01', to_date(sysdate,'yyyy-mm-dd-HH-mi-ss') from dual;

insert into t_student(sid,sname,ssex,sage,saddress,sbirth)
values(4,'����','��',18,'�Ϻ�',to_date('2017-01-15','yyyy-mm-dd'));
--commit;     --�ύ
--rollback;     --����


�﷨����insert into ���� values(ֵ�б�);

insert into t_class values(1,'Java01��');
commit;
����﷨��Ҫ��Ա�����ֶαȽ��ٵ������ʡ���˱���������ֶ��б�
��ôֵ�б��Ĭ�ϸ�������е��ֶε�˳��һ�£����е��ֶζ�����������

insert into t_student(sid,sname,ssex,sage,saddress,sbirth)
values(4,'����','��',22,'����',to_date('2017-01-15','yyyy-mm-dd'));
commit; 
ÿһ�β������ݣ�ϵͳ�����Զ���������Ƿ�Ψһ��

--���У���Sequences���½��������þ�������������е������ġ�
�����淶��seq+����

select seq_t_student.nextval from dual;
select seq_t_student.currval from dual;

nextval ��ȡ���е���һ������
currval ��ȡ���еĵ�ǰ���֡�


--���в���

insert into t_student(sid,sname,ssex,sage,saddress,sbirth)
values(seq_t_student.nextval,'����','��',22,'����',to_date('2017-01-15','yyyy-mm-dd'));
commit; 


--���Ʊ����Ʊ�Ľṹ�ͱ������
�﷨�ṹ��
create table ���� as select * from ����;
���ӣ�    ������  * ��ʾƥ�����У�����ƥ����Ǳ�ṹ�е������ֶ����ơ�
create table t_student_copy as select * from t_student

ֻ���Ʊ�Ľṹ�������Ʊ��е�����
create table t_student_copy2  as select * from t_student where 1<>1;

select * from t_student where 1<>1;
���ǿ�����where��ѡ����Ҫ��Щ����

��һ�ű�����ݸ�ֵ����һ�ű�
insert into t_student_copy2 select * from t_student_copy;
ע�⣺��ѯ�����Ľ�������ֶ����ͺ����Ʊ���Ͳ���ı�Ľṹһ�¡�

insert into t_student_copy2(sid,sname)select sid,sname from  t_student_copy;
commit;
