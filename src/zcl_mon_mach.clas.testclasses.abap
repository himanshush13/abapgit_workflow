class ltc_get_amount_in_coins definition for testing
risk level harmless
duration short.

    private section.

    DATA m_cut type ref to zcl_mon_mach.

    methods setup.
    " amount of 1 eur results in 1 eur coin
    methods amount_1_coin_1 for testing raising cx_static_check.
    " amount of 2 eur results in 2 eur coins
    methods amount_2_coin_2 for testing raising cx_static_check.
    " amount of 29 eur results in 4 eur coins
    methods amount_29_coin_4 for testing raising cx_static_check.
    " amount of 4 eur results in 0 eur note
    methods amount_4_note_0 for testing raising cx_static_check.


endclass.

class ltc_get_amount_in_coins IMPLEMENTATION.


  METHOD setup.
     "given
     m_cut = new #( ).
  ENDMETHOD.


  METHOD amount_1_coin_1.
    "when
    data(coin_amount) = m_cut->get_amount_in_coins( 1 ).

    "then
    cl_abap_unit_assert=>assert_equals( exp = 1 act = coin_amount ).
  ENDMETHOD.

  METHOD amount_2_coin_2.
    "when
    data(coin_amount) = m_cut->get_amount_in_coins( 2 ).

    "then
    cl_abap_unit_assert=>assert_equals( exp = 2 act = coin_amount ).
  ENDMETHOD.

  METHOD amount_29_coin_4.
    "when
    data(coin_amount) = m_cut->get_amount_in_coins( 29 ).

    "then
    cl_abap_unit_assert=>assert_equals( exp = 4 act = coin_amount ).
  ENDMETHOD.

  METHOD amount_4_note_0.
    "when
    data(note_amount) = m_cut->get_amount_in_notes( 4 ).

    "then
    cl_abap_unit_assert=>assert_equals( exp = 0 act = note_amount ).
  ENDMETHOD.

endclass.
