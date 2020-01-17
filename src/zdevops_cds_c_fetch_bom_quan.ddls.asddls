@AbapCatalog.sqlViewName: 'ZDEVOPSBOM'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Fetching BOM Usage and Quantity on the basis of Material'
define view ZDEVOPS_CDS_C_FETCH_BOM_QUAN 
with parameters p_matnr:matnr
as select from zdevops_mara
    left outer join zdevops_mast
    on zdevops_mast.matnr = zdevops_mara.matnr
    inner join zdevops_stpo 
    on zdevops_mast.stlnr = zdevops_stpo.stlnr
    inner join zdevops_makt
    on zdevops_mara.matnr = zdevops_makt.matnr
    inner join zdevops_t134t
    on zdevops_mara.mtart = zdevops_t134t.mtart
    inner join zdevops_t416t
    on zdevops_mast.stlan = zdevops_t416t.stlan
{
    zdevops_mara.matnr,
    zdevops_makt.maktx,
    zdevops_mara.mtart,
    zdevops_t134t.mtbez,      
    sum( zdevops_stpo.menge ) as menge,
    zdevops_stpo.meins,
    zdevops_mast.stlan,
    zdevops_t416t.antxt  
}
where zdevops_mara.matnr = :p_matnr
and zdevops_t134t.spras = 'E'
and zdevops_t416t.spras = 'E'
group by zdevops_mara.matnr,zdevops_makt.maktx, zdevops_mast.stlan,zdevops_t416t.antxt, zdevops_mara.mtart,zdevops_t134t.mtbez,zdevops_stpo.meins;
