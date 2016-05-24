/*  */
{wfdebug.i "%%SHORTFILE%%"}
{wfcommon.i}


DEF INPUT-OUTPUT PARAM TABLE FOR wfglobal.

DEF VAR w-data AS CHAR NO-UNDO FORMAT "x(4096)" VIEW-AS FILL-IN SIZE 70 BY 1.
DEF VAR w-func AS CHAR NO-UNDO.
DEF VAR w-func-data AS CHAR NO-UNDO.


IF NOT hasSecurity(s-user-id, "%%SHORTSYS%%", "%%DATFILE%%", 'R')
THEN
DO:
   RUN sendErrorBox("** Access Denied **").
   RETURN.
END.

FIND FIRST client NO-LOCK.
RUN initialize.


FORM w-data WITH FRAME w-data-frame WITH NO-BOX NO-LABELS NO-UNDERLINE.
%%SHORTFILE%%loop:
REPEAT:
   ASSIGN
      w-func = ''
      w-func-data = ''
      w-data = ''.
   IF ccc-timeoutmsg <> ''
   THEN
      LEAVE %%SHORTFILE%%loop.
   RUN wmf0417.p (INPUT 0, OUTPUT w-data).
   IF w-data = ''
   THEN
      NEXT %%SHORTFILE%%loop.
   RUN getFunction (INPUT w-data, INPUT-OUTPUT w-func, OUTPUT w-func-data).

   CASE w-func:
   WHEN "returntomm"
   THEN
   DO:
      ccc-timeoutmsg = "returntomm".
      NEXT %%SHORTFILE%%loop.
   END.
   WHEN "%%SHORTFILE%%exit" OR WHEN "formclose"
   THEN
   DO:
      closeTopForm(w-datafile).
      LEAVE %%SHORTFILE%%loop.
   END.
   END CASE.
END.


/* {{{ initialize */
PROCEDURE initialize:
   displayForm(w-datafile, "%%DATFILE%%").
   RUN sendPopup.
END PROCEDURE. /* }}} */


/* {{{ sendPopup */
PROCEDURE sendPopup:
   OUTPUT TO VALUE(w-gridfile).
   PUT UNFORMATTED "Exit^%%SHORTFILE%%exit" SKIP.
   OUTPUT CLOSE.
   UNIX SILENT VALUE(SUBSTITUTE("wfpopup &1", w-gridfile)).
END PROCEDURE. /* }}} */
