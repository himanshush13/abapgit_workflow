*&---------------------------------------------------------------------*
*& Include zdevops_fetch_bom_quan_sel
*&---------------------------------------------------------------------*
*----------------------------------------------------------------------*
* Author         : DEBOPRIYA GHOSH
* Creation Date  : 13JAN2020
* Description    : SELECTION Include for zdevops_prog_fetch_bom_quan
*----------------------------------------------------------------------*
TABLES: zdevops_mara.
SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
SELECT-OPTIONS s_matnr FOR zdevops_mara-matnr.
SELECTION-SCREEN END OF BLOCK b1.
