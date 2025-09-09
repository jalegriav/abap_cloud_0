CLASS zjmav_hola_mundo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zjmav_hola_mundo IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA : gt_tabla TYPE STANDARD TABLE OF zjmav_TB_mat.

    gt_tabla = VALUE #( ( client = sy-mandt
                          id_art = 1
                          descr  = 'Mini Colores'
                          descr2 = 'Un mini estuche con mini colores'
                          color  = 'Varios'
                          piezas = 12
                          stock  = 10
                          url    = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-agenda-2025-hard-cover-azul-aqua-03_700x.jpg?v=1720633282' )

                          ( client = sy-mandt
                          id_art = 2
                          descr  = 'Agenda'
                          descr2 = 'Agenda 2025 amarillo'
                          color  = 'Amarillo'
                          piezas = 33
                          stock  = 25
                          url    = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-agenda-2025-hard-cover-interiores-06_5e6e41e2-a848-4a2f-8ca2-c96b7460f850_700x.jpg?v=1720633405' )

                          ( client = sy-mandt
                          id_art = 3
                          descr  = 'Plumones'
                          descr2 = 'Un mini estuche con mini plumones'
                          color  = 'Varios'
                          piezas = 54
                          stock  = 111
                          url    = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-stabiloboss-pastel-coral-suave_700x.jpg?v=1588194147' )
                           ).

                           MODIFY zjmav_tb_mat FROM TABLE @gt_tabla.

  out->write( 'Hola Mundo' ).
  ENDMETHOD.
ENDCLASS.
