//****************************************************************************
//* Copyright 2020 IBM Corp. All Rights Reserved.
//*
//*  Licensed under the Apache License, Version 2.0 (the "License");
//*  you may not use this file except in compliance with the License.
//*  You may obtain a copy of the License at
//*
//*       http://www.apache.org/licenses/LICENSE-2.0
//*
//*   Unless required by applicable law or agreed to in writing, software
//*   distributed under the License is distributed on an "AS IS" BASIS,
//*   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//*   See the License for the specific language governing permissions and
//*   limitations under the License.
//****************************************************************************
//COBOLBN  JOB REGION=0M,MSGCLASS=1,NOTIFY=&SYSUID,JOBRC=LASTRC
//***********************************************************
//* EXIST checks if ZG2.EXEC exists
//* Perform CLEAN only if it exists
//EXIST EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *,SYMBOLS=EXECSYS
 LISTC ENT('&SYSUID..ZG2.EXEC')
/*
//STEPIF IF RC = 0 THEN
//CLEAN EXEC PGM=IEFBR14
//OLDDS  DD DSN=&SYSUID..ZG2.EXEC,DISP=(SHR,DELETE)
//ENDIF ENDIF
//***********************************************************
//BIND    EXEC PGM=IEWBLINK
//SYSLIB   DD DSN=CEE.SCEELKED,DISP=SHR
//SYSPRINT DD    SYSOUT=A
//SYSLIN   DD DSN=&SYSUID..ZG2.OBJ,DISP=SHR
//SYSLMOD  DD DSN=&SYSUID..ZG2.EXEC(FXSORT),DISP=(NEW,KEEP),
//   SPACE=(CYL,(10,10,1)),DSNTYPE=LIBRARY
