BEGIN
  FOR EMPLOYEES_RECORD IN  (SELECT  *
                            FROM    EMPLOYEES)
  LOOP
    DBMS_OUTPUT.PUT_LINE(EMPLOYEES_RECORD.EMPLOYEE_ID || ' - ' ||
                         EMPLOYEES_RECORD.FIRST_NAME || ' ' || 
                         EMPLOYEES_RECORD.LAST_NAME || ' - ' ||
                         EMPLOYEES_RECORD.DEPARTMENT_ID || ' - ' ||
                         EMPLOYEES_RECORD.JOB_ID || ' - ' ||
                         EMPLOYEES_RECORD.PHONE_NUMBER || ' - ' ||
                         LTRIM(TO_CHAR(EMPLOYEES_RECORD.SALARY, 'L99G999G999D99')));

  END LOOP;
END;