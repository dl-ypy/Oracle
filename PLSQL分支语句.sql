��֧���

--if ���
if    ����   then...else ...end if

�ж�ѧ�����е�ѧ�����Ա�
    declare 
           v_ssex t_student.ssex%type;
    begin
        select ssex into v_ssex from t_student where sid =1;
        if v_ssex =1 
        then
              dbms_output.put_line('����'); 
        elsif v_ssex =2
        then 
              dbms_output.put_line('Ů��'); 
        else 
              dbms_output.put_line('����'); 
        end if;
            dbms_output.put_line('�������'); 
    end;


--case ���
�﷨��
case when  ���� then .. when ����...else ...end case;
--�ж�student����sid Ϊ1 ��ѧ��������

    declare
         v_sage t_student.sage%type;
    begin
        select sage into v_sage from t_student where sid = 1;
        case when v_sage<18 then dbms_output.put_line('δ����'); 
             when v_sage=18 then dbms_output.put_line('�ոճ���'); 
             else  dbms_output.put_line('������'); 
        end case;
    end;

    declare
        v_sage t_student.sage%type;
    begin
        select sage into v_sage from t_student where sid = 1;
        case v_sage
             when 17 then dbms_output.put_line('δ����'); 
             when 19 then dbms_output.put_line('�ոճ���'); 
             else  dbms_output.put_line('������'); 
        end case;
    end;


--ѭ����

loop
    exit when �˳�ѭ��������
end loop��

--��дexit when ��������ѭ��
    declare 
        v_i number(5);
    begin
        v_i := 1;
        loop
            dbms_output.put_line(v_i);
            exit when v_i>9;  --�����������˳�
            v_i :=v_i+1;
        end loop; 
    end;


--while ѭ��

    declare 
        v_i number(5);
    begin
        v_i := 1;
        while v_i<10  --����������ѭ��
             loop
                 dbms_output.put_line(v_i);
                 v_i :=v_i+1;
        end loop;
    end;


--for ѭ��
    begin
    for v_i in 1..10 loop
         dbms_output.put_line(v_i);
    end loop;
    end;

















