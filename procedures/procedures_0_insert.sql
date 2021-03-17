CREATE OR REPLACE PROCEDURE PRC_INSERE_EMPREGADO
  (PFIRST_NAME    IN VARCHAR2,
   PLAST_NAME     IN VARCHAR2)
IS 
BEGIN
  INSERT INTO EMPLOYEES (
    EMPLOYEE_ID,
    FIRST_NAME,
    LAST_NAME)
  VALUES (
    EMPLOYEES_SEQ.NEXTVAL,
    PFIRST_NAME,
    PLAST_NAME);
EXCEPTION
  WHEN OTHERS THEN
     RAISE_APPLICATION_ERROR(-20001, 'Erro Oracle ' || SQLCODE || SQLERRM);
END;

BEGIN
  PRC_INSERE_EMPREGADO('David', 'Bowie');
  COMMIT;
END;