*&---------------------------------------------------------------------*
*& Include zdevops_fetch_bom_quan_top
*&---------------------------------------------------------------------*
*----------------------------------------------------------------------*
* Author         : DEBOPRIYA GHOSH
* Creation Date  : 13JAN2020
* Description    : SELECTION Include for zdevops_prog_fetch_bom_quan
*----------------------------------------------------------------------*
TYPES: BEGIN OF ty_bom_det,
         matnr TYPE  matnr,
         maktx TYPE  maktx,
         mtart TYPE  mtart,
         mtbez TYPE  mtbez,
         menge TYPE  kmpmg,
         meins TYPE  KMPME,
         stlan TYPE  stlan,
         antxt TYPE  antxt,
       END OF ty_bom_det,
       tty_bom_det TYPE TABLE OF ty_bom_det WITH NON-UNIQUE KEY matnr.
DATA: lt_bom_det TYPE tty_bom_det.
