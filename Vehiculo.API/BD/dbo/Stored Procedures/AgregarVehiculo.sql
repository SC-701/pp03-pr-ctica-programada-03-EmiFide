CREATE PROCEDURE [dbo].[AgregarVehiculo]
	@Id AS uniqueidentifier
	,@IdModelo AS uniqueidentifier
	,@Placa AS varchar(max)
	,@Color AS varchar(max)
	,@Anio AS int
	,@Precio AS decimal (18,0)
	,@CorreoPropietario AS varchar(max)
	,@TelefonoPropietario AS varchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statement.
	SET NOCOUNT ON;

    -- Insert statements for procedure here - prueba práctica de semana 6
	BEGIN TRANSACTION
INSERT INTO [dbo].[Vehiculo]
			([Id]
			,[IdModelo]
			,[Placa]
			,[Color]
			,[Anio]
			,[Precio]
			,[CorreoPropietario]
			,[TelefonoPropietario])
	VALUES
			(@Id
			,@IdModelo
			,@Placa
			,@Color
			,@Anio
			,@Precio
			,@CorreoPropietario
			,@TelefonoPropietario)
		SELECT @Id
	COMMIT TRANSACTION
END