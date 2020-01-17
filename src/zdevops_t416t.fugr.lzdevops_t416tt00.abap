*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 17.01.2020 at 14:38:37
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: ZDEVOPS_T416T...................................*
DATA:  BEGIN OF STATUS_ZDEVOPS_T416T                 .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZDEVOPS_T416T                 .
CONTROLS: TCTRL_ZDEVOPS_T416T
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZDEVOPS_T416T                 .
TABLES: ZDEVOPS_T416T                  .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
