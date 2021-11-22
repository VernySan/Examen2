CREATE PROCEDURE [dbo].[OrdenObtener]
      @IdOrden int= NULL
AS BEGIN
  SET NOCOUNT ON

  SELECT 
     a.IdOrden,
	 a.CantidadProducto,
	 a.Estado,
	 a.IdProducto,
     b.NombreProducto,
     b.PrecioProducto
    FROM Orden a
        INNER JOIN Producto b
       ON a.IdProducto= b.IdProducto
    WHERE
    (@IdOrden IS NULL OR IdOrden = @IdOrden)

END