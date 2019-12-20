*&---------------------------------------------------------------------*
*& Report z_invoice_items_euro2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_invoice_items_euro2.

CLASS lcl_main definition create private.

        public section.
          CLASS-METHODS create
            RETURNING
              value(r_result) TYPE REF TO lcl_main.
              methods run.
        protected section.
        private section.

      endclass.
      START-OF-SELECTION.
      lcl_main=>create( )->run( ).

      class lcl_main implementation.

  method create.

    create object r_result.

  endmethod.

        method run.
        write: 'Welcome ' ,sy-uname, / 'today is ' , sy-datum.

  endmethod.

endclass.
