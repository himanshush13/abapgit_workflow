class ZCL_Z_ABAP_CI_EP_01_DPC_EXT definition
  public
  inheriting from ZCL_Z_ABAP_CI_EP_01_DPC
  create public .

public section.
protected section.

  methods ABAPCISUMMARYSET_GET_ENTITY
    redefinition .
private section.
ENDCLASS.



CLASS ZCL_Z_ABAP_CI_EP_01_DPC_EXT IMPLEMENTATION.


  METHOD abapcisummaryset_get_entity.
    READ TABLE it_key_tab INTO DATA(ls_key_tab) WITH KEY name = 'PackageName'.

    DATA(aunit_testrun) = NEW zcl_aunit_testrun( ).
    DATA(abap_ci_summary_entity)  = aunit_testrun->get_test_run_result( EXPORTING package_name = ls_key_tab-value ).

*    copy_data_to_ref(
*              exporting
*                is_data = abap_ci_summary_entity
*              changing
*                cr_data = er_entity    ).

    MOVE abap_ci_summary_entity TO er_entity.
  ENDMETHOD.
ENDCLASS.
