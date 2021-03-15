CREATE OR REPLACE TRIGGER B_I_EMPLOYEES_R_TRG
BEFORE INSERT 
ON EMPLOYEES
FOR EACH ROW
BEGIN
  :NEW.EMAIL := UPPER(SUBSTR(:NEW.FIRST,1,1) || (:NEW.LAST_NAME));
END;