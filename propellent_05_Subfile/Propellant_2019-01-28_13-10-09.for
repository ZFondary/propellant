      SUBROUTINE HETVAL(CMNAME, TEMP, TIME, DTIME, STATEV, FLUX, PREDEF, 
     1                  DPRED) 
      INCLUDE'ABA_PARAM.INC' 
      CHARACTER*80CMNAME 
      DIMENSIONTEMP(2),STATEV(3),PREDEF(1),TIME(2),FLUX(2), 
     1DPRED(1) 

      IF(STATEV(1).EQ.0)THEN 
      STATEV(1)=1.E-4 
      ELSEIF(TEMP(1).LT.303.)THEN 
      STATEV(2)=0.0 
      ELSE 
      STATEV(2)=0
      STATEV(1)=STATEV(1)+STATEV(2)*DTIME 
      ENDIF 
      FLUX(1)=242971740.0*STATEV(2) 
      RETURN 
	  END
   
      SUBROUTINE USDFLD(FIELD,STATEV,PNEWDT,DIRECT,T,CELENT,
     1 TIME,DTIME,CMNAME,ORNAME,NFIELD,NSTATV,NOEL,NPT,LAYER,
     2 KSPT,KSTEP,KINC,NDI,NSHR,COORD,JMAC,JMATYP,MATLAYO,LACCFLA)
      
      INCLUDE 'ABA_PARAM.INC'
      
      CHARACTER*80 CMNAME,ORNAME
      CHARACTER*3  FLGRAY(15)
      DIMENSION FIELD(NFIELD),STATEV(NSTATV),DIRECT(3,3),
     1 T(3,3),TIME(2)
      DIMENSION ARRAY(15),JARRAY(15),JMAC(*),JMATYP(*),COORD(*)
      if(kinc.eq.1)then
          statev(1)=1e-4
      else
      endif
      field(1)=statev(1)
      RETURN
      END
      
      SUBROUTINE FILM(H,SINK,TEMP,KSTEP,KINC,TIME,NOEL,NPT,
     1 COORDS,JLTYP,FIELD,NFIELD,SNAME,NODE,AREA)
C
      INCLUDE 'ABA_PARAM.INC'
C
      DIMENSION H(2),TIME(2),COORDS(3), FIELD(NFIELD)
      CHARACTER*80 SNAME
      H(1)=15.
      IF(TIME(2).LE.20)THEN

          SINK=297+TIME(2)*-4

      ELSEIF(TIME(2).LE.740)THEN

          SINK=232+TIME(2)*0

      ELSEIF(TIME(2).LE.741)THEN

          SINK=232+TIME(2)*90

      ELSEIF(TIME(2).LE.1460)THEN

          SINK=322+TIME(2)*0

      ELSEIF(TIME(2).LE.1461)THEN

          SINK=322+TIME(2)*-25

      ELSEIF(TIME(2).LE.1470)THEN

          SINK=297+TIME(2)*0

CFILMstart
      endif

      RETURN
      END
      
      SUBROUTINE DISP(U,KSTEP,KINC,TIME,NODE,NOEL, JDOF,COORDS) 
      INCLUDE'ABA_PARAM.INC' 
      DIMENSIONU(3),TIME(2),COORDS(3) 
      IF(TIME(2).LE.20)THEN

          U(1)=297+TIME(2)*-4

      ELSEIF(TIME(2).LE.740)THEN

          U(1)=232+TIME(2)*0

      ELSEIF(TIME(2).LE.741)THEN

          U(1)=232+TIME(2)*90

      ELSEIF(TIME(2).LE.1460)THEN

          U(1)=322+TIME(2)*0

      ELSEIF(TIME(2).LE.1461)THEN

          U(1)=322+TIME(2)*-25

      ELSEIF(TIME(2).LE.1470)THEN

          U(1)=297+TIME(2)*0

      IF(TIME(2).LE.20)THEN

          U(1)=297+TIME(2)*-4

      ELSEIF(TIME(2).LE.740)THEN

          U(1)=232+TIME(2)*0

      ELSEIF(TIME(2).LE.741)THEN

          U(1)=232+TIME(2)*90

      ELSEIF(TIME(2).LE.1460)THEN

          U(1)=322+TIME(2)*0

      ELSEIF(TIME(2).LE.1461)THEN

          U(1)=322+TIME(2)*-25

      ELSEIF(TIME(2).LE.1470)THEN

          U(1)=297+TIME(2)*0

cDISPstart
      ENDIF 
      RETURN 
      END
