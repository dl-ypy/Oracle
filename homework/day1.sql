create user j1706 identified by j1706;
grant connect,resource to j1706;

--创建表
create table t_food(
       id number(3) primary key,
       name varchar2(20) not null,
       company varchar2(30) not null,
       price number(5,2),
       produce_time date,
       validity_time number(3),
       address varchar2(50)
);

--注释
comment on column t_food.id is '编号';
comment on column t_food.name is '食品公司';
comment on column t_food.company is '生产厂商';
comment on column t_food.price is '价格(单位:圆)';
comment on column t_food.produce_time is '生产年份';
comment on column t_food.validity_time is '保质期(单位:年)';
comment on column t_food.address is '厂址';

--添加字段
alter table t_food add contract varchar2(10);
comment on column t_food.contract is '联系人';

--修改字段类型
alter table t_food modify validity_time varchar2(20);

--修改字段名字
alter table t_food rename column validity_time to validity;

--删除字段
alter table t_food drop column produce_time;
