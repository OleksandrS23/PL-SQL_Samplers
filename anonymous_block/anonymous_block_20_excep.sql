ACCEPT  PEMPLOYEE_ID PROMPT 'Employee ID:'
DECLARE
  VFIRST_NAME   EMPLOYEES.FIRST_NAME%TYPE;
  VLAST_NAME    EMPLOYEES.LAST_NAME%TYPE;
  VEMPLOYEE_ID  EMPLOYEES.EMPLOYEE_ID%TYPE := &PEMPLOYEE_ID;
BEGIN
  SELECT FIRST_NAME, LAST_NAME
  INTO   VFIRST_NAME, VLAST_NAME
  FROM   EMPLOYEES
  WHERE  EMPLOYEE_ID = VEMPLOYEE_ID;

  DBMS_OUTPUT.PUT_LINE('EMPLOYEE: ' || VFIRST_NAME || ' ' || VLAST_NAME);
 
EXCEPTION
  WHEN NO_DATA_FOUND 
  THEN
     RAISE_APPLICATION_ERROR(-20001, 'EMPLOYEE NOT FOUND, ID = ' || 
     TO_CHAR(VEMPLOYEE_ID));
  WHEN OTHERS 
  THEN
     RAISE_APPLICATION_ERROR(-20002, 'ORACLE ERROR - ' || SQLCODE || SQLERRM);

END;
