PL/SQL��̣�����������ṹ����ѯ���ԣ�SQL����϶���

�﷨��
  declare
    ��������
   begin
    ִ�д���
    �쳣����
   end


����1����ӡhello corcle   
    declare
    begin
    dbms_output.put_line('hello oracle');
    end;

    begin 
            --ע��
            --1.���û�б���������decalare��ʡ��
            --2.begin��end֮������д���
           null;
    end:


����2���������������a��b����a��b�ĺͣ�����ӡ

       declare
           --int a;
           --int b;
           v_a number(5) := 1;
           v_b number(5) := 2;
           v_c number(5);
       begin
           v_c := v_a + v_b;
           dbms_output.put_line('a+b='||v_c);
       end;
       --��ֵҪ�� : =


��̬��ֵ��&
       declare
           --int a;
           --int b;
           v_a number(5) :=&������a��ֵ;
           v_b number(5) :=&������b��ֵ;
           v_c number(5);
           v_d varchar2(20) :='&�������ַ���';    --�����ַ�����Ҫ�õ�����������
       begin                        
           v_c := v_a + v_b;
           dbms_output.put_line('a+b='||v_c);
           dbms_output.put_line('d:'||v_d);
       end;
       
       
��ȡsid=1��ѧ��������������ӡ����
--into �ؼ���

    declare
        v_sid number(5):= 1;
        v_name varchar2(20);
    begin--��PL/SQL���е�select����б���ʹ��into���ܸ�ֵ
        select sname into v_name from t_student where sid = v_sid;
        dbms_output.put_line(v_name);
    end;
    --����ж���ֶ���Ҫ��ѯ��ֵ����into��������г���Ҫ��ѯ���ֶΣ���into���Ҳ�һһ��Ӧ��Ҫ���ܵı�������
    --����������ʱ���������������͵Ĵ�С�������
    
    
������
%type--�ֶΣ����ԣ�����

    declare
        v_sid number(30):= 1;
        v_name t_student.sname%type;
    begin
        select sname into v_name from t_student where sid = v_sid;
        dbms_output.put_line(v_name);
    end;


��������ѯ��sid = 1 ��ѧ����������Ϣ��
%rowtype--������

    declare
        v_sname t_student.sname%type;
        v_sage t_student.sage%type;
        v_ssex t_student.ssex%type;
        v_saddress t_student.saddress%type;
        v_stu t_student%rowtype;
    begin
        select * into  v_stu from t_student where sid = 1;
        dbms_output.put_line(v_stu.sname||'-------'||v_stu.sage||'-------'||v_stu.ssex||'-------'||v_stu.saddress);
    end;
