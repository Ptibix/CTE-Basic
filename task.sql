-- Elso megoldasi lehetoseg

WITH cte_category 
AS
(
select pp.name,pp.Size,pp.ListPrice from  Production.ProductSubcategory ps
Left JOIN Production.Product pp ON ps.ProductSubcategoryID=pp.ProductSubcategoryID
JOIN Production.Productcategory pc ON ps.ProductCategoryID=pc.ProductCategoryID
where pc.Name='Bikes'
)

select * from cte_category
order by Size, ListPrice desc

-- Masodik megoldasi lehetoseg

WITH cte_category (
category_id)
AS (
select ps.ProductSubcategoryID from Production.ProductCategory pc, Production.ProductSubcategory ps
where pc.ProductCategoryID=ps.ProductcategoryID
and pc.Name='Bikes')

select top 1 pp.name,pp.Size,pp.ListPrice from Production.Product pp , cte_category
where pp.ProductSubcategoryID=cte_category.category_id
order by pp.Size, pp.ListPrice desc

--Nem feltétlen a legjobbak, de az eredményt megadja. Az lehetne a megoldás, hogy top 1 nélkül hogy oldható meg.
