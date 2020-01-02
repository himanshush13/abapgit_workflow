CLASS zcl_mon_mach DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  methods get_amount_in_coins
  importing i_amount         type i
  returning value(r_value)   type i.
  methods get_amount_in_notes
  importing i_amount type i
  returning value(r_notes_amount) type i.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mon_mach IMPLEMENTATION.

        method get_amount_in_coins.
        r_value = cond #( when i_amount <= 0
                          then -1
                          else i_amount mod 5 ).

        endmethod.

        method  get_amount_in_notes.

        endmethod.
ENDCLASS.
