--�û�����

--1.����Ա��¼����
conn / as sysdba;

--2.�����û�
create user �û��� identified by ����;   --���뽨���һλ����ĸ�����ֵĻ���Ҫ��˫����������

--3.��Ȩ
grant connect,resource to �û���;

--4.�û���¼
conn �û���/����;

--����Ȩ��
revoke connect,resource from �û���;
