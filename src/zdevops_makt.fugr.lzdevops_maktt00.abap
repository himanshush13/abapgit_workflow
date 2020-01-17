*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 17.01.2020 at 14:28:23
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: ZDEVOPS_MAKT....................................*
DATA:  BEGIN OF STATUS_ZDEVOPS_MAKT                  .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZDEVOPS_MAKT                  .
CONTROLS: TCTRL_ZDEVOPS_MAKT
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZDEVOPS_MAKT                  .
TABLES: ZDEVOPS_MAKT                   .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
