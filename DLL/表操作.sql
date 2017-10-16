--�����

--������
create table t_student(
sid number(5),
sname varchar2(20),
ssex char(3),
sage number(3)
);


--����ɾ����
drop table t_student cascade constraint;


1���ڱ��������һ���ֶ�
alter table ���� add �ֶ����� ����(����);
alter table t_student add sbirthday date;

2���Ա���������ͽ����޸�
alter table ���� modify �ֶ����� ������(����)��
alter table t_student modify sbirthday varchar2(20);

3���Ա��е������ֶ����޸�
alter table ���� rename column ԭ���� to ���ֶ�����;
alter table t_student rename column sbirthday to sbirth;

4��ɾ�����е��ֶ�
alter table ���� drop column �ֶ���;
alter table t_student drop column sbirth;



--Լ����
--�޶��ǿ�(not null):������ĳ���ֶε�ֵΪ��ֵ(null),���ԶԶ���ֶ����÷ǿ�Լ����

create table t_student(
sid number(5) not null, 
sname varchar2(20) not null,
ssex varchar2(20),
sage number(3)
);  


--Ĭ��ֵ(default): �޶�ĳ���ֶε�ֵĬ������¸���һ��ָ����ֵ

create table t_student(
sid number(5) , 
sname varchar2(20),
ssex varchar2(20) default '��',
sage number(3) default 18
);  

ע�⣺����汾��oracle���ݿ⣬default�趨Ĭ��ֵֻ����ֵ������Ч��


--Ψһ��Լ��(unique)����֤���ݿ���е�����һ�е�ĳ���ֶλ���ĳһ���ֶ��������������Ψһ�ġ�


create table t_student(
sid number(5) unique, 
sname varchar2(20),
ssex varchar2(20) ,
sage number(3) ,

);  

--����ΨһԼ��
constraint  Լ���� unique (�ֶ���1���ֶ���2)

create table t_student(
sid number(5), 
sname varchar2(20),
ssex varchar2(20) ,
sage number(3) ,
constraint sid_name unique(sid,sname)
);  


create table t_student(
sid number(5) unique, 
sname varchar2(20) unique,
ssex varchar2(20) ,
sage number(3) ,

);  

Ψһ��Լ�������趨����ֶ�ΪΨһ��Լ������������ֵ������Ҳ�����������ֵ����߲�ѯ��Ч�ʡ�

--��������ɺ��趨Ψһ��Լ����
create table t_student(
sid number(5), 
sname varchar2(20),
ssex varchar2(20) ,
sage number(3)
);
alter table ����  add constraint Լ���� unique(�ֶ���)��

alter table t_student add constraint unique_sid unique(sid);


--����Լ����������ȷ��  ĳһ���ֶλ���ĳһ���ֶο���ȷ��ĳ����¼
--�������ʱ���趨������

create table t_student(
sid number(5) primary key , 
sname varchar2(20) ,
ssex varchar2(20) ,
sage number(3)
);

--������ɺ��趨������
alter table ���� add constraint Լ����ʶ�� primary key(�ֶ���);

alter table t_student add constraint pk_sid primary key(sid);

ע�⣺�����������ֵ������Ψһ��


--��������������ֶ���Ϊ����
alter table t_student add constraint pk_id_name primary key(sid,sname);


--���Լ����
�󲿷��������Ϊ�˹������ű��
--�������ʱ������������mysql��ͬ����sqlServer��ͬ��
constraint Լ���� foreign key(�ֶ�����) reference �����ı���(�������ֶ���)


create table t_class(
cid number(5) primary key ,
cname varchar2(20)                         ---�ӱ�
);


create table t_student(
sid number(5) , 
sname varchar2(20) ,                        ---����
ssex varchar2(20) ,
sage number(3),
cid number(5),
constraint fk_cid foreign key(cid) references t_class(cid)
);

ע��:��������ʱ������ֶα����Ǵӱ��������������Ӳ��ɹ���



--��������������
alter table ���� add constraint Լ���� foreign key(�ֶ���) references �ӱ���(�ֶ���);
alter table t_student add constraint pk_cid foreign key(cid) references t_class(cid);



���������������õ��Ǵӱ��е�����
����������һ�ű��е�������õ��Ǳ����е�����



cascade :����ɾ����ɾ���ӱ��е�����ʱ���������������ݵĶ�Ҫ��ɾ����
set null:�������������е�ֵ���ó�Ϊnull
no action:�����κβ�����


check Լ���� ���ĳ���ֶε�ֵ�÷�Χ�Ƿ����Ҫ��

create table t_student(
sid number(5) , 
sname varchar2(20) ,                        ---����
ssex varchar2(20) check(ssex not in('��','Ů','δ֪')) ,
--ssex varchar2(20) check(ssex in('��','Ů','δ֪')) ,
--ssex varchar2(20) check(ssex = '��'or ssex ='Ů' or ssex = 'δ֪') ,


sage number(3) check(sage!=0)
--sage number(3) check(sage!=0)
--sage number(3) check(sage<>0)
--sage number(3) check(sage between 18 and 20)
--sage number(3) check(sage not between 18 and 20)
--sage number(3) check(sage<18 or sage>20)
);







