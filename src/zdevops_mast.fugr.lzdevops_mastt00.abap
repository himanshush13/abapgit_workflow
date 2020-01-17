*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 17.01.2020 at 14:07:45
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: ZDEVOPS_MAST....................................*
DATA:  BEGIN OF STATUS_ZDEVOPS_MAST                  .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZDEVOPS_MAST                  .
CONTROLS: TCTRL_ZDEVOPS_MAST
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZDEVOPS_MAST                  .
TABLES: ZDEVOPS_MAST                   .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
