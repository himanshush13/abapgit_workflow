*---------------------------------------------------------------------*
*    program for:   TABLEFRAME_ZDEVOPS_MAKT
*   generation date: 17.01.2020 at 14:28:22
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
FUNCTION TABLEFRAME_ZDEVOPS_MAKT       .

  PERFORM TABLEFRAME TABLES X_HEADER X_NAMTAB DBA_SELLIST DPL_SELLIST
                            EXCL_CUA_FUNCT
                     USING  CORR_NUMBER VIEW_ACTION VIEW_NAME.

ENDFUNCTION.
