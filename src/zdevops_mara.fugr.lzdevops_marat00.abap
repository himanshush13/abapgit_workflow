*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 17.01.2020 at 12:16:38
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: ZDEVOPS_MARA....................................*
DATA:  BEGIN OF STATUS_ZDEVOPS_MARA                  .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZDEVOPS_MARA                  .
CONTROLS: TCTRL_ZDEVOPS_MARA
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZDEVOPS_MARA                  .
TABLES: ZDEVOPS_MARA                   .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
