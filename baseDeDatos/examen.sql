USE [master]
GO

CREATE DATABASE [examen]
GO

USE [examen]
GO

CREATE SCHEMA [EXAMENFINAL]
GO

CREATE TABLE [EXAMENFINAL].[PRODUCTOS](
	[ID_PRODUCTO] [int] IDENTITY(1,1) NOT NULL,
	[Desc_Producto] [VARCHAR](255) NOT NULL,
	[Anio_Fabricacion] [INT] NOT NULL,
	[Casa_Fabricacion] [VARCHAR](100) NOT NULL,
	[Estado_Producto] [VARCHAR](50) NOT NULL,
    [Area_Tratamiento] [VARCHAR](100) NOT NULL,
 CONSTRAINT [PK_PRODUCTOS] PRIMARY KEY CLUSTERED 
(
	[ID_PRODUCTO] ASC
))



-- Insertar 10 productos con datos más variados
INSERT INTO [EXAMENFINAL].[PRODUCTOS] (Desc_Producto, Anio_Fabricacion, Casa_Fabricacion, Estado_Producto, Area_Tratamiento)
VALUES
    ('Laptop XPS 13', 2022, 'Dell', 'Activo', 'Electrónica'),
    ('Smartphone Galaxy S22', 2023, 'Samsung', 'Activo', 'Electrónica'),
    ('Refrigerador French Door', 2021, 'LG', 'Activo', 'Electrodomésticos'),
    ('Zapatillas Running Boost', 2022, 'Adidas', 'Activo', 'Deportes'),
    ('Libro "Cien años de soledad"', 1982, 'Editorial XYZ', 'Inactivo', 'Literatura'),
    ('Cámara DSLR EOS 5D Mark IV', 2020, 'Canon', 'Activo', 'Fotografía'),
    ('Sofá Seccional de Cuero', 2021, 'Muebles S.A.', 'Activo', 'Muebles'),
    ('Bicicleta de Montaña Trail 29er', 2023, 'Specialized', 'Activo', 'Deportes'),
    ('Juego de Ollas de Acero Inoxidable', 2022, 'Cocina Pro', 'Activo', 'Cocina'),
    ('Monitor Curvo Gaming 34"', 2021, 'Acer', 'Inactivo', 'Electrónica');


	SELECT * FROM [EXAMENFINAL].[PRODUCTOS]