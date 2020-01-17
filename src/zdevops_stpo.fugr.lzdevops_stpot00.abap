*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 17.01.2020 at 14:15:51
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: ZDEVOPS_STPO....................................*
DATA:  BEGIN OF STATUS_ZDEVOPS_STPO                  .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZDEVOPS_STPO                  .
CONTROLS: TCTRL_ZDEVOPS_STPO
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZDEVOPS_STPO                  .
TABLES: ZDEVOPS_STPO                   .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
