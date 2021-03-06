DECLARE
 TYPE EMPLOYEES_TABLE_TYPE IS TABLE OF EMPLOYEES%ROWTYPE;
 EMPLOYEES_TABLE EMPLOYEES_TABLE_TYPE :=EMPLOYEES_TABLE_TYPE();
BEGIN
  SELECT *
    BULK COLLECT INTO EMPLOYEES_TABLE 
  FROM EMPLOYEES;
  FOR I IN EMPLOYEES_TABLE.FIRST..EMPEMPLOYEES_TABLE.LAST
  LOOP
    DBMS_OUTPUT.PUT_LINE(EMPEMPLOYEES_TABLE(I).EMPLOYEES_ID || ' - ' || 
                        EMPLOYEES_TABLE(I).FIRST_NAME || ' - ' || 
                        EMPLOYEES_TABLE(I).LAST_NAME || ' - ' ||
                        EMPLOYEES_TABLE(I).PHONE_NUMBER || ' - ' ||
                        EMPLOYEES_TABLE(I).JOB_ID || ' - ' ||
                         TO_CHAR(EMPEMPLOYEES_TABLE(I).SALARY,'99G999G999D99'));   
  END LOOP;
END;