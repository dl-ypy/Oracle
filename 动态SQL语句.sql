--��̬SQL���
EXECUTE IMMEDIATE DYNAMIC_SQL_STRING
[INTO DEFINE_VARIABLEE_LIST]    --�������������
[USING BIND_ARGUMENT_LIST];   --ʹ�ò���

v_sql varchar(100):='select * from t_student';
--��һ�������洢��SQL���ʱ��������Ҫִ�����SQL��䣬�������ö�̬SQL������������SQL����ַ�����Ȼ����ִ�С�

declare 
      v_sql_string varchar(100);
      v_sname t_student.sname%type;
      v_sid t_student.sid%type:=2;
      v_sage t_student.sage%type:=19;
begin
      v_sql_string:= 'select sname from t_student where sid=:a and sage =:b';
      --dbms_output.put_line(v_sql_string);
      execute immediate v_sql_string into v_sname using v_sid,v_sage;
      dbms_output.put_line('��ѯ���:'||v_sname);
end;
--�������ʱ����֤˳��һ��


