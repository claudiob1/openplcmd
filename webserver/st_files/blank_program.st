PROGRAM plc
  VAR
    e1 AT %IX0.0 : BOOL := FALSE;
    e2 AT %IX0.1 : BOOL := FALSE;
    e3 AT %IW10 : INT := 2;
    e4 AT %QW10 : INT := 0;
    e5 AT %QW11 : INT := 11110;
  END_VAR
 
  IF e1 THEN
   e1 := FALSE;
  ELSE
   e1 := TRUE;
  END_IF;
 
END_PROGRAM
 
 
CONFIGURATION Config0
 
  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : plc;
  END_RESOURCE
END_CONFIGURATION