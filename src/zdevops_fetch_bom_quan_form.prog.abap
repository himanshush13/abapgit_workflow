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
*       Fetch BOM Usage by Material Number.
*----------------------------------------------------------------------*
FORM f_fetch_bom_usage USING    fp_mat TYPE cfb_t_matnr_range
                       CHANGING ft_bom_det TYPE tty_bom_det.

  DATA: lv_matnr TYPE matnr.

  LOOP AT fp_mat ASSIGNING FIELD-SYMBOL(<fs_matnr>).
    lv_matnr = <fs_matnr>-low.
    CALL FUNCTION 'CONVERSION_EXIT_MATN1_INPUT'
      EXPORTING
        input        = lv_matnr
      IMPORTING
        output       = lv_matnr
      EXCEPTIONS
        length_error = 1
        OTHERS       = 2.
    IF sy-subrc <> 0.
* Implement suitable error handling here!!
    ENDIF.

    SELECT matnr,
           maktx,
           mtart,
           mtbez,
           menge,
           meins,
           stlan,
           antxt
           FROM zdevops_cds_c_fetch_bom_quan( p_matnr = @lv_matnr )
           APPENDING TABLE @ft_bom_det.
    IF sy-subrc EQ 0.
      SORT ft_bom_det BY matnr.
    ENDIF.

  ENDLOOP.

ENDFORM. " F_FETCH_BOM_USAGE
*&---------------------------------------------------------------------*
*&      Form  F_DISPLAY
*&---------------------------------------------------------------------*
*       Display BOM Usage by Material Number
*----------------------------------------------------------------------*
FORM f_display CHANGING ft_bom_det TYPE tty_bom_det.

  DATA: gr_table TYPE REF TO cl_salv_table.
  DATA: lx_cx_salv_msg TYPE REF TO cx_salv_msg.
  TRY.
      cl_salv_table=>factory( IMPORTING r_salv_table = gr_table CHANGING t_table = ft_bom_det ).
    CATCH cx_salv_msg INTO lx_cx_salv_msg.

  ENDTRY.
  gr_table->display( ).

ENDFORM. " F_DISPLAY
