create user j1706 identified by j1706;
grant connect,resource to j1706;

--������
create table t_food(
       id number(3) primary key,
       name varchar2(20) not null,
       company varchar2(30) not null,
       price number(5,2),
       produce_time date,
       validity_time number(3),
       address varchar2(50)
);

--ע��
comment on column t_food.id is '���';
comment on column t_food.name is 'ʳƷ��˾';
comment on column t_food.company is '��������';
comment on column t_food.price is '�۸�(��λ:Բ)';
comment on column t_food.produce_time is '�������';
comment on column t_food.validity_time is '������(��λ:��)';
comment on column t_food.address is '��ַ';

--����ֶ�
alter table t_food add contract varchar2(10);
comment on column t_food.contract is '��ϵ��';

--�޸��ֶ�����
alter table t_food modify validity_time varchar2(20);

--�޸��ֶ�����
alter table t_food rename column validity_time to validity;

--ɾ���ֶ�
alter table t_food drop column produce_time;
