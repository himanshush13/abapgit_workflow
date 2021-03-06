*&---------------------------------------------------------------------*
*& Report zdevops_prog_fetch_bom_quan
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zdevops_prog_fetch_bom_quan.

INCLUDE zdevops_fetch_bom_quan_top."Top Include for Data Declaration
INCLUDE zdevops_fetch_bom_quan_sel."Selection Include
INCLUDE zdevops_fetch_bom_quan_form."Form Include

START-OF-SELECTION.

*-- Fetch BOM Details of Material 1
  PERFORM f_fetch_bom_usage USING s_matnr[]
                            CHANGING lt_bom_det.

END-OF-SELECTION.
*- Display
  PERFORM f_display CHANGING lt_bom_det.
