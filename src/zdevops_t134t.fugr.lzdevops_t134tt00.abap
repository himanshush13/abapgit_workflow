*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 17.01.2020 at 14:33:38
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: ZDEVOPS_T134T...................................*
DATA:  BEGIN OF STATUS_ZDEVOPS_T134T                 .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZDEVOPS_T134T                 .
CONTROLS: TCTRL_ZDEVOPS_T134T
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZDEVOPS_T134T                 .
TABLES: ZDEVOPS_T134T                  .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
