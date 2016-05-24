/*  */
{wfdebug.i "%%SHORTFILE%%"}
{wfcommon.i}


DEF INPUT-OUTPUT PARAM TABLE FOR wfglobal.

DEF VAR w-tab-list AS CHAR NO-UNDO.
DEF VAR w-hide-list AS CHAR NO-UNDO.


FIND FIRST client NO-LOCK.

RUN tabSecurity(OUTPUT w-tab-list, OUTPUT w-hide-list).
IF w-tab-list = ''
THEN
DO:
   RUN sendErrorBox("** Access Denied **").
   RETURN.
END.

RUN initialize.


%%SHORTFILE%%loop:
REPEAT:
   CASE getWFGlobal("%%SHORTFILE%%curtab"):
   WHEN "1"
   THEN
   DO:
      RUN tabprog1.p (INPUT-OUTPUT TABLE wfglobal).
      setWFGlobal("%%SHORTFILE%%lasttab", '1').
   END.

   WHEN "2"
   THEN
   DO:
      RUN tabprog2.p (INPUT-OUTPUT TABLE wfglobal).
      setWFGlobal("%%SHORTFILE%%lasttab", '2').
   END.

   WHEN "0"
   THEN
   DO:
      setWFGlobal("%%SHORTFILE%%intab", '').
      closeTopForm(w-datafile).
      LEAVE %%SHORTFILE%%loop.
   END.
   END CASE.
END.


/* {{{ tabSecurity(OUTPUT CHAR, OUTPUT CHAR) */
PROCEDURE tabSecurity:
   DEF OUTPUT PARAM w-tab-list AS CHAR NO-UNDO.
   DEF OUTPUT PARAM w-hide-list AS CHAR NO-UNDO.

   DEF VAR w-tab-dats AS CHAR NO-UNDO INIT ".DAT,.DAT".
   DEF VAR w-prefix AS CHAR NO-UNDO INIT "(@HTAB2,%%SHORTFILE%%tabs,".
   DEF VAR ii AS INT NO-UNDO.

   DO ii = 1 TO NUM-ENTRIES(w-tab-dats):
      IF hasSecurity(s-user-id, "%%SHORTSYS%%", ENTRY(ii, w-tab-dats), 'R')
      THEN
         w-tab-list = w-tab-list + ',' + STRING(ii).
      ELSE
         w-hide-list = w-hide-list + w-prefix + STRING(ii) + "@)".
   END.

   w-tab-list = LEFT-TRIM(',', w-tab-list).
END PROCEDURE. /* tabSecurity }}} */


/* {{{ initialize */
PROCEDURE initialize:
   displayForm(w-datafile, "%%DATFILE%%").

   UNIX SILENT VALUE(SUBSTITUTE('wfsendme "&1"', w-hide-list)).

   setWFGlobal("%%SHORTFILE%%tablist", w-tab-list).
   IF getWFGlobal("%%SHORTFILE%%lasttab") = ''
   THEN
      setWFGlobal("%%SHORTFILE%%curtab", ENTRY(1, w-tab-list)).
   ELSE
      setWFGlobal("%%SHORTFILE%%curtab", getWFGlobal("%%SHORTFILE%%lasttab")).
   setWFGlobal("%%SHORTFILE%%intab", "true").
END PROCEDURE. /* initialize }}} */
