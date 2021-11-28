
  SELECT Name, ISNULL(ParentProductCategoryID,-1) as newCol From SalesLT.ProductCategory

  SELECT
  CASE 
  WHEN ParentProductCategoryID is null then 'No parent category'
  ELSE 'Has parent category' 
  END
  AS 'Parent Category State'
  FROM SalesLT.ProductCategory
      