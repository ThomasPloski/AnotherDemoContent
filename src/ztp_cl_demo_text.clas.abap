class ZTP_CL_DEMO_TEXT definition
  public
  final
  create public .

public section.

  class-methods GET_TEXT
    returning
      value(RV_TEXT) type STRING .
protected section.
private section.
ENDCLASS.



CLASS ZTP_CL_DEMO_TEXT IMPLEMENTATION.


  METHOD get_text.
    rv_text = 'Hello Steampunk'.
  ENDMETHOD.
ENDCLASS.
