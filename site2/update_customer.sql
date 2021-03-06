SET SERVEROUTPUT ON;
SET VERIFY OFF;
DECLARE    
    choice NUMBER;
    field_name varchar2(10);
    
    cid customer.cus_id%TYPE:=&cid;
    cname customer.cus_name%TYPE;
    ccity customer.city%TYPE;
    cadd customer.address%TYPE;
    
    A NUMBER;
    B NUMBER;
    
    x varchar2(1);
BEGIN 
    choice:=&choice;
    
    IF choice=1 THEN
    	cname:=&cname;
        update_customer(choice,cid,cname,x,x);
    
    ELSIF choice=3 THEN
        cadd:=&cadd;
        update_customer(choice,cid,x,x,cadd);
        
    ELSIF choice=2 THEN
        ccity:=&ccity;
        update_customer(choice,cid,x,ccity,x);
        
    ELSIF choice=4 THEN
        del_customer(cid);
    END IF;
    --SELECT cus_name,city,address INTO B,C,D FROM customer WHERE cus_id=cid;
		
    --DBMS_OUTPUT.PUT_LINE(field_name||' '||cname);
END;
/

SELECT * FROM customer;

--SELECT cus_name,city,address FROM customer@dhaka;
