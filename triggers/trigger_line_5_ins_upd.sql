CREATE OR REPLACE TRIGGER B_IU_VALIDATE_SALARY_EMPLOYEES_R_TRG
BEFORE INSERT OR UPDATE OF SALARY
ON  EMPLOYEES
FOR EACH ROW
DECLARE
BEGIN
  IF  :NEW.SALARY  > PCK_EMPLOYEES_DADOS.GMAXSALARY(1) * 1.2
  THEN  
      RAISE_APPLICATION_ERROR(-20001, 'Novo salario não pode ser superior ao maior salario + 20%');
  END IF;
END;