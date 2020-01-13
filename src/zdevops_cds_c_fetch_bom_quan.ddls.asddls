@AbapCatalog.sqlViewName: 'ZDEVOPSBOM'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Fetching BOM Usage and Quantity on the basis of Material'
define view ZDEVOPS_CDS_C_FETCH_BOM_QUAN 
with parameters p_matnr:matnr
as select from mara
    left outer join mast
    on mast.matnr = mara.matnr
    inner join stpo 
    on mast.stlnr = stpo.stlnr
    inner join makt
    on mara.matnr = makt.matnr
    inner join t134t
    on mara.mtart = t134t.mtart
    inner join t416t
    on mast.stlan = t416t.stlan
{
    mara.matnr,
    makt.maktx,
    mara.mtart,
    t134t.mtbez,      
    sum( stpo.menge ) as menge,
    mast.stlan,
    t416t.antxt  
}
where mara.matnr = :p_matnr
and t134t.spras = 'E'
and t416t.spras = 'E'
group by mara.matnr,makt.maktx, mast.stlan,t416t.antxt, mara.mtart,t134t.mtbez;
