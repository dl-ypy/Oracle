--�쳣����
1��ϵͳԤ�����쳣
������

Exception when �쳣 
then ����ʽ
when �쳣
then����ʽ

    declare
        v_sid number(30);
        v_name varchar2(30);
        v_age number(5);
    begin
        select sname,sage into v_name,v_age from t_student ;
        dbms_output.put_line(v_name||'-------'||v_age);

        Exception when no_data_found then dbms_output.put_line('û���ҵ�����');
        when too_many_rows 
        then dbms_output.put_line('�ҵ�̫��������');
        when others 
        then  dbms_output.put_line('�������͵��쳣');
    end;



2���Զ����쳣
    declare 
          --1������һ��Exception���͵ı���
          myexception Exception;
          v_name varchar2(20) := '&������һ����Ϣ';
    begin
           if v_name ='abc'
           then       
                dbms_output.put_line('if�����....');
                --2���׳��쳣
                raise myexception;
           end if;
                dbms_output.put_line('��������....');
           --3�������쳣
           exception when myexception 
           then
           dbms_output.put_line('�Զ����쳣������....');
           when others
           then 
           dbms_output.put_line('�����쳣....');
    end;
