--�޸ģ�ɾ��

--�޸���䣨update����
update ���� set �ֶ���1=ֵ1,...,�ֶ���n = ֵn  where ����
�޸Ķ���ֶ��ǣ�ÿ���ֶ�֮����Ӣ�Ķ��Ÿ�����
���û��where �޸ĵ������е����ݡ�
����1������ѧ���������е����ݣ���ַ��Ϊ�ɶ���
update t_student set saddress = '�ɶ�'  ;
commit;
���޸���������ʱ��������ʾ�Ƿ�ɾ����������

����2������ѧ�����е�sidΪ3��ѧ���ĵ�ַΪ����
update t_student set saddress ='����' where sid = 3;
commit;

����3������ѧ������������18��23��ѧ����ַΪ�Ϻ�
update t_student set saddress ='�Ϻ�' where sage>=18 and sage<=23;
commit;
update t_student set saddress ='�Ϻ�' where sage between 18 and 23;

����4������ѧ������������16��26��ѧ����ַΪ����
update t_student set saddress = '����' where sage = 16 or sage = 26;--in(16,26)
commit;

����5������ѧ���������䲻Ϊ18��23��ѧ���ĵ�ַΪ���ݡ�
update t_student set saddress='����' where sage not in(18,23);  --sage !=18 and sage!=23
commit;

����6������ѧ����������Ϊ�յ�ѧ������Ϊ21.
update t_student set sage = 21 where sage is null;

update t_student set sage = 21 where sage=null;--�﷨û���޸Ĳ��ɹ�

update t_student set sage = 21 where sage='';--�﷨û��  �޸Ĳ��ɹ�

update t_student set sage = 21 where sage is not null;



--ɾ�����ݣ�
�﷨��delete from ���� where ����

delete from t_student where sid = 11;

--����ɾ������
truncate 
truncate  table ������   ����Ҫ�ύ      ��DDL����  Ҳû����ʾ�Ͱ���������ȫ��ɾ����

truncate table t_student_copy2;


--delete �� truncate ������
truncate��DDL���� û���ύ�ͻع���
delete ��DML���ԡ�����Ҫ�ύ�ͻع��ġ�����ʾ
delete ɾ�������ݱ������ڴ��У����Իָ��� 
truncateɾ��������ʱ�����Իָ��ġ�

truncateɾ������Ч�ʸ�
����Ҫɾ���������ݣ�truncateִ���ٶȱ�delete�졣









