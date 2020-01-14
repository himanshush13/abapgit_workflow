*&---------------------------------------------------------------------*
*& Include zdevops_fetch_bom_quan_form
*&---------------------------------------------------------------------*
*----------------------------------------------------------------------*
* Author         : DEBOPRIYA GHOSH
* Creation Date  : 13JAN2020
* Description    : SELECTION Include for zdevops_prog_fetch_bom_quan
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Form  F_FETCH_BOM_USAGE
*&---------------------------------------------------------------------*
*       Fetch BOM Usage by Material Number
*----------------------------------------------------------------------*
FORM f_fetch_bom_usage USING    fp_mat TYPE matnr
                       CHANGING ft_bom_det TYPE tty_bom_det.

  DATA: lv_matnr TYPE matnr.
  lv_matnr = fp_mat.

  CALL FUNCTION 'CONVERSION_EXIT_MATN1_INPUT'
    EXPORTING
      input        = lv_matnr
    IMPORTING
      output       = lv_matnr
    EXCEPTIONS
      length_error = 1
      OTHERS       = 2.
  IF sy-subrc <> 0.
* Implement suitable error handling here
  ENDIF.

  SELECT matnr,
         maktx,
         mtart,
         mtbez,
         menge,
         stlan,
         antxt
         FROM zdevops_cds_c_fetch_bom_quan( p_matnr = @lv_matnr )
         APPENDING TABLE @ft_bom_det.
  IF sy-subrc EQ 0.

  ENDIF.

ENDFORM. " F_FETCH_BOM_USAGE