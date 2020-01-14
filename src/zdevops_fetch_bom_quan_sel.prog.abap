*&---------------------------------------------------------------------*
*& Include zdevops_fetch_bom_quan_sel
*&---------------------------------------------------------------------*
*----------------------------------------------------------------------*
* Author         : DEBOPRIYA GHOSH
* Creation Date  : 13JAN2020
* Description    : SELECTION Include for zdevops_prog_fetch_bom_quan
*----------------------------------------------------------------------*
SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE text-001.
PARAMETERS: p_mat1 TYPE matnr OBLIGATORY,
            p_mat2 TYPE matnr.
SELECTION-SCREEN END OF BLOCK b1.
