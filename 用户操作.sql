--用户操作

--1.管理员登录连接
conn / as sysdba;

--2.创建用户
create user 用户名 identified by 密码;   --密码建议第一位用字母，数字的话需要用双引号括起来

--3.授权
grant connect,resource to 用户名;

--4.用户登录
conn 用户名/密码;

--撤销权限
revoke connect,resource from 用户名;
