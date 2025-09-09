@AbapCatalog.sqlViewName: 'ZJMAV_V_CDS_MAT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS de Materiales'
@Metadata.ignorePropagatedAnnotations: true
define view ZJMAV_CDS_MAT as select from zjmav_tb_mat
{
    key id_art as IdArt,
    descr as Descr,
    descr2 as Descr2,
    color as Color,
    piezas as Piezas,
    stock as Stock,
    url as Url,
// 0 neutral 
// 1 red
// 2 yellow
// 3 green   
    case
    when stock = 0 then 0
    when stock between 1 and 10 then 1
    when stock between 11 and 99 then 2
    when stock >= 100 then 3
    else 0
    end as status
}
