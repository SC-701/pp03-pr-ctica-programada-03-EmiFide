CREATE PROCEDURE ObtenerVehiculos
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    SELECT
        Vehiculo.Id, 
        Vehiculo.Placa, 
        Vehiculo.Color,
        Vehiculo.Anio,
        Vehiculo.Precio,
        Vehiculo.CorreoPropietario,
        Vehiculo.TelefonoPropietario,
        Modelos.Nombre AS Modelo, 
        Marcas.Nombre AS Marca
    FROM Marcas
    INNER JOIN Modelos ON Marcas.Id = Modelos.IdMarca
    INNER JOIN Vehiculo ON Modelos.Id = Vehiculo.IdModelo;
END
GO
