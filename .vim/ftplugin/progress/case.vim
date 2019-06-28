" this file defines progress keyword capitalization and common function camel-
" casing

setlocal iskeyword+=-
let s:autocap=0


" {{{ enable progress capitalization
function! Abbrev()
  if s:autocap
    return
  else
    let s:autocap=1
  endif

  " {{{ progress keyword capitalization
  inoreabbrev <silent> <buffer> _cbit _CBIT
  inoreabbrev <silent> <buffer> _control _CONTROL
  inoreabbrev <silent> <buffer> _dcm _DCM
  inoreabbrev <silent> <buffer> _list _LIST
  inoreabbrev <silent> <buffer> _memory _MEMORY
  inoreabbrev <silent> <buffer> _msg _MSG
  inoreabbrev <silent> <buffer> _pcontrol _PCONTROL
  inoreabbrev <silent> <buffer> _serial _SERIAL
  inoreabbrev <silent> <buffer> _serial-num _SERIAL-NUM
  inoreabbrev <silent> <buffer> _trace _TRACE
  inoreabbrev <silent> <buffer> abs ABS
  inoreabbrev <silent> <buffer> absolute ABSOLUTE
  inoreabbrev <silent> <buffer> accelerator ACCELERATOR
  inoreabbrev <silent> <buffer> accum ACCUM
  inoreabbrev <silent> <buffer> accumulate ACCUMULATE
  inoreabbrev <silent> <buffer> across ACROSS
  inoreabbrev <silent> <buffer> add ADD
  inoreabbrev <silent> <buffer> add-first ADD-FIRST
  inoreabbrev <silent> <buffer> add-last ADD-LAST
  inoreabbrev <silent> <buffer> advise ADVISE
  inoreabbrev <silent> <buffer> alias ALIAS
  inoreabbrev <silent> <buffer> all ALL
  inoreabbrev <silent> <buffer> allow-replication ALLOW-REPLICATION
  inoreabbrev <silent> <buffer> alter ALTER
  inoreabbrev <silent> <buffer> ambig AMBIG
  inoreabbrev <silent> <buffer> ambiguous AMBIGUOUS
  inoreabbrev <silent> <buffer> analyze ANALYZE
  inoreabbrev <silent> <buffer> and AND
  inoreabbrev <silent> <buffer> any ANY
  inoreabbrev <silent> <buffer> anywhere ANYWHERE
  inoreabbrev <silent> <buffer> append APPEND
  inoreabbrev <silent> <buffer> append-child APPEND-CHILD
  inoreabbrev <silent> <buffer> application APPLICATION
  inoreabbrev <silent> <buffer> apply APPLY
  inoreabbrev <silent> <buffer> as AS
  inoreabbrev <silent> <buffer> as-cursor AS-CURSOR
  inoreabbrev <silent> <buffer> asc ASC
  inoreabbrev <silent> <buffer> ascending ASCENDING
  inoreabbrev <silent> <buffer> ask-overwrite ASK-OVERWRITE
  inoreabbrev <silent> <buffer> assign ASSIGN
  inoreabbrev <silent> <buffer> at AT
  inoreabbrev <silent> <buffer> attr ATTR
  inoreabbrev <silent> <buffer> attr-space ATTR-SPACE
  inoreabbrev <silent> <buffer> attribute-names ATTRIBUTE-NAMES
  inoreabbrev <silent> <buffer> authorization AUTHORIZATION
  inoreabbrev <silent> <buffer> auto-end-key AUTO-END-KEY
  inoreabbrev <silent> <buffer> auto-endkey AUTO-ENDKEY
  inoreabbrev <silent> <buffer> auto-go AUTO-GO
  inoreabbrev <silent> <buffer> auto-ret AUTO-RET
  inoreabbrev <silent> <buffer> auto-return AUTO-RETURN
  inoreabbrev <silent> <buffer> auto-zap AUTO-ZAP
  inoreabbrev <silent> <buffer> avail AVAIL
  inoreabbrev <silent> <buffer> available AVAILABLE
  inoreabbrev <silent> <buffer> available-formats AVAILABLE-FORMATS
  inoreabbrev <silent> <buffer> ave AVE
  inoreabbrev <silent> <buffer> average AVERAGE
  inoreabbrev <silent> <buffer> avg AVG
  inoreabbrev <silent> <buffer> back BACK
  inoreabbrev <silent> <buffer> background BACKGROUND
  inoreabbrev <silent> <buffer> backward BACKWARD
  inoreabbrev <silent> <buffer> backwards BACKWARDS
  inoreabbrev <silent> <buffer> base-key BASE-KEY
  inoreabbrev <silent> <buffer> batch BATCH
  inoreabbrev <silent> <buffer> batch-mode BATCH-MODE
  inoreabbrev <silent> <buffer> begins BEGINS
  inoreabbrev <silent> <buffer> between BETWEEN
  inoreabbrev <silent> <buffer> binary BINARY
  inoreabbrev <silent> <buffer> bind-where BIND-WHERE
  inoreabbrev <silent> <buffer> blank BLANK
  inoreabbrev <silent> <buffer> block-iteration-display BLOCK-ITERATION-DISPLAY
  inoreabbrev <silent> <buffer> both BOTH
  inoreabbrev <silent> <buffer> bottom BOTTOM
  inoreabbrev <silent> <buffer> box BOX
  inoreabbrev <silent> <buffer> break BREAK
  inoreabbrev <silent> <buffer> btos BTOS
  inoreabbrev <silent> <buffer> buffer BUFFER
  inoreabbrev <silent> <buffer> buffer-chars BUFFER-CHARS
  inoreabbrev <silent> <buffer> buffer-compare BUFFER-COMPARE
  inoreabbrev <silent> <buffer> buffer-copy BUFFER-COPY
  inoreabbrev <silent> <buffer> buffer-lines BUFFER-LINES
  inoreabbrev <silent> <buffer> by BY
  inoreabbrev <silent> <buffer> byte BYTE
  inoreabbrev <silent> <buffer> bytes-read BYTES-READ
  inoreabbrev <silent> <buffer> bytes-written BYTES-WRITTEN
  inoreabbrev <silent> <buffer> cache CACHE
  inoreabbrev <silent> <buffer> cache-size CACHE-SIZE
  inoreabbrev <silent> <buffer> call CALL
  inoreabbrev <silent> <buffer> can-do CAN-DO
  inoreabbrev <silent> <buffer> can-find CAN-FIND
  inoreabbrev <silent> <buffer> can-query CAN-QUERY
  inoreabbrev <silent> <buffer> can-set CAN-SET
  inoreabbrev <silent> <buffer> cancel-break CANCEL-BREAK
  inoreabbrev <silent> <buffer> caps CAPS
  inoreabbrev <silent> <buffer> case CASE
  inoreabbrev <silent> <buffer> case-sensitive CASE-SENSITIVE
  inoreabbrev <silent> <buffer> cdecl CDECL
  inoreabbrev <silent> <buffer> char CHAR
  inoreabbrev <silent> <buffer> character CHARACTER
  inoreabbrev <silent> <buffer> character_length CHARACTER_LENGTH
  inoreabbrev <silent> <buffer> charset CHARSET
  inoreabbrev <silent> <buffer> check CHECK
  inoreabbrev <silent> <buffer> child-num CHILD-NUM
  inoreabbrev <silent> <buffer> choose CHOOSE
  inoreabbrev <silent> <buffer> chr CHR
  inoreabbrev <silent> <buffer> class CLASS
  inoreabbrev <silent> <buffer> clone-node CLONE-NODE
  inoreabbrev <silent> <buffer> close CLOSE
  inoreabbrev <silent> <buffer> code CODE
  inoreabbrev <silent> <buffer> codepage CODEPAGE
  inoreabbrev <silent> <buffer> codepage-convert CODEPAGE-CONVERT
  inoreabbrev <silent> <buffer> col COL
  inoreabbrev <silent> <buffer> col-of COL-OF
  inoreabbrev <silent> <buffer> colon COLON
  inoreabbrev <silent> <buffer> colon-align COLON-ALIGN
  inoreabbrev <silent> <buffer> colon-aligned COLON-ALIGNED
  inoreabbrev <silent> <buffer> column COLUMN
  inoreabbrev <silent> <buffer> column-label COLUMN-LABEL
  inoreabbrev <silent> <buffer> column-of COLUMN-OF
  inoreabbrev <silent> <buffer> column-scrolling COLUMN-SCROLLING
  inoreabbrev <silent> <buffer> columns COLUMNS
  inoreabbrev <silent> <buffer> command COMMAND
  inoreabbrev <silent> <buffer> compile COMPILE
  inoreabbrev <silent> <buffer> compiler COMPILER
  inoreabbrev <silent> <buffer> complete COMPLETE
  inoreabbrev <silent> <buffer> connect CONNECT
  inoreabbrev <silent> <buffer> connected CONNECTED
  inoreabbrev <silent> <buffer> constrained CONSTRAINED
  inoreabbrev <silent> <buffer> contents CONTENTS
  inoreabbrev <silent> <buffer> context CONTEXT
  inoreabbrev <silent> <buffer> control CONTROL
  inoreabbrev <silent> <buffer> control-container CONTROL-CONTAINER
  inoreabbrev <silent> <buffer> control-form CONTROL-FORM
  inoreabbrev <silent> <buffer> convert CONVERT
  inoreabbrev <silent> <buffer> convert-to-offset CONVERT-TO-OFFSET
  inoreabbrev <silent> <buffer> count COUNT
  inoreabbrev <silent> <buffer> count-of COUNT-OF
  inoreabbrev <silent> <buffer> cpcase CPCASE
  inoreabbrev <silent> <buffer> cpcoll CPCOLL
  inoreabbrev <silent> <buffer> cpint CPINT
  inoreabbrev <silent> <buffer> cpinternal CPINTERNAL
  inoreabbrev <silent> <buffer> cplog CPLOG
  inoreabbrev <silent> <buffer> cpprint CPPRINT
  inoreabbrev <silent> <buffer> cprcodein CPRCODEIN
  inoreabbrev <silent> <buffer> cprcodeout CPRCODEOUT
  inoreabbrev <silent> <buffer> cpstream CPSTREAM
  inoreabbrev <silent> <buffer> cpterm CPTERM
  inoreabbrev <silent> <buffer> crc-val CRC-VAL
  inoreabbrev <silent> <buffer> crc-value CRC-VALUE
  inoreabbrev <silent> <buffer> create CREATE
  inoreabbrev <silent> <buffer> create-control CREATE-CONTROL
  inoreabbrev <silent> <buffer> create-node CREATE-NODE
  inoreabbrev <silent> <buffer> create-node-namespace CREATE-NODE-NAMESPACE
  inoreabbrev <silent> <buffer> create-result-list-entry CREATE-RESULT-LIST-ENTRY
  inoreabbrev <silent> <buffer> create-test-file CREATE-TEST-FILE
  inoreabbrev <silent> <buffer> ctos CTOS
  inoreabbrev <silent> <buffer> current CURRENT
  inoreabbrev <silent> <buffer> current-changed CURRENT-CHANGED
  inoreabbrev <silent> <buffer> current-column CURRENT-COLUMN
  inoreabbrev <silent> <buffer> current-env CURRENT-ENV
  inoreabbrev <silent> <buffer> current-environment CURRENT-ENVIRONMENT
  inoreabbrev <silent> <buffer> current-iteration CURRENT-ITERATION
  inoreabbrev <silent> <buffer> current-lang CURRENT-LANG
  inoreabbrev <silent> <buffer> current-language CURRENT-LANGUAGE
  inoreabbrev <silent> <buffer> current-result-row CURRENT-RESULT-ROW
  inoreabbrev <silent> <buffer> current-row-modified CURRENT-ROW-MODIFIED
  inoreabbrev <silent> <buffer> current-value CURRENT-VALUE
  inoreabbrev <silent> <buffer> current_date CURRENT_DATE
  inoreabbrev <silent> <buffer> data-entry-return DATA-ENTRY-RETURN
  inoreabbrev <silent> <buffer> data-relation DATA-RELATION
  inoreabbrev <silent> <buffer> data-type DATA-TYPE
  inoreabbrev <silent> <buffer> database DATABASE
  inoreabbrev <silent> <buffer> dataservers DATASERVERS
  inoreabbrev <silent> <buffer> dataset DATASET
  inoreabbrev <silent> <buffer> date DATE
  inoreabbrev <silent> <buffer> date-format DATE-FORMAT
  inoreabbrev <silent> <buffer> day DAY
  inoreabbrev <silent> <buffer> db-references DB-REFERENCES
  inoreabbrev <silent> <buffer> dbcodepage DBCODEPAGE
  inoreabbrev <silent> <buffer> dbcollation DBCOLLATION
  inoreabbrev <silent> <buffer> dbname DBNAME
  inoreabbrev <silent> <buffer> dbrest DBREST
  inoreabbrev <silent> <buffer> dbrestrictions DBRESTRICTIONS
  inoreabbrev <silent> <buffer> dbtaskid DBTASKID
  inoreabbrev <silent> <buffer> dbtype DBTYPE
  inoreabbrev <silent> <buffer> dbvers DBVERS
  inoreabbrev <silent> <buffer> dbversion DBVERSION
  inoreabbrev <silent> <buffer> dde DDE
  inoreabbrev <silent> <buffer> dde-error DDE-ERROR
  inoreabbrev <silent> <buffer> dde-id DDE-ID
  inoreabbrev <silent> <buffer> dde-item DDE-ITEM
  inoreabbrev <silent> <buffer> dde-name DDE-NAME
  inoreabbrev <silent> <buffer> dde-topic DDE-TOPIC
  inoreabbrev <silent> <buffer> deblank DEBLANK
  inoreabbrev <silent> <buffer> debug DEBUG
  inoreabbrev <silent> <buffer> debug-list DEBUG-LIST
  inoreabbrev <silent> <buffer> debugger DEBUGGER
  inoreabbrev <silent> <buffer> dec DEC
  inoreabbrev <silent> <buffer> decimal DECIMAL
  inoreabbrev <silent> <buffer> decimals DECIMALS
  inoreabbrev <silent> <buffer> declare DECLARE
  inoreabbrev <silent> <buffer> def DEF
  inoreabbrev <silent> <buffer> default DEFAULT
  inoreabbrev <silent> <buffer> default-extension DEFAULT-EXTENSION
  inoreabbrev <silent> <buffer> default-noxlate DEFAULT-NOXLATE
  inoreabbrev <silent> <buffer> defer-lob-fetch DEFER-LOB-FETCH
  inoreabbrev <silent> <buffer> define DEFINE
  inoreabbrev <silent> <buffer> defined DEFINED
  inoreabbrev <silent> <buffer> delete DELETE
  inoreabbrev <silent> <buffer> delete-char DELETE-CHAR
  inoreabbrev <silent> <buffer> delete-current-row DELETE-CURRENT-ROW
  inoreabbrev <silent> <buffer> delete-line DELETE-LINE
  inoreabbrev <silent> <buffer> delete-node DELETE-NODE
  inoreabbrev <silent> <buffer> delete-selected-row DELETE-SELECTED-ROW
  inoreabbrev <silent> <buffer> delete-selected-rows DELETE-SELECTED-ROWS
  inoreabbrev <silent> <buffer> delimiter DELIMITER
  inoreabbrev <silent> <buffer> desc DESC
  inoreabbrev <silent> <buffer> descending DESCENDING
  inoreabbrev <silent> <buffer> design-mode DESIGN-MODE
  inoreabbrev <silent> <buffer> dict DICT
  inoreabbrev <silent> <buffer> dictionary DICTIONARY
  inoreabbrev <silent> <buffer> dir DIR
  inoreabbrev <silent> <buffer> disable DISABLE
  inoreabbrev <silent> <buffer> disabled DISABLED
  inoreabbrev <silent> <buffer> discon DISCON
  inoreabbrev <silent> <buffer> disconnect DISCONNECT
  inoreabbrev <silent> <buffer> dislpay DISPLAY
  inoreabbrev <silent> <buffer> display DISPLAY
  inoreabbrev <silent> <buffer> display-message DISPLAY-MESSAGE
  inoreabbrev <silent> <buffer> display-type DISPLAY-TYPE
  inoreabbrev <silent> <buffer> distinct DISTINCT
  inoreabbrev <silent> <buffer> do DO
  inoreabbrev <silent> <buffer> dos DOS
  inoreabbrev <silent> <buffer> double DOUBLE
  inoreabbrev <silent> <buffer> down DOWN
  inoreabbrev <silent> <buffer> drop DROP
  inoreabbrev <silent> <buffer> dump DUMP
  inoreabbrev <silent> <buffer> dynamic DYNAMIC
  inoreabbrev <silent> <buffer> each EACH
  inoreabbrev <silent> <buffer> echo ECHO
  inoreabbrev <silent> <buffer> editing EDITING
  inoreabbrev <silent> <buffer> else ELSE
  inoreabbrev <silent> <buffer> empty EMPTY
  inoreabbrev <silent> <buffer> enable ENABLE
  inoreabbrev <silent> <buffer> encode ENCODE
  inoreabbrev <silent> <buffer> encoding ENCODING
  inoreabbrev <silent> <buffer> end END
  inoreabbrev <silent> <buffer> end-key END-KEY
  inoreabbrev <silent> <buffer> endkey ENDKEY
  inoreabbrev <silent> <buffer> entered ENTERED
  inoreabbrev <silent> <buffer> entry ENTRY
  inoreabbrev <silent> <buffer> eq EQ
  inoreabbrev <silent> <buffer> error ERROR
  inoreabbrev <silent> <buffer> error-col ERROR-COL
  inoreabbrev <silent> <buffer> error-column ERROR-COLUMN
  inoreabbrev <silent> <buffer> error-row ERROR-ROW
  inoreabbrev <silent> <buffer> error-stat ERROR-STAT
  inoreabbrev <silent> <buffer> error-status ERROR-STATUS
  inoreabbrev <silent> <buffer> escape ESCAPE
  inoreabbrev <silent> <buffer> etime ETIME
  inoreabbrev <silent> <buffer> event EVENT
  inoreabbrev <silent> <buffer> event-type EVENT-TYPE
  inoreabbrev <silent> <buffer> events EVENTS
  inoreabbrev <silent> <buffer> except EXCEPT
  inoreabbrev <silent> <buffer> exclusive EXCLUSIVE
  inoreabbrev <silent> <buffer> exclusive-id EXCLUSIVE-ID
  inoreabbrev <silent> <buffer> exclusive-lock EXCLUSIVE-LOCK
  inoreabbrev <silent> <buffer> execute EXECUTE
  inoreabbrev <silent> <buffer> exists EXISTS
  inoreabbrev <silent> <buffer> exp EXP
  inoreabbrev <silent> <buffer> expand EXPAND
  inoreabbrev <silent> <buffer> export EXPORT
  inoreabbrev <silent> <buffer> extended EXTENDED
  inoreabbrev <silent> <buffer> extent EXTENT
  inoreabbrev <silent> <buffer> external EXTERNAL
  inoreabbrev <silent> <buffer> extract EXTRACT
  inoreabbrev <silent> <buffer> fetch FETCH
  inoreabbrev <silent> <buffer> fetch-selected-row FETCH-SELECTED-ROW
  inoreabbrev <silent> <buffer> field FIELD
  inoreabbrev <silent> <buffer> fields FIELDS
  inoreabbrev <silent> <buffer> file FILE
  inoreabbrev <silent> <buffer> file-info FILE-INFO
  inoreabbrev <silent> <buffer> file-information FILE-INFORMATION
  inoreabbrev <silent> <buffer> file-name FILE-NAME
  inoreabbrev <silent> <buffer> file-offset FILE-OFFSET
  inoreabbrev <silent> <buffer> file-size FILE-SIZE
  inoreabbrev <silent> <buffer> file-type FILE-TYPE
  inoreabbrev <silent> <buffer> filename FILENAME
  inoreabbrev <silent> <buffer> fill FILL
  inoreabbrev <silent> <buffer> fill-in FILL-IN
  inoreabbrev <silent> <buffer> filled FILLED
  inoreabbrev <silent> <buffer> filters FILTERS
  inoreabbrev <silent> <buffer> find FIND
  inoreabbrev <silent> <buffer> find-case-sensitive FIND-CASE-SENSITIVE
  inoreabbrev <silent> <buffer> find-global FIND-GLOBAL
  inoreabbrev <silent> <buffer> find-next-occurrence FIND-NEXT-OCCURRENCE
  inoreabbrev <silent> <buffer> find-prev-occurrence FIND-PREV-OCCURRENCE
  inoreabbrev <silent> <buffer> find-select FIND-SELECT
  inoreabbrev <silent> <buffer> find-wrap-around FIND-WRAP-AROUND
  inoreabbrev <silent> <buffer> first FIRST
  inoreabbrev <silent> <buffer> first-child FIRST-CHILD
  inoreabbrev <silent> <buffer> first-column FIRST-COLUMN
  inoreabbrev <silent> <buffer> first-of FIRST-OF
  inoreabbrev <silent> <buffer> first-proc FIRST-PROC
  inoreabbrev <silent> <buffer> first-procedure FIRST-PROCEDURE
  inoreabbrev <silent> <buffer> fixed-only FIXED-ONLY
  inoreabbrev <silent> <buffer> float FLOAT
  inoreabbrev <silent> <buffer> focus FOCUS
  inoreabbrev <silent> <buffer> for FOR
  inoreabbrev <silent> <buffer> force-file FORCE-FILE
  inoreabbrev <silent> <buffer> fore FORE
  inoreabbrev <silent> <buffer> foreground FOREGROUND
  inoreabbrev <silent> <buffer> form-input FORM-INPUT
  inoreabbrev <silent> <buffer> format FORMAT
  inoreabbrev <silent> <buffer> forward FORWARD
  inoreabbrev <silent> <buffer> forwards FORWARDS
  inoreabbrev <silent> <buffer> frame FRAME
  inoreabbrev <silent> <buffer> frame-col FRAME-COL
  inoreabbrev <silent> <buffer> frame-db FRAME-DB
  inoreabbrev <silent> <buffer> frame-down FRAME-DOWN
  inoreabbrev <silent> <buffer> frame-field FRAME-FIELD
  inoreabbrev <silent> <buffer> frame-file FRAME-FILE
  inoreabbrev <silent> <buffer> frame-index FRAME-INDEX
  inoreabbrev <silent> <buffer> frame-line FRAME-LINE
  inoreabbrev <silent> <buffer> frame-name FRAME-NAME
  inoreabbrev <silent> <buffer> frame-row FRAME-ROW
  inoreabbrev <silent> <buffer> frame-spacing FRAME-SPACING
  inoreabbrev <silent> <buffer> frame-val FRAME-VAL
  inoreabbrev <silent> <buffer> frame-value FRAME-VALUE
  inoreabbrev <silent> <buffer> frame-x FRAME-X
  inoreabbrev <silent> <buffer> frame-y FRAME-Y
  inoreabbrev <silent> <buffer> frequency FREQUENCY
  inoreabbrev <silent> <buffer> from FROM
  inoreabbrev <silent> <buffer> from-cur FROM-CUR
  inoreabbrev <silent> <buffer> from-current FROM-CURRENT
  inoreabbrev <silent> <buffer> full-pathname FULL-PATHNAME
  inoreabbrev <silent> <buffer> function FUNCTION
  inoreabbrev <silent> <buffer> gateway GATEWAY
  inoreabbrev <silent> <buffer> gateways GATEWAYS
  inoreabbrev <silent> <buffer> get GET
  inoreabbrev <silent> <buffer> get-attribute GET-ATTRIBUTE
  inoreabbrev <silent> <buffer> get-attribute-node GET-ATTRIBUTE-NODE
  inoreabbrev <silent> <buffer> get-byte GET-BYTE
  inoreabbrev <silent> <buffer> get-bytes-available GET-BYTES-AVAILABLE
  inoreabbrev <silent> <buffer> get-char-property GET-CHAR-PROPERTY
  inoreabbrev <silent> <buffer> get-child GET-CHILD
  inoreabbrev <silent> <buffer> get-codepage GET-CODEPAGE
  inoreabbrev <silent> <buffer> get-codepages GET-CODEPAGES
  inoreabbrev <silent> <buffer> get-coll GET-COLL
  inoreabbrev <silent> <buffer> get-collations GET-COLLATIONS
  inoreabbrev <silent> <buffer> get-document-element GET-DOCUMENT-ELEMENT
  inoreabbrev <silent> <buffer> get-double GET-DOUBLE
  inoreabbrev <silent> <buffer> get-dynamic GET-DYNAMIC
  inoreabbrev <silent> <buffer> get-file GET-FILE
  inoreabbrev <silent> <buffer> get-float GET-FLOAT
  inoreabbrev <silent> <buffer> get-iteration GET-ITERATION
  inoreabbrev <silent> <buffer> get-key-val GET-KEY-VAL
  inoreabbrev <silent> <buffer> get-key-value GET-KEY-VALUE
  inoreabbrev <silent> <buffer> get-license GET-LICENSE
  inoreabbrev <silent> <buffer> get-long GET-LONG
  inoreabbrev <silent> <buffer> get-message GET-MESSAGE
  inoreabbrev <silent> <buffer> get-number GET-NUMBER
  inoreabbrev <silent> <buffer> get-parent GET-PARENT
  inoreabbrev <silent> <buffer> get-pointer-value GET-POINTER-VALUE
  inoreabbrev <silent> <buffer> get-repositioned-row GET-REPOSITIONED-ROW
  inoreabbrev <silent> <buffer> get-selected-wid GET-SELECTED-WID
  inoreabbrev <silent> <buffer> get-selected-widget GET-SELECTED-WIDGET
  inoreabbrev <silent> <buffer> get-short GET-SHORT
  inoreabbrev <silent> <buffer> get-signature GET-SIGNATURE
  inoreabbrev <silent> <buffer> get-size GET-SIZE
  inoreabbrev <silent> <buffer> get-string GET-STRING
  inoreabbrev <silent> <buffer> get-tab-item GET-TAB-ITEM
  inoreabbrev <silent> <buffer> get-unsigned-short GET-UNSIGNED-SHORT
  inoreabbrev <silent> <buffer> getbyte GETBYTE
  inoreabbrev <silent> <buffer> glob GLOB
  inoreabbrev <silent> <buffer> global GLOBAL
  inoreabbrev <silent> <buffer> global-define GLOBAL-DEFINE
  inoreabbrev <silent> <buffer> go-on GO-ON
  inoreabbrev <silent> <buffer> go-pend GO-PEND
  inoreabbrev <silent> <buffer> go-pending GO-PENDING
  inoreabbrev <silent> <buffer> grant GRANT
  inoreabbrev <silent> <buffer> group GROUP
  inoreabbrev <silent> <buffer> gt GT
  inoreabbrev <silent> <buffer> handle HANDLE
  inoreabbrev <silent> <buffer> having HAVING
  inoreabbrev <silent> <buffer> header HEADER
  inoreabbrev <silent> <buffer> hide HIDE
  inoreabbrev <silent> <buffer> hwnd HWND
  inoreabbrev <silent> <buffer> if IF
  inoreabbrev <silent> <buffer> immediate-display IMMEDIATE-DISPLAY
  inoreabbrev <silent> <buffer> import IMPORT
  inoreabbrev <silent> <buffer> import-node IMPORT-NODE
  inoreabbrev <silent> <buffer> in IN
  inoreabbrev <silent> <buffer> index INDEX
  inoreabbrev <silent> <buffer> index-hint INDEX-HINT
  inoreabbrev <silent> <buffer> indexed-reposition INDEXED-REPOSITION
  inoreabbrev <silent> <buffer> indicator INDICATOR
  inoreabbrev <silent> <buffer> info INFO
  inoreabbrev <silent> <buffer> information INFORMATION
  inoreabbrev <silent> <buffer> init INIT
  inoreabbrev <silent> <buffer> initial INITIAL
  inoreabbrev <silent> <buffer> initial-dir INITIAL-DIR
  inoreabbrev <silent> <buffer> initial-filter INITIAL-FILTER
  inoreabbrev <silent> <buffer> initialize-document-type INITIALIZE-DOCUMENT-TYPE
  inoreabbrev <silent> <buffer> initiate INITIATE
  inoreabbrev <silent> <buffer> inner INNER
  inoreabbrev <silent> <buffer> inner-chars INNER-CHARS
  inoreabbrev <silent> <buffer> inner-lines INNER-LINES
  inoreabbrev <silent> <buffer> input INPUT
  inoreabbrev <silent> <buffer> input-output INPUT-OUTPUT
  inoreabbrev <silent> <buffer> insert INSERT
  inoreabbrev <silent> <buffer> insert-backtab INSERT-BACKTAB
  inoreabbrev <silent> <buffer> insert-before INSERT-BEFORE
  inoreabbrev <silent> <buffer> insert-file INSERT-FILE
  inoreabbrev <silent> <buffer> insert-row INSERT-ROW
  inoreabbrev <silent> <buffer> insert-string INSERT-STRING
  inoreabbrev <silent> <buffer> insert-tab INSERT-TAB
  inoreabbrev <silent> <buffer> int INT
  inoreabbrev <silent> <buffer> integer INTEGER
  inoreabbrev <silent> <buffer> internal-entries INTERNAL-ENTRIES
  inoreabbrev <silent> <buffer> into INTO
  inoreabbrev <silent> <buffer> is IS
  inoreabbrev <silent> <buffer> is-attr IS-ATTR
  inoreabbrev <silent> <buffer> is-attr-space IS-ATTR-SPACE
  inoreabbrev <silent> <buffer> is-lead IS-LEAD
  inoreabbrev <silent> <buffer> is-lead-byte IS-LEAD-BYTE
  inoreabbrev <silent> <buffer> is-row-selected IS-ROW-SELECTED
  inoreabbrev <silent> <buffer> is-selected IS-SELECTED
  inoreabbrev <silent> <buffer> item ITEM
  inoreabbrev <silent> <buffer> items-per-row ITEMS-PER-ROW
  inoreabbrev <silent> <buffer> join JOIN
  inoreabbrev <silent> <buffer> join-by-sqldb JOIN-BY-SQLDB
  inoreabbrev <silent> <buffer> kblabel KBLABEL
  inoreabbrev <silent> <buffer> keep-frame-z-ord KEEP-FRAME-Z-ORD
  inoreabbrev <silent> <buffer> keep-frame-z-order KEEP-FRAME-Z-ORDER
  inoreabbrev <silent> <buffer> keep-messages KEEP-MESSAGES
  inoreabbrev <silent> <buffer> keep-tab-order KEEP-TAB-ORDER
  inoreabbrev <silent> <buffer> key KEY
  inoreabbrev <silent> <buffer> key-code KEY-CODE
  inoreabbrev <silent> <buffer> key-func KEY-FUNC
  inoreabbrev <silent> <buffer> key-function KEY-FUNCTION
  inoreabbrev <silent> <buffer> key-label KEY-LABEL
  inoreabbrev <silent> <buffer> keycode KEYCODE
  inoreabbrev <silent> <buffer> keyfunc KEYFUNC
  inoreabbrev <silent> <buffer> keyfunction KEYFUNCTION
  inoreabbrev <silent> <buffer> keylabel KEYLABEL
  inoreabbrev <silent> <buffer> keys KEYS
  inoreabbrev <silent> <buffer> keyword KEYWORD
  inoreabbrev <silent> <buffer> keyword-all KEYWORD-ALL
  inoreabbrev <silent> <buffer> label LABEL
  inoreabbrev <silent> <buffer> labels LABELS
  inoreabbrev <silent> <buffer> language LANGUAGE
  inoreabbrev <silent> <buffer> languages LANGUAGES
  inoreabbrev <silent> <buffer> large LARGE
  inoreabbrev <silent> <buffer> large-to-small LARGE-TO-SMALL
  inoreabbrev <silent> <buffer> last LAST
  inoreabbrev <silent> <buffer> last-child LAST-CHILD
  inoreabbrev <silent> <buffer> last-event LAST-EVENT
  inoreabbrev <silent> <buffer> last-key LAST-KEY
  inoreabbrev <silent> <buffer> last-of LAST-OF
  inoreabbrev <silent> <buffer> last-procedure LAST-PROCEDURE
  inoreabbrev <silent> <buffer> lastkey LASTKEY
  inoreabbrev <silent> <buffer> lc LC
  inoreabbrev <silent> <buffer> ldbname LDBNAME
  inoreabbrev <silent> <buffer> le LE
  inoreabbrev <silent> <buffer> leading LEADING
  inoreabbrev <silent> <buffer> leave LEAVE
  inoreabbrev <silent> <buffer> left LEFT
  inoreabbrev <silent> <buffer> left-trim LEFT-TRIM
  inoreabbrev <silent> <buffer> length LENGTH
  inoreabbrev <silent> <buffer> library LIBRARY
  inoreabbrev <silent> <buffer> like LIKE
  inoreabbrev <silent> <buffer> line LINE
  inoreabbrev <silent> <buffer> line-count LINE-COUNT
  inoreabbrev <silent> <buffer> line-counter LINE-COUNTER
  inoreabbrev <silent> <buffer> list-events LIST-EVENTS
  inoreabbrev <silent> <buffer> list-items LIST-ITEMS
  inoreabbrev <silent> <buffer> list-query-attrs LIST-QUERY-ATTRS
  inoreabbrev <silent> <buffer> list-set-attrs LIST-SET-ATTRS
  inoreabbrev <silent> <buffer> listing LISTING
  inoreabbrev <silent> <buffer> load LOAD
  inoreabbrev <silent> <buffer> load-control LOAD-CONTROL
  inoreabbrev <silent> <buffer> local-name LOCAL-NAME
  inoreabbrev <silent> <buffer> locked LOCKED
  inoreabbrev <silent> <buffer> log LOG
  inoreabbrev <silent> <buffer> logical LOGICAL
  inoreabbrev <silent> <buffer> longchar-to-node-value LONGCHAR-TO-NODE-VALUE
  inoreabbrev <silent> <buffer> lookahead LOOKAHEAD
  inoreabbrev <silent> <buffer> lookup LOOKUP
  inoreabbrev <silent> <buffer> lower LOWER
  inoreabbrev <silent> <buffer> lt LT
  inoreabbrev <silent> <buffer> machine-class MACHINE-CLASS
  inoreabbrev <silent> <buffer> manual-highlight MANUAL-HIGHLIGHT
  inoreabbrev <silent> <buffer> map MAP
  inoreabbrev <silent> <buffer> matches MATCHES
  inoreabbrev <silent> <buffer> max MAX
  inoreabbrev <silent> <buffer> max-data-guess MAX-DATA-GUESS
  inoreabbrev <silent> <buffer> max-val MAX-VAL
  inoreabbrev <silent> <buffer> max-value MAX-VALUE
  inoreabbrev <silent> <buffer> maximum MAXIMUM
  inoreabbrev <silent> <buffer> member MEMBER
  inoreabbrev <silent> <buffer> memory MEMORY
  inoreabbrev <silent> <buffer> memptr-to-node-value MEMPTR-TO-NODE-VALUE
  inoreabbrev <silent> <buffer> message MESSAGE
  inoreabbrev <silent> <buffer> message-area MESSAGE-AREA
  inoreabbrev <silent> <buffer> message-line MESSAGE-LINE
  inoreabbrev <silent> <buffer> message-lines MESSAGE-LINES
  inoreabbrev <silent> <buffer> method METHOD
  inoreabbrev <silent> <buffer> min MIN
  inoreabbrev <silent> <buffer> min-val MIN-VAL
  inoreabbrev <silent> <buffer> min-value MIN-VALUE
  inoreabbrev <silent> <buffer> minimum MINIMUM
  inoreabbrev <silent> <buffer> mod MOD
  inoreabbrev <silent> <buffer> modified MODIFIED
  inoreabbrev <silent> <buffer> modulo MODULO
  inoreabbrev <silent> <buffer> month MONTH
  inoreabbrev <silent> <buffer> mpe MPE
  inoreabbrev <silent> <buffer> multiple MULTIPLE
  inoreabbrev <silent> <buffer> multiple-key MULTIPLE-KEY
  inoreabbrev <silent> <buffer> multitasking-interval MULTITASKING-INTERVAL
  inoreabbrev <silent> <buffer> must-exist MUST-EXIST
  inoreabbrev <silent> <buffer> name NAME
  inoreabbrev <silent> <buffer> namespace-prefix NAMESPACE-PREFIX
  inoreabbrev <silent> <buffer> namespace-uri NAMESPACE-URI
  inoreabbrev <silent> <buffer> native NATIVE
  inoreabbrev <silent> <buffer> nested NESTED
  inoreabbrev <silent> <buffer> new NEW
  inoreabbrev <silent> <buffer> new-row NEW-ROW
  inoreabbrev <silent> <buffer> next NEXT
  inoreabbrev <silent> <buffer> no-apply NO-APPLY
  inoreabbrev <silent> <buffer> no-assign NO-ASSIGN
  inoreabbrev <silent> <buffer> no-attr NO-ATTR
  inoreabbrev <silent> <buffer> no-attr-space NO-ATTR-SPACE
  inoreabbrev <silent> <buffer> no-bind-where NO-BIND-WHERE
  inoreabbrev <silent> <buffer> no-box NO-BOX
  inoreabbrev <silent> <buffer> no-convert NO-CONVERT
  inoreabbrev <silent> <buffer> no-current-value NO-CURRENT-VALUE
  inoreabbrev <silent> <buffer> no-debug NO-DEBUG
  inoreabbrev <silent> <buffer> no-echo NO-ECHO
  inoreabbrev <silent> <buffer> no-error NO-ERROR
  inoreabbrev <silent> <buffer> no-help NO-HELP
  inoreabbrev <silent> <buffer> no-index-hint NO-INDEX-HINT
  inoreabbrev <silent> <buffer> no-join-by-sqldb NO-JOIN-BY-SQLDB
  inoreabbrev <silent> <buffer> no-label NO-LABEL
  inoreabbrev <silent> <buffer> no-labels NO-LABELS
  inoreabbrev <silent> <buffer> no-lock NO-LOCK
  inoreabbrev <silent> <buffer> no-lookahead NO-LOOKAHEAD
  inoreabbrev <silent> <buffer> no-map NO-MAP
  inoreabbrev <silent> <buffer> no-message NO-MESSAGE
  inoreabbrev <silent> <buffer> no-pause NO-PAUSE
  inoreabbrev <silent> <buffer> no-prefetch NO-PREFETCH
  inoreabbrev <silent> <buffer> no-row-markers NO-ROW-MARKERS
  inoreabbrev <silent> <buffer> no-scrolling NO-SCROLLING
  inoreabbrev <silent> <buffer> no-separate-connection NO-SEPARATE-CONNECTION
  inoreabbrev <silent> <buffer> no-separators NO-SEPARATORS
  inoreabbrev <silent> <buffer> no-undo NO-UNDO
  inoreabbrev <silent> <buffer> no-val NO-VAL
  inoreabbrev <silent> <buffer> no-validate NO-VALIDATE
  inoreabbrev <silent> <buffer> no-wait NO-WAIT
  inoreabbrev <silent> <buffer> no-word-wrap NO-WORD-WRAP
  inoreabbrev <silent> <buffer> node-value NODE-VALUE
  inoreabbrev <silent> <buffer> node-value-to-longchar NODE-VALUE-TO-LONGCHAR
  inoreabbrev <silent> <buffer> node-value-to-memptr NODE-VALUE-TO-MEMPTR
  inoreabbrev <silent> <buffer> none NONE
  inoreabbrev <silent> <buffer> normalize NORMALIZE
  inoreabbrev <silent> <buffer> not NOT
  inoreabbrev <silent> <buffer> null NULL
  inoreabbrev <silent> <buffer> num-aliases NUM-ALIASES
  inoreabbrev <silent> <buffer> num-children NUM-CHILDREN
  inoreabbrev <silent> <buffer> num-col NUM-COL
  inoreabbrev <silent> <buffer> num-columns NUM-COLUMNS
  inoreabbrev <silent> <buffer> num-copies NUM-COPIES
  inoreabbrev <silent> <buffer> num-dbs NUM-DBS
  inoreabbrev <silent> <buffer> num-entries NUM-ENTRIES
  inoreabbrev <silent> <buffer> num-formats NUM-FORMATS
  inoreabbrev <silent> <buffer> num-items NUM-ITEMS
  inoreabbrev <silent> <buffer> num-iterations NUM-ITERATIONS
  inoreabbrev <silent> <buffer> num-lines NUM-LINES
  inoreabbrev <silent> <buffer> num-messages NUM-MESSAGES
  inoreabbrev <silent> <buffer> num-results NUM-RESULTS
  inoreabbrev <silent> <buffer> num-to-retain NUM-TO-RETAIN
  inoreabbrev <silent> <buffer> numeric NUMERIC
  inoreabbrev <silent> <buffer> numeric-format NUMERIC-FORMAT
  inoreabbrev <silent> <buffer> octet_length OCTET_LENGTH
  inoreabbrev <silent> <buffer> of OF
  inoreabbrev <silent> <buffer> off OFF
  inoreabbrev <silent> <buffer> ok OK
  inoreabbrev <silent> <buffer> ok-cancel OK-CANCEL
  inoreabbrev <silent> <buffer> old OLD
  inoreabbrev <silent> <buffer> on ON
  inoreabbrev <silent> <buffer> open OPEN
  inoreabbrev <silent> <buffer> opsys OPSYS
  inoreabbrev <silent> <buffer> option OPTION
  inoreabbrev <silent> <buffer> or OR
  inoreabbrev <silent> <buffer> ordered-join ORDERED-JOIN
  inoreabbrev <silent> <buffer> ordinal ORDINAL
  inoreabbrev <silent> <buffer> orientation ORIENTATION
  inoreabbrev <silent> <buffer> os-append OS-APPEND
  inoreabbrev <silent> <buffer> os-command OS-COMMAND
  inoreabbrev <silent> <buffer> os-copy OS-COPY
  inoreabbrev <silent> <buffer> os-create-dir OS-CREATE-DIR
  inoreabbrev <silent> <buffer> os-delete OS-DELETE
  inoreabbrev <silent> <buffer> os-dir OS-DIR
  inoreabbrev <silent> <buffer> os-drives OS-DRIVES
  inoreabbrev <silent> <buffer> os-error OS-ERROR
  inoreabbrev <silent> <buffer> os-getenv OS-GETENV
  inoreabbrev <silent> <buffer> os-rename OS-RENAME
  inoreabbrev <silent> <buffer> os2 OS2
  inoreabbrev <silent> <buffer> os400 OS400
  inoreabbrev <silent> <buffer> otherwise OTHERWISE
  inoreabbrev <silent> <buffer> outer OUTER
  inoreabbrev <silent> <buffer> outer-join OUTER-JOIN
  inoreabbrev <silent> <buffer> output OUTPUT
  inoreabbrev <silent> <buffer> overlay OVERLAY
  inoreabbrev <silent> <buffer> override OVERRIDE
  inoreabbrev <silent> <buffer> owner OWNER
  inoreabbrev <silent> <buffer> owner-document OWNER-DOCUMENT
  inoreabbrev <silent> <buffer> page PAGE
  inoreabbrev <silent> <buffer> page-bottom PAGE-BOTTOM
  inoreabbrev <silent> <buffer> page-num PAGE-NUM
  inoreabbrev <silent> <buffer> page-number PAGE-NUMBER
  inoreabbrev <silent> <buffer> page-size PAGE-SIZE
  inoreabbrev <silent> <buffer> page-top PAGE-TOP
  inoreabbrev <silent> <buffer> page-width PAGE-WIDTH
  inoreabbrev <silent> <buffer> paged PAGED
  inoreabbrev <silent> <buffer> param PARAM
  inoreabbrev <silent> <buffer> parameter PARAMETER
  inoreabbrev <silent> <buffer> partial-key PARTIAL-KEY
  inoreabbrev <silent> <buffer> pascal PASCAL
  inoreabbrev <silent> <buffer> pathname PATHNAME
  inoreabbrev <silent> <buffer> pause PAUSE
  inoreabbrev <silent> <buffer> pdbname PDBNAME
  inoreabbrev <silent> <buffer> persist PERSIST
  inoreabbrev <silent> <buffer> persistent PERSISTENT
  inoreabbrev <silent> <buffer> pinnable PINNABLE
  inoreabbrev <silent> <buffer> position POSITION
  inoreabbrev <silent> <buffer> precision PRECISION
  inoreabbrev <silent> <buffer> preprocess PREPROCESS
  inoreabbrev <silent> <buffer> preselect PRESELECT
  inoreabbrev <silent> <buffer> prev PREV
  inoreabbrev <silent> <buffer> primary PRIMARY
  inoreabbrev <silent> <buffer> private PRIVATE
  inoreabbrev <silent> <buffer> private-data PRIVATE-DATA
  inoreabbrev <silent> <buffer> privileges PRIVILEGES
  inoreabbrev <silent> <buffer> proc-handle PROC-HANDLE
  inoreabbrev <silent> <buffer> proc-status PROC-STATUS
  inoreabbrev <silent> <buffer> procedure PROCEDURE
  inoreabbrev <silent> <buffer> process PROCESS
  inoreabbrev <silent> <buffer> profiler PROFILER
  inoreabbrev <silent> <buffer> program-name PROGRAM-NAME
  inoreabbrev <silent> <buffer> progress PROGRESS
  inoreabbrev <silent> <buffer> progress-source PROGRESS-SOURCE
  inoreabbrev <silent> <buffer> prompt PROMPT
  inoreabbrev <silent> <buffer> prompt-for PROMPT-FOR
  inoreabbrev <silent> <buffer> promsgs PROMSGS
  inoreabbrev <silent> <buffer> propath PROPATH
  inoreabbrev <silent> <buffer> property PROPERTY
  inoreabbrev <silent> <buffer> protected PROTECTED
  inoreabbrev <silent> <buffer> proversion PROVERSION
  inoreabbrev <silent> <buffer> public PUBLIC
  inoreabbrev <silent> <buffer> public-id PUBLIC-ID
  inoreabbrev <silent> <buffer> publish PUBLISH
  inoreabbrev <silent> <buffer> put PUT
  inoreabbrev <silent> <buffer> put-byte PUT-BYTE
  inoreabbrev <silent> <buffer> put-double PUT-DOUBLE
  inoreabbrev <silent> <buffer> put-float PUT-FLOAT
  inoreabbrev <silent> <buffer> put-key-val PUT-KEY-VAL
  inoreabbrev <silent> <buffer> put-key-value PUT-KEY-VALUE
  inoreabbrev <silent> <buffer> put-long PUT-LONG
  inoreabbrev <silent> <buffer> put-short PUT-SHORT
  inoreabbrev <silent> <buffer> put-string PUT-STRING
  inoreabbrev <silent> <buffer> put-unsigned-short PUT-UNSIGNED-SHORT
  inoreabbrev <silent> <buffer> putbyte PUTBYTE
  inoreabbrev <silent> <buffer> query QUERY
  inoreabbrev <silent> <buffer> query-off-end QUERY-OFF-END
  inoreabbrev <silent> <buffer> query-tuning QUERY-TUNING
  inoreabbrev <silent> <buffer> question QUESTION
  inoreabbrev <silent> <buffer> quit QUIT
  inoreabbrev <silent> <buffer> r-index R-INDEX
  inoreabbrev <silent> <buffer> random RANDOM
  inoreabbrev <silent> <buffer> raw RAW
  inoreabbrev <silent> <buffer> raw-transfer RAW-TRANSFER
  inoreabbrev <silent> <buffer> rcode-info RCODE-INFO
  inoreabbrev <silent> <buffer> rcode-information RCODE-INFORMATION
  inoreabbrev <silent> <buffer> read READ
  inoreabbrev <silent> <buffer> read-file READ-FILE
  inoreabbrev <silent> <buffer> read-json READ-JSON
  inoreabbrev <silent> <buffer> read-only READ-ONLY
  inoreabbrev <silent> <buffer> read-response READ-RESPONSE
  inoreabbrev <silent> <buffer> readkey READKEY
  inoreabbrev <silent> <buffer> real REAL
  inoreabbrev <silent> <buffer> recid RECID
  inoreabbrev <silent> <buffer> record-length RECORD-LENGTH
  inoreabbrev <silent> <buffer> recursive RECURSIVE
  inoreabbrev <silent> <buffer> refresh REFRESH
  inoreabbrev <silent> <buffer> refreshable REFRESHABLE
  inoreabbrev <silent> <buffer> relation-fields RELATION-FIELDS
  inoreabbrev <silent> <buffer> release RELEASE
  inoreabbrev <silent> <buffer> remove-attribute REMOVE-ATTRIBUTE
  inoreabbrev <silent> <buffer> remove-child REMOVE-CHILD
  inoreabbrev <silent> <buffer> repeat REPEAT
  inoreabbrev <silent> <buffer> replace REPLACE
  inoreabbrev <silent> <buffer> replace-child REPLACE-CHILD
  inoreabbrev <silent> <buffer> replication-create REPLICATION-CREATE
  inoreabbrev <silent> <buffer> replication-delete REPLICATION-DELETE
  inoreabbrev <silent> <buffer> replication-write REPLICATION-WRITE
  inoreabbrev <silent> <buffer> reposition REPOSITION
  inoreabbrev <silent> <buffer> request REQUEST
  inoreabbrev <silent> <buffer> retain RETAIN
  inoreabbrev <silent> <buffer> retry RETRY
  inoreabbrev <silent> <buffer> retry-cancel RETRY-CANCEL
  inoreabbrev <silent> <buffer> return RETURN
  inoreabbrev <silent> <buffer> return-inserted RETURN-INSERTED
  inoreabbrev <silent> <buffer> return-to-start-dir RETURN-TO-START-DIR
  inoreabbrev <silent> <buffer> return-val RETURN-VAL
  inoreabbrev <silent> <buffer> return-value RETURN-VALUE
  inoreabbrev <silent> <buffer> returns RETURNS
  inoreabbrev <silent> <buffer> reverse-from REVERSE-FROM
  inoreabbrev <silent> <buffer> revert REVERT
  inoreabbrev <silent> <buffer> revoke REVOKE
  inoreabbrev <silent> <buffer> right-trim RIGHT-TRIM
  inoreabbrev <silent> <buffer> round ROUND
  inoreabbrev <silent> <buffer> row ROW
  inoreabbrev <silent> <buffer> row-of ROW-OF
  inoreabbrev <silent> <buffer> rowid ROWID
  inoreabbrev <silent> <buffer> run RUN
  inoreabbrev <silent> <buffer> save SAVE
  inoreabbrev <silent> <buffer> save-as SAVE-AS
  inoreabbrev <silent> <buffer> save-file SAVE-FILE
  inoreabbrev <silent> <buffer> schema SCHEMA
  inoreabbrev <silent> <buffer> schema-path SCHEMA-PATH
  inoreabbrev <silent> <buffer> screen SCREEN
  inoreabbrev <silent> <buffer> sdbname SDBNAME
  inoreabbrev <silent> <buffer> se-check-pools SE-CHECK-POOLS
  inoreabbrev <silent> <buffer> se-enable-of SE-ENABLE-OF
  inoreabbrev <silent> <buffer> se-enable-off SE-ENABLE-OFF
  inoreabbrev <silent> <buffer> se-enable-on SE-ENABLE-ON
  inoreabbrev <silent> <buffer> se-num-pools SE-NUM-POOLS
  inoreabbrev <silent> <buffer> se-use-message SE-USE-MESSAGE
  inoreabbrev <silent> <buffer> search SEARCH
  inoreabbrev <silent> <buffer> section SECTION
  inoreabbrev <silent> <buffer> seek SEEK
  inoreabbrev <silent> <buffer> self SELF
  inoreabbrev <silent> <buffer> send SEND
  inoreabbrev <silent> <buffer> sensitive SENSITIVE
  inoreabbrev <silent> <buffer> separate-connection SEPARATE-CONNECTION
  inoreabbrev <silent> <buffer> separators SEPARATORS
  inoreabbrev <silent> <buffer> server SERVER
  inoreabbrev <silent> <buffer> session SESSION
  inoreabbrev <silent> <buffer> set SET
  inoreabbrev <silent> <buffer> set-attribute SET-ATTRIBUTE
  inoreabbrev <silent> <buffer> set-attribute-node SET-ATTRIBUTE-NODE
  inoreabbrev <silent> <buffer> set-break SET-BREAK
  inoreabbrev <silent> <buffer> set-contents SET-CONTENTS
  inoreabbrev <silent> <buffer> set-dynamic SET-DYNAMIC
  inoreabbrev <silent> <buffer> set-leakpoint SET-LEAKPOINT
  inoreabbrev <silent> <buffer> set-pointer-value SET-POINTER-VALUE
  inoreabbrev <silent> <buffer> set-property SET-PROPERTY
  inoreabbrev <silent> <buffer> set-read-response-procedure SET-READ-RESPONSE-PROCEDURE
  inoreabbrev <silent> <buffer> set-size SET-SIZE
  inoreabbrev <silent> <buffer> set-wait SET-WAIT
  inoreabbrev <silent> <buffer> set-wait-state SET-WAIT-STATE
  inoreabbrev <silent> <buffer> setuser SETUSER
  inoreabbrev <silent> <buffer> setuserid SETUSERID
  inoreabbrev <silent> <buffer> share SHARE
  inoreabbrev <silent> <buffer> share-lock SHARE-LOCK
  inoreabbrev <silent> <buffer> shared SHARED
  inoreabbrev <silent> <buffer> show-stats SHOW-STATS
  inoreabbrev <silent> <buffer> side-label-handle SIDE-LABEL-HANDLE
  inoreabbrev <silent> <buffer> side-labels SIDE-LABELS
  inoreabbrev <silent> <buffer> silent SILENT
  inoreabbrev <silent> <buffer> simple SIMPLE
  inoreabbrev <silent> <buffer> single SINGLE
  inoreabbrev <silent> <buffer> size SIZE 
  inoreabbrev <silent> <buffer> skip SKIP
  inoreabbrev <silent> <buffer> smallint SMALLINT
  inoreabbrev <silent> <buffer> socket SOCKET
  inoreabbrev <silent> <buffer> some SOME
  inoreabbrev <silent> <buffer> sort SORT
  inoreabbrev <silent> <buffer> source SOURCE
  inoreabbrev <silent> <buffer> source-procedure SOURCE-PROCEDURE
  inoreabbrev <silent> <buffer> space SPACE
  inoreabbrev <silent> <buffer> sql SQL
  inoreabbrev <silent> <buffer> sqrt SQRT
  inoreabbrev <silent> <buffer> start START
  inoreabbrev <silent> <buffer> static STATIC
  inoreabbrev <silent> <buffer> status STATUS
  inoreabbrev <silent> <buffer> status-area STATUS-AREA
  inoreabbrev <silent> <buffer> status-area-font STATUS-AREA-FONT
  inoreabbrev <silent> <buffer> status-bar STATUS-BAR
  inoreabbrev <silent> <buffer> stdcall STDCALL
  inoreabbrev <silent> <buffer> stenciled STENCILED
  inoreabbrev <silent> <buffer> stop STOP
  inoreabbrev <silent> <buffer> stopped STOPPED
  inoreabbrev <silent> <buffer> stored-proc STORED-PROC
  inoreabbrev <silent> <buffer> stored-procedure STORED-PROCEDURE
  inoreabbrev <silent> <buffer> stream STREAM
  inoreabbrev <silent> <buffer> stream-io STREAM-IO
  inoreabbrev <silent> <buffer> string STRING
  inoreabbrev <silent> <buffer> string-xref STRING-XREF
  inoreabbrev <silent> <buffer> sub-ave SUB-AVE
  inoreabbrev <silent> <buffer> sub-average SUB-AVERAGE
  inoreabbrev <silent> <buffer> sub-count SUB-COUNT
  inoreabbrev <silent> <buffer> sub-max SUB-MAX
  inoreabbrev <silent> <buffer> sub-maximum SUB-MAXIMUM
  inoreabbrev <silent> <buffer> sub-min SUB-MIN
  inoreabbrev <silent> <buffer> sub-minimum SUB-MINIMUM
  inoreabbrev <silent> <buffer> sub-total SUB-TOTAL
  inoreabbrev <silent> <buffer> subscribe SUBSCRIBE
  inoreabbrev <silent> <buffer> subst SUBST
  inoreabbrev <silent> <buffer> substitute SUBSTITUTE
  inoreabbrev <silent> <buffer> substr SUBSTR
  inoreabbrev <silent> <buffer> substring SUBSTRING
  inoreabbrev <silent> <buffer> subtype SUBTYPE
  inoreabbrev <silent> <buffer> sum SUM
  inoreabbrev <silent> <buffer> super SUPER
  inoreabbrev <silent> <buffer> suppress-namespace-processing SUPPRESS-NAMESPACE-PROCESSING
  inoreabbrev <silent> <buffer> suppress-warnings SUPPRESS-WARNINGS
  inoreabbrev <silent> <buffer> system-id SYSTEM-ID
  inoreabbrev <silent> <buffer> table TABLE
  inoreabbrev <silent> <buffer> target TARGET
  inoreabbrev <silent> <buffer> target-procedure TARGET-PROCEDURE
  inoreabbrev <silent> <buffer> temp-dir TEMP-DIR
  inoreabbrev <silent> <buffer> temp-directory TEMP-DIRECTORY
  inoreabbrev <silent> <buffer> temp-table TEMP-TABLE
  inoreabbrev <silent> <buffer> term TERM
  inoreabbrev <silent> <buffer> terminal TERMINAL
  inoreabbrev <silent> <buffer> terminate TERMINATE
  inoreabbrev <silent> <buffer> then THEN
  inoreabbrev <silent> <buffer> this-procedure THIS-PROCEDURE
  inoreabbrev <silent> <buffer> through THROUGH
  inoreabbrev <silent> <buffer> thru THRU
  inoreabbrev <silent> <buffer> time TIME
  inoreabbrev <silent> <buffer> time-source TIME-SOURCE
  inoreabbrev <silent> <buffer> to TO
  inoreabbrev <silent> <buffer> to-rowid TO-ROWID
  inoreabbrev <silent> <buffer> today TODAY
  inoreabbrev <silent> <buffer> top TOP
  inoreabbrev <silent> <buffer> top-only TOP-ONLY
  inoreabbrev <silent> <buffer> topic TOPIC
  inoreabbrev <silent> <buffer> total TOTAL
  inoreabbrev <silent> <buffer> trailing TRAILING
  inoreabbrev <silent> <buffer> trans TRANS
  inoreabbrev <silent> <buffer> transaction TRANSACTION
  inoreabbrev <silent> <buffer> trigger TRIGGER
  inoreabbrev <silent> <buffer> triggers TRIGGERS
  inoreabbrev <silent> <buffer> trim TRIM
  inoreabbrev <silent> <buffer> trunc TRUNC
  inoreabbrev <silent> <buffer> truncate TRUNCATE
  inoreabbrev <silent> <buffer> type TYPE
  inoreabbrev <silent> <buffer> unbuff UNBUFF
  inoreabbrev <silent> <buffer> unbuffered UNBUFFERED
  inoreabbrev <silent> <buffer> undo UNDO
  inoreabbrev <silent> <buffer> unform UNFORM
  inoreabbrev <silent> <buffer> unformatted UNFORMATTED
  inoreabbrev <silent> <buffer> union UNION
  inoreabbrev <silent> <buffer> unique UNIQUE
  inoreabbrev <silent> <buffer> unique-id UNIQUE-ID
  inoreabbrev <silent> <buffer> unix UNIX
  inoreabbrev <silent> <buffer> unload UNLOAD
  inoreabbrev <silent> <buffer> unsubscribe UNSUBSCRIBE
  inoreabbrev <silent> <buffer> up UP
  inoreabbrev <silent> <buffer> update UPDATE
  inoreabbrev <silent> <buffer> upper UPPER
  inoreabbrev <silent> <buffer> use USE
  inoreabbrev <silent> <buffer> user USER
  inoreabbrev <silent> <buffer> userid USERID
  inoreabbrev <silent> <buffer> using USING
  inoreabbrev <silent> <buffer> v6display V6DISPLAY
  inoreabbrev <silent> <buffer> v6frame V6FRAME
  inoreabbrev <silent> <buffer> valid-event VALID-EVENT
  inoreabbrev <silent> <buffer> valid-handle VALID-HANDLE
  inoreabbrev <silent> <buffer> validate VALIDATE
  inoreabbrev <silent> <buffer> validate-condition VALIDATE-CONDITION
  inoreabbrev <silent> <buffer> validate-message VALIDATE-MESSAGE
  inoreabbrev <silent> <buffer> value VALUE
  inoreabbrev <silent> <buffer> values VALUES
  inoreabbrev <silent> <buffer> var VAR
  inoreabbrev <silent> <buffer> variable VARIABLE
  inoreabbrev <silent> <buffer> vert VERT
  inoreabbrev <silent> <buffer> vertical VERTICAL
  inoreabbrev <silent> <buffer> view VIEW
  inoreabbrev <silent> <buffer> view-as VIEW-AS
  inoreabbrev <silent> <buffer> visible VISIBLE
  inoreabbrev <silent> <buffer> vms VMS
  inoreabbrev <silent> <buffer> wait WAIT
  inoreabbrev <silent> <buffer> wait-for WAIT-FOR
  inoreabbrev <silent> <buffer> warning WARNING
  inoreabbrev <silent> <buffer> weekday WEEKDAY
  inoreabbrev <silent> <buffer> when WHEN
  inoreabbrev <silent> <buffer> where WHERE
  inoreabbrev <silent> <buffer> while WHILE
  inoreabbrev <silent> <buffer> with WITH
  inoreabbrev <silent> <buffer> word-wrap WORD-WRAP
  inoreabbrev <silent> <buffer> work-table WORK-TABLE
  inoreabbrev <silent> <buffer> workfile WORKFILE
  inoreabbrev <silent> <buffer> write WRITE
  inoreabbrev <silent> <buffer> write-json WRITE-JSON
  inoreabbrev <silent> <buffer> x-document X-DOCUMENT
  inoreabbrev <silent> <buffer> x-noderef X-NODEREF
  inoreabbrev <silent> <buffer> x-of X-OF
  inoreabbrev <silent> <buffer> xcode XCODE
  inoreabbrev <silent> <buffer> xref XREF
  inoreabbrev <silent> <buffer> y-of Y-OF
  inoreabbrev <silent> <buffer> year YEAR
  inoreabbrev <silent> <buffer> yes-no YES-NO
  inoreabbrev <silent> <buffer> yes-no-cancel YES-NO-CANCEL
  " }}}

  " {{{ capitalize wfcommon functions
  inoreabbrev <silent> <buffer> hassecurity hasSecurity
  inoreabbrev <silent> <buffer> convdate convDate
  inoreabbrev <silent> <buffer> convint convInt
  inoreabbrev <silent> <buffer> convdec convDec
  inoreabbrev <silent> <buffer> convlog convLog
  inoreabbrev <silent> <buffer> logtochar logToChar
  inoreabbrev <silent> <buffer> getwffield getWFField
  inoreabbrev <silent> <buffer> setwffield setWFField
  inoreabbrev <silent> <buffer> getsysvar getSysVar
  inoreabbrev <silent> <buffer> getwfglobal getWFGlobal
  inoreabbrev <silent> <buffer> setwfglobal setWFGlobal
  inoreabbrev <silent> <buffer> setwffieldlength setWFFieldLength
  inoreabbrev <silent> <buffer> blankfill blankFill
  inoreabbrev <silent> <buffer> blankfields blankFields
  inoreabbrev <silent> <buffer> setbuttons setButtons
  inoreabbrev <silent> <buffer> setformbuttons setFormButtons
  inoreabbrev <silent> <buffer> sendbuttons sendButtons
  inoreabbrev <silent> <buffer> sendfields sendFields
  inoreabbrev <silent> <buffer> sendonefield sendOneField
  inoreabbrev <silent> <buffer> sendonefieldandable sendOneFieldAndAble
  inoreabbrev <silent> <buffer> sendfieldlengths sendFieldLengths
  inoreabbrev <silent> <buffer> sendfieldsandable sendFieldsAndAble
  inoreabbrev <silent> <buffer> senddata sendData
  inoreabbrev <silent> <buffer> senddatanowrap sendDataNoWrap
  inoreabbrev <silent> <buffer> sendmemo sendMemo
  inoreabbrev <silent> <buffer> getfunction getFunction
  inoreabbrev <silent> <buffer> checkedit checkEdit
  inoreabbrev <silent> <buffer> checkedittt checkEditTT
  inoreabbrev <silent> <buffer> showedits showEdits
  inoreabbrev <silent> <buffer> showeditstt showEditsTT
  inoreabbrev <silent> <buffer> getactive getActive
  inoreabbrev <silent> <buffer> setfocus setFocus
  inoreabbrev <silent> <buffer> disablescreen disableScreen
  inoreabbrev <silent> <buffer> enablescreen enableScreen
  inoreabbrev <silent> <buffer> sendconfirmbox sendConfirmBox
  inoreabbrev <silent> <buffer> senderrorbox sendErrorBox
  inoreabbrev <silent> <buffer> keychanged keyChanged
  inoreabbrev <silent> <buffer> sendconfirmationbox sendConfirmationBox
  inoreabbrev <silent> <buffer> sendyesnobox sendYesNoBox
  inoreabbrev <silent> <buffer> reallyleave reallyLeave
  inoreabbrev <silent> <buffer> sendprogressbar sendProgressBar
  inoreabbrev <silent> <buffer> rmfile rmFile
  inoreabbrev <silent> <buffer> namefile nameFile
  inoreabbrev <silent> <buffer> nameuserfile nameUserFile
  inoreabbrev <silent> <buffer> gettime getTime
  inoreabbrev <silent> <buffer> displayform displayForm
  inoreabbrev <silent> <buffer> closetopform closeTopForm
  inoreabbrev <silent> <buffer> settitles setTitles
  " }}}

  " {{{ capitalize wflatex functions
  inoreabbrev <silent> <buffer> bg-left BG-LEFT
  inoreabbrev <silent> <buffer> bg-center BG-CENTER
  inoreabbrev <silent> <buffer> bg-right BG-RIGHT
  inoreabbrev <silent> <buffer> default-header DEFAULT-HEADER
  inoreabbrev <silent> <buffer> tabular-header TABULAR-HEADER
  inoreabbrev <silent> <buffer> text-header TEXT-HEADER
  inoreabbrev <silent> <buffer> default-footer DEFAULT-FOOTER
  inoreabbrev <silent> <buffer> tabular-footer TABULAR-FOOTER
  inoreabbrev <silent> <buffer> text-footer TEXT-FOOTER
  inoreabbrev <silent> <buffer> auto-legend AUTO-LEGEND
  inoreabbrev <silent> <buffer> align-left ALIGN-LEFT
  inoreabbrev <silent> <buffer> align-center ALIGN-CENTER
  inoreabbrev <silent> <buffer> align-right ALIGN-RIGHT
  inoreabbrev <silent> <buffer> auto-labels AUTO-LABELS
  inoreabbrev <silent> <buffer> x-axis X-AXIS
  inoreabbrev <silent> <buffer> left-y-axis LEFT-Y-AXIS
  inoreabbrev <silent> <buffer> right-y-axis RIGHT-Y-AXIS
  inoreabbrev <silent> <buffer> secondary-left-y-axis SECONDARY-LEFT-Y-AXIS
  inoreabbrev <silent> <buffer> secondary-right-y-axis SECONDARY-RIGHT-Y-AXIS
  inoreabbrev <silent> <buffer> scatter-plot SCATTER-PLOT
  inoreabbrev <silent> <buffer> line-plot LINE-PLOT
  inoreabbrev <silent> <buffer> smooth-line-plot SMOOTH-LINE-PLOT
  inoreabbrev <silent> <buffer> bar-plot BAR-PLOT
  inoreabbrev <silent> <buffer> major-guide-plot MAJOR-GUIDE-PLOT
  inoreabbrev <silent> <buffer> minor-guide-plot MINOR-GUIDE-PLOT
  inoreabbrev <silent> <buffer> createparagraph createParagraph
  inoreabbrev <silent> <buffer> deleteparagraph deleteParagraph
  inoreabbrev <silent> <buffer> setparagraphlinespace setParagraphLineSpace
  inoreabbrev <silent> <buffer> getparagraphlinespace getParagraphLineSpace
  inoreabbrev <silent> <buffer> setparagraphatpagefoot setParagraphAtPageFoot
  inoreabbrev <silent> <buffer> getparagraphatpagefoot getParagraphAtPageFoot
  inoreabbrev <silent> <buffer> setshowparagraphborder setShowParagraphBorder
  inoreabbrev <silent> <buffer> getshowparagraphborder getShowParagraphBorder
  inoreabbrev <silent> <buffer> setparagraphtext setParagraphText
  inoreabbrev <silent> <buffer> appendtexttoparagraph appendTextToParagraph
  inoreabbrev <silent> <buffer> getparagraphtext getParagraphText
  inoreabbrev <silent> <buffer> addparagraphtoreport addParagraphToReport
  inoreabbrev <silent> <buffer> formattext formatText
  inoreabbrev <silent> <buffer> aligntext alignText
  inoreabbrev <silent> <buffer> texescape texEscape
  inoreabbrev <silent> <buffer> texnewline texNewline
  inoreabbrev <silent> <buffer> texsystem texSystem
  inoreabbrev <silent> <buffer> texpage texPage
  inoreabbrev <silent> <buffer> texdegree texDegree
  inoreabbrev <silent> <buffer> texdate texDate
  inoreabbrev <silent> <buffer> textimestamp texTimestamp
  inoreabbrev <silent> <buffer> texbox texBox
  inoreabbrev <silent> <buffer> texborderbox texBorderBox
  inoreabbrev <silent> <buffer> texwrapbox texWrapBox
  inoreabbrev <silent> <buffer> texborderwrapbox texBorderWrapBox
  inoreabbrev <silent> <buffer> createimage createImage
  inoreabbrev <silent> <buffer> deleteimage deleteImage
  inoreabbrev <silent> <buffer> setimagename setImageName
  inoreabbrev <silent> <buffer> getimagename getImageName
  inoreabbrev <silent> <buffer> setimageposition setImagePosition
  inoreabbrev <silent> <buffer> getimageposition getImagePosition
  inoreabbrev <silent> <buffer> setimagewidth setImageWidth
  inoreabbrev <silent> <buffer> getimagewidth getImageWidth
  inoreabbrev <silent> <buffer> setimageheight setImageHeight
  inoreabbrev <silent> <buffer> getimageheight getImageHeight
  inoreabbrev <silent> <buffer> setshowimageborder setShowImageBorder
  inoreabbrev <silent> <buffer> getshowimageborder getShowImageBorder
  inoreabbrev <silent> <buffer> addimagetoreport addImageToReport
  inoreabbrev <silent> <buffer> getimagetext getImageText
  inoreabbrev <silent> <buffer> createtable createTable
  inoreabbrev <silent> <buffer> deletetable deleteTable
  inoreabbrev <silent> <buffer> settablewidth setTableWidth
  inoreabbrev <silent> <buffer> gettablewidth getTableWidth
  inoreabbrev <silent> <buffer> settablealignment setTableAlignment
  inoreabbrev <silent> <buffer> gettablealignment getTableAlignment
  inoreabbrev <silent> <buffer> settableheaderalign setTableHeaderAlign
  inoreabbrev <silent> <buffer> gettableheaderalign getTableHeaderAlign
  inoreabbrev <silent> <buffer> settablecolumnalign setTableColumnAlign
  inoreabbrev <silent> <buffer> gettablecolumnalign getTableColumnAlign
  inoreabbrev <silent> <buffer> settablecolumnwidths setTableColumnWidths
  inoreabbrev <silent> <buffer> gettablecolumnwidths getTableColumnWidths
  inoreabbrev <silent> <buffer> settableweights setTableWeights
  inoreabbrev <silent> <buffer> gettableweights getTableWeights
  inoreabbrev <silent> <buffer> settablehascompactrows setTableHasCompactRows
  inoreabbrev <silent> <buffer> gettablehascompactrows getTableHasCompactRows
  inoreabbrev <silent> <buffer> settablehasstripedrows setTableHasStripedRows
  inoreabbrev <silent> <buffer> gettablehasstripedrows getTableHasStripedRows
  inoreabbrev <silent> <buffer> settablehasborders setTableHasBorders
  inoreabbrev <silent> <buffer> gettablehasborders getTableHasBorders
  inoreabbrev <silent> <buffer> addheaderrowtotable addHeaderRowToTable
  inoreabbrev <silent> <buffer> removeheaderrowsfromtable removeHeaderRowsFromTable
  inoreabbrev <silent> <buffer> addrowtotable addRowToTable
  inoreabbrev <silent> <buffer> removerowsfromtable removeRowsFromTable
  inoreabbrev <silent> <buffer> addtabletoreport addTableToReport
  inoreabbrev <silent> <buffer> texmulticolumn texMultiColumn
  inoreabbrev <silent> <buffer> texmultirow texMultiRow
  inoreabbrev <silent> <buffer> texmidrule texMidRule
  inoreabbrev <silent> <buffer> texcmidrule texCMidRule
  inoreabbrev <silent> <buffer> texlightmidrule texLightMidRule
  inoreabbrev <silent> <buffer> texlightcmidrule texLightCMidRule
  inoreabbrev <silent> <buffer> texrowbackground texRowBackground
  inoreabbrev <silent> <buffer> createpiechart createPieChart
  inoreabbrev <silent> <buffer> deletepiechart deletePieChart
  inoreabbrev <silent> <buffer> setpiechartwidth setPieChartWidth
  inoreabbrev <silent> <buffer> getpiechartwidth getPieChartWidth
  inoreabbrev <silent> <buffer> setpiechartalignment setPieChartAlignment
  inoreabbrev <silent> <buffer> getpiechartalignment getPieChartAlignment
  inoreabbrev <silent> <buffer> setpiechartradius setPieChartRadius
  inoreabbrev <silent> <buffer> getpiechartradius getPieChartRadius
  inoreabbrev <silent> <buffer> setpiechartexplode setPieChartExplode
  inoreabbrev <silent> <buffer> getpiechartexplode getPieChartExplode
  inoreabbrev <silent> <buffer> setshowpiechartadjtotal setShowPieChartAdjTotal
  inoreabbrev <silent> <buffer> getshowpiechartadjtotal getShowPieChartAdjTotal
  inoreabbrev <silent> <buffer> setshowpiechartlegend setShowPieChartLegend
  inoreabbrev <silent> <buffer> getshowpiechartlegend getShowPieChartLegend
  inoreabbrev <silent> <buffer> setpiechartdataformat setPieChartDataFormat
  inoreabbrev <silent> <buffer> getpiechartdataformat getPieChartDataFormat
  inoreabbrev <silent> <buffer> setshowpiechartlegendpct setShowPieChartLegendPct
  inoreabbrev <silent> <buffer> getshowpiechartlegendpct getShowPieChartLegendPct
  inoreabbrev <silent> <buffer> setshowpiecharttotal setShowPieChartTotal
  inoreabbrev <silent> <buffer> getshowpiecharttotal getShowPieChartTotal
  inoreabbrev <silent> <buffer> setshowpiechartlabels setShowPieChartLabels
  inoreabbrev <silent> <buffer> getshowpiechartlabels getShowPieChartLabels
  inoreabbrev <silent> <buffer> setpiechartlegendheader setPieChartLegendHeader
  inoreabbrev <silent> <buffer> getpiechartlegendheader getPieChartLegendHeader
  inoreabbrev <silent> <buffer> setpiechartlegend setPieChartLegend
  inoreabbrev <silent> <buffer> setpiechartlegendalign setPieChartLegendAlign
  inoreabbrev <silent> <buffer> getpiechartlegendalign getPieChartLegendAlign
  inoreabbrev <silent> <buffer> addpiechartslice addPieChartSlice
  inoreabbrev <silent> <buffer> removepiechartslices removePieChartSlices
  inoreabbrev <silent> <buffer> setpiechartslicevalue setPieChartSliceValue
  inoreabbrev <silent> <buffer> getpiechartslicevalue getPieChartSliceValue
  inoreabbrev <silent> <buffer> setpiechartsliceexplode setPieChartSliceExplode
  inoreabbrev <silent> <buffer> getpiechartsliceexplode getPieChartSliceExplode
  inoreabbrev <silent> <buffer> addpiecharttoreport addPieChartToReport
  inoreabbrev <silent> <buffer> creategraph createGraph
  inoreabbrev <silent> <buffer> deletegraph deleteGraph
  inoreabbrev <silent> <buffer> setgraphalignment setGraphAlignment
  inoreabbrev <silent> <buffer> getgraphalignment getGraphAlignment
  inoreabbrev <silent> <buffer> setgraphxscale setGraphXScale
  inoreabbrev <silent> <buffer> getgraphxscale getGraphXScale
  inoreabbrev <silent> <buffer> setgraphyscale setGraphYScale
  inoreabbrev <silent> <buffer> getgraphyscale getGraphYScale
  inoreabbrev <silent> <buffer> setgraphytickcount setGraphYTickCount
  inoreabbrev <silent> <buffer> getgraphytickcount getGraphYTickCount
  inoreabbrev <silent> <buffer> setshowgraphxlines setShowGraphXLines
  inoreabbrev <silent> <buffer> getshowgraphxlines getShowGraphXLines
  inoreabbrev <silent> <buffer> setshowgraphylines setShowGraphYLines
  inoreabbrev <silent> <buffer> getshowgraphylines getShowGraphYLines
  inoreabbrev <silent> <buffer> setshowgraphplotlabels setShowGraphPlotLabels
  inoreabbrev <silent> <buffer> getshowgraphplotlabels getShowGraphPlotLabels
  inoreabbrev <silent> <buffer> setshowgraphlegend setShowGraphLegend
  inoreabbrev <silent> <buffer> getshowgraphlegend getShowGraphLegend
  inoreabbrev <silent> <buffer> setgraphlegendheader setGraphLegendHeader
  inoreabbrev <silent> <buffer> getgraphlegendheader getGraphLegendHeader
  inoreabbrev <silent> <buffer> setgraphlegend setGraphLegend
  inoreabbrev <silent> <buffer> createaxis createAxis
  inoreabbrev <silent> <buffer> deleteaxis deleteAxis
  inoreabbrev <silent> <buffer> setaxistype setAxisType
  inoreabbrev <silent> <buffer> getaxistype getAxisType
  inoreabbrev <silent> <buffer> setaxistitle setAxisTitle
  inoreabbrev <silent> <buffer> getaxistitle getAxisTitle
  inoreabbrev <silent> <buffer> setaxislegendtitle setAxisLegendTitle
  inoreabbrev <silent> <buffer> getaxislegendtitle getAxisLegendTitle
  inoreabbrev <silent> <buffer> setaxisymin setAxisYMin
  inoreabbrev <silent> <buffer> getaxisymin getAxisYMin
  inoreabbrev <silent> <buffer> setaxisymax setAxisYMax
  inoreabbrev <silent> <buffer> getaxisymax getAxisYMax
  inoreabbrev <silent> <buffer> setaxisticklabelscale setAxisTickLabelScale
  inoreabbrev <silent> <buffer> getaxisticklabelscale getAxisTickLabelScale
  inoreabbrev <silent> <buffer> setaxisticklabeloffset setAxisTickLabelOffset
  inoreabbrev <silent> <buffer> getaxisticklabeloffset getAxisTickLabelOffset
  inoreabbrev <silent> <buffer> setaxismajorinterval setAxisMajorInterval
  inoreabbrev <silent> <buffer> getaxismajorinterval getAxisMajorInterval
  inoreabbrev <silent> <buffer> setaxismajoroffset setAxisMajorOffset
  inoreabbrev <silent> <buffer> getaxismajoroffset getAxisMajorOffset
  inoreabbrev <silent> <buffer> setaxisproportion setAxisProportion
  inoreabbrev <silent> <buffer> getaxisproportion getAxisProportion
  inoreabbrev <silent> <buffer> setaxisstep setAxisStep
  inoreabbrev <silent> <buffer> getaxisstep getAxisStep
  inoreabbrev <silent> <buffer> setaxistickformat setAxisTickFormat
  inoreabbrev <silent> <buffer> getaxistickformat getAxisTickFormat
  inoreabbrev <silent> <buffer> setaxisticklabels setAxisTickLabels
  inoreabbrev <silent> <buffer> getaxisticklabels getAxisTickLabels
  inoreabbrev <silent> <buffer> addaxistograph addAxisToGraph
  inoreabbrev <silent> <buffer> removegyaxes removeGYAxes
  inoreabbrev <silent> <buffer> setgraphhardcode setGraphHardCode
  inoreabbrev <silent> <buffer> getgraphhardcode getGraphHardCode
  inoreabbrev <silent> <buffer> createplot createPlot
  inoreabbrev <silent> <buffer> deleteplot deletePlot
  inoreabbrev <silent> <buffer> setplotname setPlotName
  inoreabbrev <silent> <buffer> getplotname getPlotName
  inoreabbrev <silent> <buffer> setplotaxis setPlotAxis
  inoreabbrev <silent> <buffer> getplotaxis getPlotAxis
  inoreabbrev <silent> <buffer> setplotcolor setPlotColor
  inoreabbrev <silent> <buffer> getplotcolor getPlotColor
  inoreabbrev <silent> <buffer> createpoint createPoint
  inoreabbrev <silent> <buffer> deletepoint deletePoint
  inoreabbrev <silent> <buffer> setpointx setPointX
  inoreabbrev <silent> <buffer> getpointx getPointX
  inoreabbrev <silent> <buffer> setpointy setPointY
  inoreabbrev <silent> <buffer> getpointy getPointY
  inoreabbrev <silent> <buffer> setpointcoordinates setPointCoordinates
  inoreabbrev <silent> <buffer> setpointlabel setPointLabel
  inoreabbrev <silent> <buffer> getpointlabel getPointLabel
  inoreabbrev <silent> <buffer> setplotpoints setPlotPoints
  inoreabbrev <silent> <buffer> getplotpoints getPlotPoints
  inoreabbrev <silent> <buffer> setplotpointlabels setPlotPointLabels
  inoreabbrev <silent> <buffer> getplotpointlabels getPlotPointLabels
  inoreabbrev <silent> <buffer> addplottograph addPlotToGraph
  inoreabbrev <silent> <buffer> removeplots removePlots
  inoreabbrev <silent> <buffer> addgraphtoreport addGraphToReport
  inoreabbrev <silent> <buffer> texcircle texCircle
  inoreabbrev <silent> <buffer> texsquare texSquare
  inoreabbrev <silent> <buffer> texgradientsquare texGradientSquare
  inoreabbrev <silent> <buffer> texdiamond texDiamond
  inoreabbrev <silent> <buffer> textriangle texTriangle
  inoreabbrev <silent> <buffer> texcross texCross
  inoreabbrev <silent> <buffer> texplus texPlus
  inoreabbrev <silent> <buffer> createreport createReport
  inoreabbrev <silent> <buffer> deletereport deleteReport
  inoreabbrev <silent> <buffer> setreporttitle setReportTitle
  inoreabbrev <silent> <buffer> getreporttitle getReportTitle
  inoreabbrev <silent> <buffer> setreportbgimage setReportBGImage
  inoreabbrev <silent> <buffer> getreportbgimage getReportBGImage
  inoreabbrev <silent> <buffer> setshowreportheader setShowReportHeader
  inoreabbrev <silent> <buffer> getshowreportheader getShowReportHeader
  inoreabbrev <silent> <buffer> setshowreportheaderline setShowReportHeaderLine
  inoreabbrev <silent> <buffer> getshowreportheaderline getShowReportHeaderLine
  inoreabbrev <silent> <buffer> setreportheadertype setReportHeaderType
  inoreabbrev <silent> <buffer> getreportheadertype getReportHeaderType
  inoreabbrev <silent> <buffer> setreportheader setReportHeader
  inoreabbrev <silent> <buffer> getreportheader getReportHeader
  inoreabbrev <silent> <buffer> setshowreportfooter setShowReportFooter
  inoreabbrev <silent> <buffer> getshowreportfooter getShowReportFooter
  inoreabbrev <silent> <buffer> setreportfootertype setReportFooterType
  inoreabbrev <silent> <buffer> getreportfootertype getReportFooterType
  inoreabbrev <silent> <buffer> setshowreportfooterline setShowReportFooterLine
  inoreabbrev <silent> <buffer> getshowreportfooterline getShowReportFooterLine
  inoreabbrev <silent> <buffer> setreportfooter setReportFooter
  inoreabbrev <silent> <buffer> getreportfooter getReportFooter
  inoreabbrev <silent> <buffer> setreportlandscape setReportLandscape
  inoreabbrev <silent> <buffer> getreportlandscape getReportLandscape
  inoreabbrev <silent> <buffer> setreportmargins setReportMargins
  inoreabbrev <silent> <buffer> getreportmargins getReportMargins
  inoreabbrev <silent> <buffer> insertpagebreak insertPageBreak
  inoreabbrev <silent> <buffer> inserttoc insertTOC
  inoreabbrev <silent> <buffer> inserthiddensection insertHiddenSection
  inoreabbrev <silent> <buffer> texhiddensection texHiddenSection
  inoreabbrev <silent> <buffer> insertsection insertSection
  inoreabbrev <silent> <buffer> texsection texSection
  inoreabbrev <silent> <buffer> inserthspace insertHSpace
  inoreabbrev <silent> <buffer> texhspace texHSpace
  inoreabbrev <silent> <buffer> insertvspace insertVSpace
  inoreabbrev <silent> <buffer> texvspace texVSpace
  inoreabbrev <silent> <buffer> inserthline insertHLine
  inoreabbrev <silent> <buffer> texhline texHLine
  inoreabbrev <silent> <buffer> generatereport generateReport
  " }}}
endfunction " }}}


" {{{ disable progress capitalization
function! Unabbrev()
  if !s:autocap
    return
  else
    let s:autocap=0
  endif

  " {{{ progress keyword capitalization
  iunabbrev <buffer> _cbit
  iunabbrev <buffer> _control
  iunabbrev <buffer> _dcm
  iunabbrev <buffer> _list
  iunabbrev <buffer> _memory
  iunabbrev <buffer> _msg
  iunabbrev <buffer> _pcontrol
  iunabbrev <buffer> _serial
  iunabbrev <buffer> _serial-num
  iunabbrev <buffer> _trace
  iunabbrev <buffer> abs
  iunabbrev <buffer> absolute
  iunabbrev <buffer> accelerator
  iunabbrev <buffer> accum
  iunabbrev <buffer> accumulate
  iunabbrev <buffer> across
  iunabbrev <buffer> add
  iunabbrev <buffer> add-first
  iunabbrev <buffer> add-last
  iunabbrev <buffer> advise
  iunabbrev <buffer> alias
  iunabbrev <buffer> all
  iunabbrev <buffer> allow-replication
  iunabbrev <buffer> alter
  iunabbrev <buffer> ambig
  iunabbrev <buffer> ambiguous
  iunabbrev <buffer> analyze
  iunabbrev <buffer> and
  iunabbrev <buffer> any
  iunabbrev <buffer> anywhere
  iunabbrev <buffer> append
  iunabbrev <buffer> append-child
  iunabbrev <buffer> application
  iunabbrev <buffer> apply
  iunabbrev <buffer> as
  iunabbrev <buffer> as-cursor
  iunabbrev <buffer> asc
  iunabbrev <buffer> ascending
  iunabbrev <buffer> ask-overwrite
  iunabbrev <buffer> assign
  iunabbrev <buffer> at
  iunabbrev <buffer> attr
  iunabbrev <buffer> attr-space
  iunabbrev <buffer> attribute-names
  iunabbrev <buffer> authorization
  iunabbrev <buffer> auto-end-key
  iunabbrev <buffer> auto-endkey
  iunabbrev <buffer> auto-go
  iunabbrev <buffer> auto-ret
  iunabbrev <buffer> auto-return
  iunabbrev <buffer> auto-zap
  iunabbrev <buffer> avail
  iunabbrev <buffer> available
  iunabbrev <buffer> available-formats
  iunabbrev <buffer> ave
  iunabbrev <buffer> average
  iunabbrev <buffer> avg
  iunabbrev <buffer> back
  iunabbrev <buffer> background
  iunabbrev <buffer> backward
  iunabbrev <buffer> backwards
  iunabbrev <buffer> base-key
  iunabbrev <buffer> batch
  iunabbrev <buffer> batch-mode
  iunabbrev <buffer> begins
  iunabbrev <buffer> between
  iunabbrev <buffer> binary
  iunabbrev <buffer> bind-where
  iunabbrev <buffer> blank
  iunabbrev <buffer> block-iteration-display
  iunabbrev <buffer> both
  iunabbrev <buffer> bottom
  iunabbrev <buffer> box
  iunabbrev <buffer> break
  iunabbrev <buffer> btos
  iunabbrev <buffer> buffer
  iunabbrev <buffer> buffer-chars
  iunabbrev <buffer> buffer-compare
  iunabbrev <buffer> buffer-copy
  iunabbrev <buffer> buffer-lines
  iunabbrev <buffer> by
  iunabbrev <buffer> byte
  iunabbrev <buffer> bytes-read
  iunabbrev <buffer> bytes-written
  iunabbrev <buffer> cache
  iunabbrev <buffer> cache-size
  iunabbrev <buffer> call
  iunabbrev <buffer> can-do
  iunabbrev <buffer> can-find
  iunabbrev <buffer> can-query
  iunabbrev <buffer> can-set
  iunabbrev <buffer> cancel-break
  iunabbrev <buffer> caps
  iunabbrev <buffer> case
  iunabbrev <buffer> case-sensitive
  iunabbrev <buffer> cdecl
  iunabbrev <buffer> char
  iunabbrev <buffer> character
  iunabbrev <buffer> character_length
  iunabbrev <buffer> charset
  iunabbrev <buffer> check
  iunabbrev <buffer> child-num
  iunabbrev <buffer> choose
  iunabbrev <buffer> chr
  iunabbrev <buffer> class
  iunabbrev <buffer> clone-node
  iunabbrev <buffer> close
  iunabbrev <buffer> code
  iunabbrev <buffer> codepage
  iunabbrev <buffer> codepage-convert
  iunabbrev <buffer> col
  iunabbrev <buffer> col-of
  iunabbrev <buffer> colon
  iunabbrev <buffer> colon-align
  iunabbrev <buffer> colon-aligned
  iunabbrev <buffer> column
  iunabbrev <buffer> column-label
  iunabbrev <buffer> column-of
  iunabbrev <buffer> column-scrolling
  iunabbrev <buffer> columns
  iunabbrev <buffer> command
  iunabbrev <buffer> compile
  iunabbrev <buffer> compiler
  iunabbrev <buffer> complete
  iunabbrev <buffer> connect
  iunabbrev <buffer> connected
  iunabbrev <buffer> constrained
  iunabbrev <buffer> contents
  iunabbrev <buffer> context
  iunabbrev <buffer> control
  iunabbrev <buffer> control-container
  iunabbrev <buffer> control-form
  iunabbrev <buffer> convert
  iunabbrev <buffer> convert-to-offset
  iunabbrev <buffer> count
  iunabbrev <buffer> count-of
  iunabbrev <buffer> cpcase
  iunabbrev <buffer> cpcoll
  iunabbrev <buffer> cpint
  iunabbrev <buffer> cpinternal
  iunabbrev <buffer> cplog
  iunabbrev <buffer> cpprint
  iunabbrev <buffer> cprcodein
  iunabbrev <buffer> cprcodeout
  iunabbrev <buffer> cpstream
  iunabbrev <buffer> cpterm
  iunabbrev <buffer> crc-val
  iunabbrev <buffer> crc-value
  iunabbrev <buffer> create
  iunabbrev <buffer> create-control
  iunabbrev <buffer> create-node
  iunabbrev <buffer> create-node-namespace
  iunabbrev <buffer> create-result-list-entry
  iunabbrev <buffer> create-test-file
  iunabbrev <buffer> ctos
  iunabbrev <buffer> current
  iunabbrev <buffer> current-changed
  iunabbrev <buffer> current-column
  iunabbrev <buffer> current-env
  iunabbrev <buffer> current-environment
  iunabbrev <buffer> current-iteration
  iunabbrev <buffer> current-lang
  iunabbrev <buffer> current-language
  iunabbrev <buffer> current-result-row
  iunabbrev <buffer> current-row-modified
  iunabbrev <buffer> current-value
  iunabbrev <buffer> current_date
  iunabbrev <buffer> data-entry-return
  iunabbrev <buffer> data-relation
  iunabbrev <buffer> data-type
  iunabbrev <buffer> database
  iunabbrev <buffer> dataservers
  iunabbrev <buffer> dataset
  iunabbrev <buffer> date
  iunabbrev <buffer> date-format
  iunabbrev <buffer> day
  iunabbrev <buffer> db-references
  iunabbrev <buffer> dbcodepage
  iunabbrev <buffer> dbcollation
  iunabbrev <buffer> dbname
  iunabbrev <buffer> dbrest
  iunabbrev <buffer> dbrestrictions
  iunabbrev <buffer> dbtaskid
  iunabbrev <buffer> dbtype
  iunabbrev <buffer> dbvers
  iunabbrev <buffer> dbversion
  iunabbrev <buffer> dde
  iunabbrev <buffer> dde-error
  iunabbrev <buffer> dde-id
  iunabbrev <buffer> dde-item
  iunabbrev <buffer> dde-name
  iunabbrev <buffer> dde-topic
  iunabbrev <buffer> deblank
  iunabbrev <buffer> debug
  iunabbrev <buffer> debug-list
  iunabbrev <buffer> debugger
  iunabbrev <buffer> dec
  iunabbrev <buffer> decimal
  iunabbrev <buffer> decimals
  iunabbrev <buffer> declare
  iunabbrev <buffer> def
  iunabbrev <buffer> default
  iunabbrev <buffer> default-extension
  iunabbrev <buffer> default-noxlate
  iunabbrev <buffer> defer-lob-fetch
  iunabbrev <buffer> define
  iunabbrev <buffer> defined
  iunabbrev <buffer> delete
  iunabbrev <buffer> delete-char
  iunabbrev <buffer> delete-current-row
  iunabbrev <buffer> delete-line
  iunabbrev <buffer> delete-node
  iunabbrev <buffer> delete-selected-row
  iunabbrev <buffer> delete-selected-rows
  iunabbrev <buffer> delimiter
  iunabbrev <buffer> desc
  iunabbrev <buffer> descending
  iunabbrev <buffer> design-mode
  iunabbrev <buffer> dict
  iunabbrev <buffer> dictionary
  iunabbrev <buffer> dir
  iunabbrev <buffer> disable
  iunabbrev <buffer> disabled
  iunabbrev <buffer> discon
  iunabbrev <buffer> disconnect
  iunabbrev <buffer> dislpay
  iunabbrev <buffer> display
  iunabbrev <buffer> display-message
  iunabbrev <buffer> display-type
  iunabbrev <buffer> distinct
  iunabbrev <buffer> do
  iunabbrev <buffer> dos
  iunabbrev <buffer> double
  iunabbrev <buffer> down
  iunabbrev <buffer> drop
  iunabbrev <buffer> dump
  iunabbrev <buffer> dynamic
  iunabbrev <buffer> each
  iunabbrev <buffer> echo
  iunabbrev <buffer> editing
  iunabbrev <buffer> else
  iunabbrev <buffer> empty
  iunabbrev <buffer> enable
  iunabbrev <buffer> encode
  iunabbrev <buffer> encoding
  iunabbrev <buffer> end
  iunabbrev <buffer> end-key
  iunabbrev <buffer> endkey
  iunabbrev <buffer> entered
  iunabbrev <buffer> entry
  iunabbrev <buffer> eq
  iunabbrev <buffer> error
  iunabbrev <buffer> error-col
  iunabbrev <buffer> error-column
  iunabbrev <buffer> error-row
  iunabbrev <buffer> error-stat
  iunabbrev <buffer> error-status
  iunabbrev <buffer> escape
  iunabbrev <buffer> etime
  iunabbrev <buffer> event
  iunabbrev <buffer> event-type
  iunabbrev <buffer> events
  iunabbrev <buffer> except
  iunabbrev <buffer> exclusive
  iunabbrev <buffer> exclusive-id
  iunabbrev <buffer> exclusive-lock
  iunabbrev <buffer> execute
  iunabbrev <buffer> exists
  iunabbrev <buffer> exp
  iunabbrev <buffer> expand
  iunabbrev <buffer> export
  iunabbrev <buffer> extended
  iunabbrev <buffer> extent
  iunabbrev <buffer> external
  iunabbrev <buffer> extract
  iunabbrev <buffer> fetch
  iunabbrev <buffer> fetch-selected-row
  iunabbrev <buffer> field
  iunabbrev <buffer> fields
  iunabbrev <buffer> file
  iunabbrev <buffer> file-info
  iunabbrev <buffer> file-information
  iunabbrev <buffer> file-name
  iunabbrev <buffer> file-offset
  iunabbrev <buffer> file-size
  iunabbrev <buffer> file-type
  iunabbrev <buffer> filename
  iunabbrev <buffer> fill
  iunabbrev <buffer> fill-in
  iunabbrev <buffer> filled
  iunabbrev <buffer> filters
  iunabbrev <buffer> find
  iunabbrev <buffer> find-case-sensitive
  iunabbrev <buffer> find-global
  iunabbrev <buffer> find-next-occurrence
  iunabbrev <buffer> find-prev-occurrence
  iunabbrev <buffer> find-select
  iunabbrev <buffer> find-wrap-around
  iunabbrev <buffer> first
  iunabbrev <buffer> first-child
  iunabbrev <buffer> first-column
  iunabbrev <buffer> first-of
  iunabbrev <buffer> first-proc
  iunabbrev <buffer> first-procedure
  iunabbrev <buffer> fixed-only
  iunabbrev <buffer> float
  iunabbrev <buffer> focus
  iunabbrev <buffer> for
  iunabbrev <buffer> force-file
  iunabbrev <buffer> fore
  iunabbrev <buffer> foreground
  iunabbrev <buffer> form-input
  iunabbrev <buffer> format
  iunabbrev <buffer> forward
  iunabbrev <buffer> forwards
  iunabbrev <buffer> frame
  iunabbrev <buffer> frame-col
  iunabbrev <buffer> frame-db
  iunabbrev <buffer> frame-down
  iunabbrev <buffer> frame-field
  iunabbrev <buffer> frame-file
  iunabbrev <buffer> frame-index
  iunabbrev <buffer> frame-line
  iunabbrev <buffer> frame-name
  iunabbrev <buffer> frame-row
  iunabbrev <buffer> frame-spacing
  iunabbrev <buffer> frame-val
  iunabbrev <buffer> frame-value
  iunabbrev <buffer> frame-x
  iunabbrev <buffer> frame-y
  iunabbrev <buffer> frequency
  iunabbrev <buffer> from
  iunabbrev <buffer> from-cur
  iunabbrev <buffer> from-current
  iunabbrev <buffer> full-pathname
  iunabbrev <buffer> function
  iunabbrev <buffer> gateway
  iunabbrev <buffer> gateways
  iunabbrev <buffer> get
  iunabbrev <buffer> get-attribute
  iunabbrev <buffer> get-attribute-node
  iunabbrev <buffer> get-byte
  iunabbrev <buffer> get-bytes-available
  iunabbrev <buffer> get-char-property
  iunabbrev <buffer> get-child
  iunabbrev <buffer> get-codepage
  iunabbrev <buffer> get-codepages
  iunabbrev <buffer> get-coll
  iunabbrev <buffer> get-collations
  iunabbrev <buffer> get-document-element
  iunabbrev <buffer> get-double
  iunabbrev <buffer> get-dynamic
  iunabbrev <buffer> get-file
  iunabbrev <buffer> get-float
  iunabbrev <buffer> get-iteration
  iunabbrev <buffer> get-key-val
  iunabbrev <buffer> get-key-value
  iunabbrev <buffer> get-license
  iunabbrev <buffer> get-long
  iunabbrev <buffer> get-message
  iunabbrev <buffer> get-number
  iunabbrev <buffer> get-parent
  iunabbrev <buffer> get-pointer-value
  iunabbrev <buffer> get-repositioned-row
  iunabbrev <buffer> get-selected-wid
  iunabbrev <buffer> get-selected-widget
  iunabbrev <buffer> get-short
  iunabbrev <buffer> get-signature
  iunabbrev <buffer> get-size
  iunabbrev <buffer> get-string
  iunabbrev <buffer> get-tab-item
  iunabbrev <buffer> get-unsigned-short
  iunabbrev <buffer> getbyte
  iunabbrev <buffer> glob
  iunabbrev <buffer> global
  iunabbrev <buffer> global-define
  iunabbrev <buffer> go-on
  iunabbrev <buffer> go-pend
  iunabbrev <buffer> go-pending
  iunabbrev <buffer> grant
  iunabbrev <buffer> group
  iunabbrev <buffer> gt
  iunabbrev <buffer> handle
  iunabbrev <buffer> having
  iunabbrev <buffer> header
  iunabbrev <buffer> hide
  iunabbrev <buffer> hwnd
  iunabbrev <buffer> if
  iunabbrev <buffer> immediate-display
  iunabbrev <buffer> import
  iunabbrev <buffer> import-node
  iunabbrev <buffer> in
  iunabbrev <buffer> index
  iunabbrev <buffer> index-hint
  iunabbrev <buffer> indexed-reposition
  iunabbrev <buffer> indicator
  iunabbrev <buffer> info
  iunabbrev <buffer> information
  iunabbrev <buffer> init
  iunabbrev <buffer> initial
  iunabbrev <buffer> initial-dir
  iunabbrev <buffer> initial-filter
  iunabbrev <buffer> initialize-document-type
  iunabbrev <buffer> initiate
  iunabbrev <buffer> inner
  iunabbrev <buffer> inner-chars
  iunabbrev <buffer> inner-lines
  iunabbrev <buffer> input
  iunabbrev <buffer> input-output
  iunabbrev <buffer> insert
  iunabbrev <buffer> insert-backtab
  iunabbrev <buffer> insert-before
  iunabbrev <buffer> insert-file
  iunabbrev <buffer> insert-row
  iunabbrev <buffer> insert-string
  iunabbrev <buffer> insert-tab
  iunabbrev <buffer> int
  iunabbrev <buffer> integer
  iunabbrev <buffer> internal-entries
  iunabbrev <buffer> into
  iunabbrev <buffer> is
  iunabbrev <buffer> is-attr
  iunabbrev <buffer> is-attr-space
  iunabbrev <buffer> is-lead
  iunabbrev <buffer> is-lead-byte
  iunabbrev <buffer> is-row-selected
  iunabbrev <buffer> is-selected
  iunabbrev <buffer> item
  iunabbrev <buffer> items-per-row
  iunabbrev <buffer> join
  iunabbrev <buffer> join-by-sqldb
  iunabbrev <buffer> kblabel
  iunabbrev <buffer> keep-frame-z-ord
  iunabbrev <buffer> keep-frame-z-order
  iunabbrev <buffer> keep-messages
  iunabbrev <buffer> keep-tab-order
  iunabbrev <buffer> key
  iunabbrev <buffer> key-code
  iunabbrev <buffer> key-func
  iunabbrev <buffer> key-function
  iunabbrev <buffer> key-label
  iunabbrev <buffer> keycode
  iunabbrev <buffer> keyfunc
  iunabbrev <buffer> keyfunction
  iunabbrev <buffer> keylabel
  iunabbrev <buffer> keys
  iunabbrev <buffer> keyword
  iunabbrev <buffer> keyword-all
  iunabbrev <buffer> label
  iunabbrev <buffer> labels
  iunabbrev <buffer> language
  iunabbrev <buffer> languages
  iunabbrev <buffer> large
  iunabbrev <buffer> large-to-small
  iunabbrev <buffer> last
  iunabbrev <buffer> last-child
  iunabbrev <buffer> last-event
  iunabbrev <buffer> last-key
  iunabbrev <buffer> last-of
  iunabbrev <buffer> last-procedure
  iunabbrev <buffer> lastkey
  iunabbrev <buffer> lc
  iunabbrev <buffer> ldbname
  iunabbrev <buffer> le
  iunabbrev <buffer> leading
  iunabbrev <buffer> leave
  iunabbrev <buffer> left
  iunabbrev <buffer> left-trim
  iunabbrev <buffer> length
  iunabbrev <buffer> library
  iunabbrev <buffer> like
  iunabbrev <buffer> line
  iunabbrev <buffer> line-count
  iunabbrev <buffer> line-counter
  iunabbrev <buffer> list-events
  iunabbrev <buffer> list-items
  iunabbrev <buffer> list-query-attrs
  iunabbrev <buffer> list-set-attrs
  iunabbrev <buffer> listing
  iunabbrev <buffer> load
  iunabbrev <buffer> load-control
  iunabbrev <buffer> local-name
  iunabbrev <buffer> locked
  iunabbrev <buffer> log
  iunabbrev <buffer> logical
  iunabbrev <buffer> longchar-to-node-value
  iunabbrev <buffer> lookahead
  iunabbrev <buffer> lookup
  iunabbrev <buffer> lower
  iunabbrev <buffer> lt
  iunabbrev <buffer> machine-class
  iunabbrev <buffer> manual-highlight
  iunabbrev <buffer> map
  iunabbrev <buffer> matches
  iunabbrev <buffer> max
  iunabbrev <buffer> max-data-guess
  iunabbrev <buffer> max-val
  iunabbrev <buffer> max-value
  iunabbrev <buffer> maximum
  iunabbrev <buffer> member
  iunabbrev <buffer> memory
  iunabbrev <buffer> memptr-to-node-value
  iunabbrev <buffer> message
  iunabbrev <buffer> message-area
  iunabbrev <buffer> message-line
  iunabbrev <buffer> message-lines
  iunabbrev <buffer> method
  iunabbrev <buffer> min
  iunabbrev <buffer> min-val
  iunabbrev <buffer> min-value
  iunabbrev <buffer> minimum
  iunabbrev <buffer> mod
  iunabbrev <buffer> modified
  iunabbrev <buffer> modulo
  iunabbrev <buffer> month
  iunabbrev <buffer> mpe
  iunabbrev <buffer> multiple
  iunabbrev <buffer> multiple-key
  iunabbrev <buffer> multitasking-interval
  iunabbrev <buffer> must-exist
  iunabbrev <buffer> name
  iunabbrev <buffer> namespace-prefix
  iunabbrev <buffer> namespace-uri
  iunabbrev <buffer> native
  iunabbrev <buffer> nested
  iunabbrev <buffer> new
  iunabbrev <buffer> new-row
  iunabbrev <buffer> next
  iunabbrev <buffer> no-apply
  iunabbrev <buffer> no-assign
  iunabbrev <buffer> no-attr
  iunabbrev <buffer> no-attr-space
  iunabbrev <buffer> no-bind-where
  iunabbrev <buffer> no-box
  iunabbrev <buffer> no-convert
  iunabbrev <buffer> no-current-value
  iunabbrev <buffer> no-debug
  iunabbrev <buffer> no-echo
  iunabbrev <buffer> no-error
  iunabbrev <buffer> no-help
  iunabbrev <buffer> no-index-hint
  iunabbrev <buffer> no-join-by-sqldb
  iunabbrev <buffer> no-label
  iunabbrev <buffer> no-labels
  iunabbrev <buffer> no-lock
  iunabbrev <buffer> no-lookahead
  iunabbrev <buffer> no-map
  iunabbrev <buffer> no-message
  iunabbrev <buffer> no-pause
  iunabbrev <buffer> no-prefetch
  iunabbrev <buffer> no-row-markers
  iunabbrev <buffer> no-scrolling
  iunabbrev <buffer> no-separate-connection
  iunabbrev <buffer> no-separators
  iunabbrev <buffer> no-undo
  iunabbrev <buffer> no-val
  iunabbrev <buffer> no-validate
  iunabbrev <buffer> no-wait
  iunabbrev <buffer> no-word-wrap
  iunabbrev <buffer> node-value
  iunabbrev <buffer> node-value-to-longchar
  iunabbrev <buffer> node-value-to-memptr
  iunabbrev <buffer> none
  iunabbrev <buffer> normalize
  iunabbrev <buffer> not
  iunabbrev <buffer> null
  iunabbrev <buffer> num-aliases
  iunabbrev <buffer> num-children
  iunabbrev <buffer> num-col
  iunabbrev <buffer> num-columns
  iunabbrev <buffer> num-copies
  iunabbrev <buffer> num-dbs
  iunabbrev <buffer> num-entries
  iunabbrev <buffer> num-formats
  iunabbrev <buffer> num-items
  iunabbrev <buffer> num-iterations
  iunabbrev <buffer> num-lines
  iunabbrev <buffer> num-messages
  iunabbrev <buffer> num-results
  iunabbrev <buffer> num-to-retain
  iunabbrev <buffer> numeric
  iunabbrev <buffer> numeric-format
  iunabbrev <buffer> octet_length
  iunabbrev <buffer> of
  iunabbrev <buffer> off
  iunabbrev <buffer> ok
  iunabbrev <buffer> ok-cancel
  iunabbrev <buffer> old
  iunabbrev <buffer> on
  iunabbrev <buffer> open
  iunabbrev <buffer> opsys
  iunabbrev <buffer> option
  iunabbrev <buffer> or
  iunabbrev <buffer> ordered-join
  iunabbrev <buffer> ordinal
  iunabbrev <buffer> orientation
  iunabbrev <buffer> os-append
  iunabbrev <buffer> os-command
  iunabbrev <buffer> os-copy
  iunabbrev <buffer> os-create-dir
  iunabbrev <buffer> os-delete
  iunabbrev <buffer> os-dir
  iunabbrev <buffer> os-drives
  iunabbrev <buffer> os-error
  iunabbrev <buffer> os-getenv
  iunabbrev <buffer> os-rename
  iunabbrev <buffer> os2
  iunabbrev <buffer> os400
  iunabbrev <buffer> otherwise
  iunabbrev <buffer> outer
  iunabbrev <buffer> outer-join
  iunabbrev <buffer> output
  iunabbrev <buffer> overlay
  iunabbrev <buffer> override
  iunabbrev <buffer> owner
  iunabbrev <buffer> owner-document
  iunabbrev <buffer> page
  iunabbrev <buffer> page-bottom
  iunabbrev <buffer> page-num
  iunabbrev <buffer> page-number
  iunabbrev <buffer> page-size
  iunabbrev <buffer> page-top
  iunabbrev <buffer> page-width
  iunabbrev <buffer> paged
  iunabbrev <buffer> param
  iunabbrev <buffer> parameter
  iunabbrev <buffer> partial-key
  iunabbrev <buffer> pascal
  iunabbrev <buffer> pathname
  iunabbrev <buffer> pause
  iunabbrev <buffer> pdbname
  iunabbrev <buffer> persist
  iunabbrev <buffer> persistent
  iunabbrev <buffer> pinnable
  iunabbrev <buffer> position
  iunabbrev <buffer> precision
  iunabbrev <buffer> preprocess
  iunabbrev <buffer> preselect
  iunabbrev <buffer> prev
  iunabbrev <buffer> primary
  iunabbrev <buffer> private
  iunabbrev <buffer> private-data
  iunabbrev <buffer> privileges
  iunabbrev <buffer> proc-handle
  iunabbrev <buffer> proc-status
  iunabbrev <buffer> procedure
  iunabbrev <buffer> process
  iunabbrev <buffer> profiler
  iunabbrev <buffer> program-name
  iunabbrev <buffer> progress
  iunabbrev <buffer> progress-source
  iunabbrev <buffer> prompt
  iunabbrev <buffer> prompt-for
  iunabbrev <buffer> promsgs
  iunabbrev <buffer> propath
  iunabbrev <buffer> property
  iunabbrev <buffer> protected
  iunabbrev <buffer> proversion
  iunabbrev <buffer> public
  iunabbrev <buffer> public-id
  iunabbrev <buffer> publish
  iunabbrev <buffer> put
  iunabbrev <buffer> put-byte
  iunabbrev <buffer> put-double
  iunabbrev <buffer> put-float
  iunabbrev <buffer> put-key-val
  iunabbrev <buffer> put-key-value
  iunabbrev <buffer> put-long
  iunabbrev <buffer> put-short
  iunabbrev <buffer> put-string
  iunabbrev <buffer> put-unsigned-short
  iunabbrev <buffer> putbyte
  iunabbrev <buffer> query
  iunabbrev <buffer> query-off-end
  iunabbrev <buffer> query-tuning
  iunabbrev <buffer> question
  iunabbrev <buffer> quit
  iunabbrev <buffer> r-index
  iunabbrev <buffer> random
  iunabbrev <buffer> raw
  iunabbrev <buffer> raw-transfer
  iunabbrev <buffer> rcode-info
  iunabbrev <buffer> rcode-information
  iunabbrev <buffer> read
  iunabbrev <buffer> read-file
  iunabbrev <buffer> read-json
  iunabbrev <buffer> read-only
  iunabbrev <buffer> read-response
  iunabbrev <buffer> readkey
  iunabbrev <buffer> real
  iunabbrev <buffer> recid
  iunabbrev <buffer> record-length
  iunabbrev <buffer> recursive
  iunabbrev <buffer> refresh
  iunabbrev <buffer> refreshable
  iunabbrev <buffer> relation-fields
  iunabbrev <buffer> release
  iunabbrev <buffer> remove-attribute
  iunabbrev <buffer> remove-child
  iunabbrev <buffer> repeat
  iunabbrev <buffer> replace
  iunabbrev <buffer> replace-child
  iunabbrev <buffer> replication-create
  iunabbrev <buffer> replication-delete
  iunabbrev <buffer> replication-write
  iunabbrev <buffer> reposition
  iunabbrev <buffer> request
  iunabbrev <buffer> retain
  iunabbrev <buffer> retry
  iunabbrev <buffer> retry-cancel
  iunabbrev <buffer> return
  iunabbrev <buffer> return-inserted
  iunabbrev <buffer> return-to-start-dir
  iunabbrev <buffer> return-val
  iunabbrev <buffer> return-value
  iunabbrev <buffer> returns
  iunabbrev <buffer> reverse-from
  iunabbrev <buffer> revert
  iunabbrev <buffer> revoke
  iunabbrev <buffer> right-trim
  iunabbrev <buffer> round
  iunabbrev <buffer> row
  iunabbrev <buffer> row-of
  iunabbrev <buffer> rowid
  iunabbrev <buffer> run
  iunabbrev <buffer> save
  iunabbrev <buffer> save-as
  iunabbrev <buffer> save-file
  iunabbrev <buffer> schema
  iunabbrev <buffer> schema-path
  iunabbrev <buffer> screen
  iunabbrev <buffer> sdbname
  iunabbrev <buffer> se-check-pools
  iunabbrev <buffer> se-enable-of
  iunabbrev <buffer> se-enable-off
  iunabbrev <buffer> se-enable-on
  iunabbrev <buffer> se-num-pools
  iunabbrev <buffer> se-use-message
  iunabbrev <buffer> search
  iunabbrev <buffer> section
  iunabbrev <buffer> seek
  iunabbrev <buffer> self
  iunabbrev <buffer> send
  iunabbrev <buffer> sensitive
  iunabbrev <buffer> separate-connection
  iunabbrev <buffer> separators
  iunabbrev <buffer> server
  iunabbrev <buffer> session
  iunabbrev <buffer> set
  iunabbrev <buffer> set-attribute
  iunabbrev <buffer> set-attribute-node
  iunabbrev <buffer> set-break
  iunabbrev <buffer> set-contents
  iunabbrev <buffer> set-dynamic
  iunabbrev <buffer> set-leakpoint
  iunabbrev <buffer> set-pointer-value
  iunabbrev <buffer> set-property
  iunabbrev <buffer> set-read-response-procedure
  iunabbrev <buffer> set-size
  iunabbrev <buffer> set-wait
  iunabbrev <buffer> set-wait-state
  iunabbrev <buffer> setuser
  iunabbrev <buffer> setuserid
  iunabbrev <buffer> share
  iunabbrev <buffer> share-lock
  iunabbrev <buffer> shared
  iunabbrev <buffer> show-stats
  iunabbrev <buffer> side-label-handle
  iunabbrev <buffer> side-labels
  iunabbrev <buffer> silent
  iunabbrev <buffer> simple
  iunabbrev <buffer> single
  iunabbrev <buffer> size
  iunabbrev <buffer> skip
  iunabbrev <buffer> smallint
  iunabbrev <buffer> socket
  iunabbrev <buffer> some
  iunabbrev <buffer> sort
  iunabbrev <buffer> source
  iunabbrev <buffer> source-procedure
  iunabbrev <buffer> space
  iunabbrev <buffer> sql
  iunabbrev <buffer> sqrt
  iunabbrev <buffer> start
  iunabbrev <buffer> static
  iunabbrev <buffer> status
  iunabbrev <buffer> status-area
  iunabbrev <buffer> status-area-font
  iunabbrev <buffer> status-bar
  iunabbrev <buffer> stdcall
  iunabbrev <buffer> stenciled
  iunabbrev <buffer> stop
  iunabbrev <buffer> stopped
  iunabbrev <buffer> stored-proc
  iunabbrev <buffer> stored-procedure
  iunabbrev <buffer> stream
  iunabbrev <buffer> stream-io
  iunabbrev <buffer> string
  iunabbrev <buffer> string-xref
  iunabbrev <buffer> sub-ave
  iunabbrev <buffer> sub-average
  iunabbrev <buffer> sub-count
  iunabbrev <buffer> sub-max
  iunabbrev <buffer> sub-maximum
  iunabbrev <buffer> sub-min
  iunabbrev <buffer> sub-minimum
  iunabbrev <buffer> sub-total
  iunabbrev <buffer> subscribe
  iunabbrev <buffer> subst
  iunabbrev <buffer> substitute
  iunabbrev <buffer> substr
  iunabbrev <buffer> substring
  iunabbrev <buffer> subtype
  iunabbrev <buffer> sum
  iunabbrev <buffer> super
  iunabbrev <buffer> suppress-namespace-processing
  iunabbrev <buffer> suppress-warnings
  iunabbrev <buffer> system-id
  iunabbrev <buffer> table
  iunabbrev <buffer> target
  iunabbrev <buffer> target-procedure
  iunabbrev <buffer> temp-dir
  iunabbrev <buffer> temp-directory
  iunabbrev <buffer> temp-table
  iunabbrev <buffer> term
  iunabbrev <buffer> terminal
  iunabbrev <buffer> terminate
  iunabbrev <buffer> then
  iunabbrev <buffer> this-procedure
  iunabbrev <buffer> through
  iunabbrev <buffer> thru
  iunabbrev <buffer> time
  iunabbrev <buffer> time-source
  iunabbrev <buffer> to
  iunabbrev <buffer> to-rowid
  iunabbrev <buffer> today
  iunabbrev <buffer> top
  iunabbrev <buffer> top-only
  iunabbrev <buffer> topic
  iunabbrev <buffer> total
  iunabbrev <buffer> trailing
  iunabbrev <buffer> trans
  iunabbrev <buffer> transaction
  iunabbrev <buffer> trigger
  iunabbrev <buffer> triggers
  iunabbrev <buffer> trim
  iunabbrev <buffer> trunc
  iunabbrev <buffer> truncate
  iunabbrev <buffer> type
  iunabbrev <buffer> unbuff
  iunabbrev <buffer> unbuffered
  iunabbrev <buffer> undo
  iunabbrev <buffer> unform
  iunabbrev <buffer> unformatted
  iunabbrev <buffer> union
  iunabbrev <buffer> unique
  iunabbrev <buffer> unique-id
  iunabbrev <buffer> unix
  iunabbrev <buffer> unload
  iunabbrev <buffer> unsubscribe
  iunabbrev <buffer> up
  iunabbrev <buffer> update
  iunabbrev <buffer> upper
  iunabbrev <buffer> use
  iunabbrev <buffer> user
  iunabbrev <buffer> userid
  iunabbrev <buffer> using
  iunabbrev <buffer> v6display
  iunabbrev <buffer> v6frame
  iunabbrev <buffer> valid-event
  iunabbrev <buffer> valid-handle
  iunabbrev <buffer> validate
  iunabbrev <buffer> validate-condition
  iunabbrev <buffer> validate-message
  iunabbrev <buffer> value
  iunabbrev <buffer> values
  iunabbrev <buffer> var
  iunabbrev <buffer> variable
  iunabbrev <buffer> vert
  iunabbrev <buffer> vertical
  iunabbrev <buffer> view
  iunabbrev <buffer> view-as
  iunabbrev <buffer> visible
  iunabbrev <buffer> vms
  iunabbrev <buffer> wait
  iunabbrev <buffer> wait-for
  iunabbrev <buffer> warning
  iunabbrev <buffer> weekday
  iunabbrev <buffer> when
  iunabbrev <buffer> where
  iunabbrev <buffer> while
  iunabbrev <buffer> with
  iunabbrev <buffer> word-wrap
  iunabbrev <buffer> work-table
  iunabbrev <buffer> workfile
  iunabbrev <buffer> write
  iunabbrev <buffer> write-json
  iunabbrev <buffer> x-document
  iunabbrev <buffer> x-noderef
  iunabbrev <buffer> x-of
  iunabbrev <buffer> xcode
  iunabbrev <buffer> xref
  iunabbrev <buffer> y-of
  iunabbrev <buffer> year
  iunabbrev <buffer> yes-no
  iunabbrev <buffer> yes-no-cancel
  " }}}

  " {{{ capitalize wfcommon functions
  iunabbrev <buffer> hassecurity
  iunabbrev <buffer> convdate
  iunabbrev <buffer> convint
  iunabbrev <buffer> convdec
  iunabbrev <buffer> convlog
  iunabbrev <buffer> logtochar
  iunabbrev <buffer> getwffield
  iunabbrev <buffer> setwffield
  iunabbrev <buffer> getsysvar
  iunabbrev <buffer> getwfglobal
  iunabbrev <buffer> setwfglobal
  iunabbrev <buffer> setwffieldlength
  iunabbrev <buffer> blankfill
  iunabbrev <buffer> blankfields
  iunabbrev <buffer> setbuttons
  iunabbrev <buffer> setformbuttons
  iunabbrev <buffer> sendbuttons
  iunabbrev <buffer> sendfields
  iunabbrev <buffer> sendonefield
  iunabbrev <buffer> sendonefieldandable
  iunabbrev <buffer> sendfieldlengths
  iunabbrev <buffer> sendfieldsandable
  iunabbrev <buffer> senddata
  iunabbrev <buffer> senddatanowrap
  iunabbrev <buffer> sendmemo
  iunabbrev <buffer> getfunction
  iunabbrev <buffer> checkedit
  iunabbrev <buffer> checkedittt
  iunabbrev <buffer> showedits
  iunabbrev <buffer> showeditstt
  iunabbrev <buffer> getactive
  iunabbrev <buffer> setfocus
  iunabbrev <buffer> disablescreen
  iunabbrev <buffer> enablescreen
  iunabbrev <buffer> sendconfirmbox
  iunabbrev <buffer> senderrorbox
  iunabbrev <buffer> keychanged
  iunabbrev <buffer> sendconfirmationbox
  iunabbrev <buffer> sendyesnobox
  iunabbrev <buffer> reallyleave
  iunabbrev <buffer> sendprogressbar
  iunabbrev <buffer> rmfile
  iunabbrev <buffer> namefile
  iunabbrev <buffer> nameuserfile
  iunabbrev <buffer> gettime
  iunabbrev <buffer> displayform
  iunabbrev <buffer> closetopform
  iunabbrev <buffer> settitles
  " }}}

  " {{{ capitalize wflatex functions
  iunabbrev <buffer> bg-left
  iunabbrev <buffer> bg-center
  iunabbrev <buffer> bg-right
  iunabbrev <buffer> default-header
  iunabbrev <buffer> tabular-header
  iunabbrev <buffer> text-header
  iunabbrev <buffer> default-footer
  iunabbrev <buffer> tabular-footer
  iunabbrev <buffer> text-footer
  iunabbrev <buffer> auto-legend
  iunabbrev <buffer> align-left
  iunabbrev <buffer> align-center
  iunabbrev <buffer> align-right
  iunabbrev <buffer> auto-labels
  iunabbrev <buffer> x-axis
  iunabbrev <buffer> left-y-axis
  iunabbrev <buffer> right-y-axis
  iunabbrev <buffer> secondary-left-y-axis
  iunabbrev <buffer> secondary-right-y-axis
  iunabbrev <buffer> scatter-plot
  iunabbrev <buffer> line-plot
  iunabbrev <buffer> smooth-line-plot
  iunabbrev <buffer> bar-plot
  iunabbrev <buffer> major-guide-plot
  iunabbrev <buffer> minor-guide-plot
  iunabbrev <buffer> createparagraph
  iunabbrev <buffer> deleteparagraph
  iunabbrev <buffer> setparagraphlinespace
  iunabbrev <buffer> getparagraphlinespace
  iunabbrev <buffer> setparagraphatpagefoot
  iunabbrev <buffer> getparagraphatpagefoot
  iunabbrev <buffer> setshowparagraphborder
  iunabbrev <buffer> getshowparagraphborder
  iunabbrev <buffer> setparagraphtext
  iunabbrev <buffer> appendtexttoparagraph
  iunabbrev <buffer> getparagraphtext
  iunabbrev <buffer> addparagraphtoreport
  iunabbrev <buffer> formattext
  iunabbrev <buffer> aligntext
  iunabbrev <buffer> texescape
  iunabbrev <buffer> texnewline
  iunabbrev <buffer> texsystem
  iunabbrev <buffer> texpage
  iunabbrev <buffer> texdegree
  iunabbrev <buffer> texdate
  iunabbrev <buffer> textimestamp
  iunabbrev <buffer> texbox
  iunabbrev <buffer> texborderbox
  iunabbrev <buffer> texwrapbox
  iunabbrev <buffer> texborderwrapbox
  iunabbrev <buffer> createimage
  iunabbrev <buffer> deleteimage
  iunabbrev <buffer> setimagename
  iunabbrev <buffer> getimagename
  iunabbrev <buffer> setimageposition
  iunabbrev <buffer> getimageposition
  iunabbrev <buffer> setimagewidth
  iunabbrev <buffer> getimagewidth
  iunabbrev <buffer> setimageheight
  iunabbrev <buffer> getimageheight
  iunabbrev <buffer> setshowimageborder
  iunabbrev <buffer> getshowimageborder
  iunabbrev <buffer> addimagetoreport
  iunabbrev <buffer> getimagetext
  iunabbrev <buffer> createtable
  iunabbrev <buffer> deletetable
  iunabbrev <buffer> settablewidth
  iunabbrev <buffer> gettablewidth
  iunabbrev <buffer> settablealignment
  iunabbrev <buffer> gettablealignment
  iunabbrev <buffer> settableheaderalign
  iunabbrev <buffer> gettableheaderalign
  iunabbrev <buffer> settablecolumnalign
  iunabbrev <buffer> gettablecolumnalign
  iunabbrev <buffer> settablecolumnwidths
  iunabbrev <buffer> gettablecolumnwidths
  iunabbrev <buffer> settableweights
  iunabbrev <buffer> gettableweights
  iunabbrev <buffer> settablehascompactrows
  iunabbrev <buffer> gettablehascompactrows
  iunabbrev <buffer> settablehasstripedrows
  iunabbrev <buffer> gettablehasstripedrows
  iunabbrev <buffer> settablehasborders
  iunabbrev <buffer> gettablehasborders
  iunabbrev <buffer> addheaderrowtotable
  iunabbrev <buffer> removeheaderrowsfromtable
  iunabbrev <buffer> addrowtotable
  iunabbrev <buffer> removerowsfromtable
  iunabbrev <buffer> addtabletoreport
  iunabbrev <buffer> texmulticolumn
  iunabbrev <buffer> texmultirow
  iunabbrev <buffer> texmidrule
  iunabbrev <buffer> texcmidrule
  iunabbrev <buffer> texlightmidrule
  iunabbrev <buffer> texlightcmidrule
  iunabbrev <buffer> texrowbackground
  iunabbrev <buffer> createpiechart
  iunabbrev <buffer> deletepiechart
  iunabbrev <buffer> setpiechartwidth
  iunabbrev <buffer> getpiechartwidth
  iunabbrev <buffer> setpiechartalignment
  iunabbrev <buffer> getpiechartalignment
  iunabbrev <buffer> setpiechartradius
  iunabbrev <buffer> getpiechartradius
  iunabbrev <buffer> setpiechartexplode
  iunabbrev <buffer> getpiechartexplode
  iunabbrev <buffer> setshowpiechartadjtotal
  iunabbrev <buffer> getshowpiechartadjtotal
  iunabbrev <buffer> setshowpiechartlegend
  iunabbrev <buffer> getshowpiechartlegend
  iunabbrev <buffer> setpiechartdataformat
  iunabbrev <buffer> getpiechartdataformat
  iunabbrev <buffer> setshowpiechartlegendpct
  iunabbrev <buffer> getshowpiechartlegendpct
  iunabbrev <buffer> setshowpiecharttotal
  iunabbrev <buffer> getshowpiecharttotal
  iunabbrev <buffer> setshowpiechartlabels
  iunabbrev <buffer> getshowpiechartlabels
  iunabbrev <buffer> setpiechartlegendheader
  iunabbrev <buffer> getpiechartlegendheader
  iunabbrev <buffer> setpiechartlegend
  iunabbrev <buffer> setpiechartlegendalign
  iunabbrev <buffer> getpiechartlegendalign
  iunabbrev <buffer> addpiechartslice
  iunabbrev <buffer> removepiechartslices
  iunabbrev <buffer> setpiechartslicevalue
  iunabbrev <buffer> getpiechartslicevalue
  iunabbrev <buffer> setpiechartsliceexplode
  iunabbrev <buffer> getpiechartsliceexplode
  iunabbrev <buffer> addpiecharttoreport
  iunabbrev <buffer> creategraph
  iunabbrev <buffer> deletegraph
  iunabbrev <buffer> setgraphalignment
  iunabbrev <buffer> getgraphalignment
  iunabbrev <buffer> setgraphxscale
  iunabbrev <buffer> getgraphxscale
  iunabbrev <buffer> setgraphyscale
  iunabbrev <buffer> getgraphyscale
  iunabbrev <buffer> setgraphytickcount
  iunabbrev <buffer> getgraphytickcount
  iunabbrev <buffer> setshowgraphxlines
  iunabbrev <buffer> getshowgraphxlines
  iunabbrev <buffer> setshowgraphylines
  iunabbrev <buffer> getshowgraphylines
  iunabbrev <buffer> setshowgraphplotlabels
  iunabbrev <buffer> getshowgraphplotlabels
  iunabbrev <buffer> setshowgraphlegend
  iunabbrev <buffer> getshowgraphlegend
  iunabbrev <buffer> setgraphlegendheader
  iunabbrev <buffer> getgraphlegendheader
  iunabbrev <buffer> setgraphlegend
  iunabbrev <buffer> createaxis
  iunabbrev <buffer> deleteaxis
  iunabbrev <buffer> setaxistype
  iunabbrev <buffer> getaxistype
  iunabbrev <buffer> setaxistitle
  iunabbrev <buffer> getaxistitle
  iunabbrev <buffer> setaxislegendtitle
  iunabbrev <buffer> getaxislegendtitle
  iunabbrev <buffer> setaxisymin
  iunabbrev <buffer> getaxisymin
  iunabbrev <buffer> setaxisymax
  iunabbrev <buffer> getaxisymax
  iunabbrev <buffer> setaxisticklabelscale
  iunabbrev <buffer> getaxisticklabelscale
  iunabbrev <buffer> setaxisticklabeloffset
  iunabbrev <buffer> getaxisticklabeloffset
  iunabbrev <buffer> setaxismajorinterval
  iunabbrev <buffer> getaxismajorinterval
  iunabbrev <buffer> setaxismajoroffset
  iunabbrev <buffer> getaxismajoroffset
  iunabbrev <buffer> setaxisproportion
  iunabbrev <buffer> getaxisproportion
  iunabbrev <buffer> setaxisstep
  iunabbrev <buffer> getaxisstep
  iunabbrev <buffer> setaxistickformat
  iunabbrev <buffer> getaxistickformat
  iunabbrev <buffer> setaxisticklabels
  iunabbrev <buffer> getaxisticklabels
  iunabbrev <buffer> addaxistograph
  iunabbrev <buffer> removegyaxes
  iunabbrev <buffer> setgraphhardcode
  iunabbrev <buffer> getgraphhardcode
  iunabbrev <buffer> createplot
  iunabbrev <buffer> deleteplot
  iunabbrev <buffer> setplotname
  iunabbrev <buffer> getplotname
  iunabbrev <buffer> setplotaxis
  iunabbrev <buffer> getplotaxis
  iunabbrev <buffer> setplotcolor
  iunabbrev <buffer> getplotcolor
  iunabbrev <buffer> createpoint
  iunabbrev <buffer> deletepoint
  iunabbrev <buffer> setpointx
  iunabbrev <buffer> getpointx
  iunabbrev <buffer> setpointy
  iunabbrev <buffer> getpointy
  iunabbrev <buffer> setpointcoordinates
  iunabbrev <buffer> setpointlabel
  iunabbrev <buffer> getpointlabel
  iunabbrev <buffer> setplotpoints
  iunabbrev <buffer> getplotpoints
  iunabbrev <buffer> setplotpointlabels
  iunabbrev <buffer> getplotpointlabels
  iunabbrev <buffer> addplottograph
  iunabbrev <buffer> removeplots
  iunabbrev <buffer> addgraphtoreport
  iunabbrev <buffer> texcircle
  iunabbrev <buffer> texsquare
  iunabbrev <buffer> texgradientsquare
  iunabbrev <buffer> texdiamond
  iunabbrev <buffer> textriangle
  iunabbrev <buffer> texcross
  iunabbrev <buffer> texplus
  iunabbrev <buffer> createreport
  iunabbrev <buffer> deletereport
  iunabbrev <buffer> setreporttitle
  iunabbrev <buffer> getreporttitle
  iunabbrev <buffer> setreportbgimage
  iunabbrev <buffer> getreportbgimage
  iunabbrev <buffer> setshowreportheader
  iunabbrev <buffer> getshowreportheader
  iunabbrev <buffer> setshowreportheaderline
  iunabbrev <buffer> getshowreportheaderline
  iunabbrev <buffer> setreportheadertype
  iunabbrev <buffer> getreportheadertype
  iunabbrev <buffer> setreportheader
  iunabbrev <buffer> getreportheader
  iunabbrev <buffer> setshowreportfooter
  iunabbrev <buffer> getshowreportfooter
  iunabbrev <buffer> setreportfootertype
  iunabbrev <buffer> getreportfootertype
  iunabbrev <buffer> setshowreportfooterline
  iunabbrev <buffer> getshowreportfooterline
  iunabbrev <buffer> setreportfooter
  iunabbrev <buffer> getreportfooter
  iunabbrev <buffer> setreportlandscape
  iunabbrev <buffer> getreportlandscape
  iunabbrev <buffer> setreportmargins
  iunabbrev <buffer> getreportmargins
  iunabbrev <buffer> insertpagebreak
  iunabbrev <buffer> inserttoc
  iunabbrev <buffer> inserthiddensection
  iunabbrev <buffer> texhiddensection
  iunabbrev <buffer> insertsection
  iunabbrev <buffer> texsection
  iunabbrev <buffer> inserthspace
  iunabbrev <buffer> texhspace
  iunabbrev <buffer> insertvspace
  iunabbrev <buffer> texvspace
  iunabbrev <buffer> inserthline
  iunabbrev <buffer> texhline
  iunabbrev <buffer> generatereport
  " }}}
endfunction " }}}


" backslash commands to toggle capitalization mode
function! ToggleCaps()
  if s:autocap
    call Unabbrev()
  else
    call Abbrev()
  endif
endfunction
inoremap <silent> <leader>ac <c-o>:call ToggleCaps()<cr>
nnoremap <silent> <leader>ac      :call ToggleCaps()<cr>
vnoremap <silent> <leader>ac <esc>:call ToggleCaps()<cr>gv
call ToggleCaps()


" begin single-quote/double-quote/comment and disable casing
inoremap ``` <c-o>:call Unabbrev()<cr>'
nnoremap ```      :call Unabbrev()<cr>a'
inoremap ~~~ <c-o>:call Unabbrev()<cr>"
nnoremap ~~~      :call Unabbrev()<cr>a"
inoremap /// <c-o>:call Unabbrev()<cr>/*<space>
nnoremap ///      :call Unabbrev()<cr>a/*<space>

" end single-quote/double-quote/comment and re-enable casing
inoremap ''' <c-o>:call Abbrev()<cr>'
nnoremap '''      :call Abbrev()<cr>a'
inoremap """ <c-o>:call Abbrev()<cr>"
nnoremap """      :call Abbrev()<cr>a"
inoremap \\\ <c-o>:call Abbrev()<cr><space>*/
nnoremap \\\      :call Abbrev()<cr>a<space>*/


" change case of previous word
"   m`   -- make mark named '`' at current cursor position
"   gUaw -- uppercase entire word (guaw for lowercase)
"   ``   -- return cursor to mark '`'
inoremap <c-u> <c-o>m`<c-o>gUaw<c-o>``
nnoremap <c-u> m`gUaw``
inoremap <c-l> <c-o>m`<c-o>guaw<c-o>``
nnoremap <c-l> m`guaw``
