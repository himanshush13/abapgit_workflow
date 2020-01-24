class ZCL_Z_ABAP_CI_EP_DPC_EXT definition
  public
  inheriting from ZCL_Z_ABAP_CI_EP_DPC
  create public .

public section.
protected section.

  methods ABAPCISUMMARYSET_GET_ENTITY
    redefinition .
  methods ABAPCISUMMARYSET_GET_ENTITYSET
    redefinition .
private section.
ENDCLASS.



CLASS ZCL_Z_ABAP_CI_EP_DPC_EXT IMPLEMENTATION.


  method ABAPCISUMMARYSET_GET_ENTITY.
      read table it_key_tab into data(ls_key_tab) with key name = 'PackageName'.

    data(aunit_testrun) = new zcl_aunit_testrun( ).
    data(abap_ci_summary_entity)  = aunit_testrun->get_test_run_result( exporting package_name = ls_key_tab-value ).

    copy_data_to_ref(
              exporting
                is_data = abap_ci_summary_entity
              changing
                cr_data = er_entity    ).
  endmethod.


  method ABAPCISUMMARYSET_GET_ENTITYSET.
**TRY.
*CALL METHOD SUPER->ABAPCISUMMARYSET_GET_ENTITYSET
*  EXPORTING
*    IV_ENTITY_NAME           =
*    IV_ENTITY_SET_NAME       =
*    IV_SOURCE_NAME           =
*    IT_FILTER_SELECT_OPTIONS =
*    IS_PAGING                =
*    IT_KEY_TAB               =
*    IT_NAVIGATION_PATH       =
*    IT_ORDER                 =
*    IV_FILTER_STRING         =
*    IV_SEARCH_STRING         =
**    io_tech_request_context  =
**  IMPORTING
**    et_entityset             =
**    es_response_context      =
*    .
** CATCH /iwbep/cx_mgw_busi_exception .
** CATCH /iwbep/cx_mgw_tech_exception .
**ENDTRY.
  endmethod.
ENDCLASS.
