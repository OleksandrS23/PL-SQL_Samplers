CREATE OR REPLACE TYPE RECTANGLE AS OBJECT 
(LENGTH NUMBER, 
 WIDTH NUMBER, 
 MEMBER FUNCTION ENLARGE( INC NUMBER) RETURN RECTANGLE, 
 MEMBER PROCEDURE DISPLAY, 
 MAP MEMBER FUNCTION MEASURE RETURN NUMBER 
);