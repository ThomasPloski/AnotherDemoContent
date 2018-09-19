FUNCTION ztp_demo_function_module.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  EXPORTING
*"     REFERENCE(RV_TEXT) TYPE  STRING
*"----------------------------------------------------------------------
  DATA ls_tp_demo_cnt TYPE ztp_demo_cnt.

  SELECT MAX( num ) FROM ztp_demo_cnt INTO @DATA(lv_max).
  IF sy-subrc = 0.
    ls_tp_demo_cnt-mandt = sy-mandt.
    ls_tp_demo_cnt-num = lv_max + 1.
  ELSE.
    ls_tp_demo_cnt-mandt = sy-mandt.
    ls_tp_demo_cnt-num = 1.
  ENDIF.

  INSERT INTO ztp_demo_cnt VALUES ls_tp_demo_cnt.

  rv_text = ztp_cl_demo_text=>get_text( ).

ENDFUNCTION.
