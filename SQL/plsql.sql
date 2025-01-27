





-- Procedimientos --

-- Procedimiento que muestra los datos de los clientes

CREATE PROCEDURE GetUserInfo
    @ClienteID INT -- Parámetro para identificar al cliente
AS
BEGIN
    SELECT 
        nombre,
        correo,
        telefono,
        profile_picture,
        pais
    FROM Usuarios
    WHERE id = @ClienteID AND activo = 1; -- Buscar por ID y verificar que esté activo
END;
GO

-- Procedimiento que ingresa Usuarios a la Tabla Usuarios

CREATE PROCEDURE InsertUser
    @nombre NVARCHAR(50),
    @correo NVARCHAR(50),
    @password NVARCHAR(50),
    @telefono BIGINT,
    @profile_picture NVARCHAR(255),
    @pais NVARCHAR(50)
AS
BEGIN
    INSERT INTO Usuarios (nombre, correo, contraseña, telefono, profile_picture, pais)
    VALUES (@nombre, @correo, @password, @telefono, @profile_picture, @pais);
END;
GO




CREATE PROCEDURE 
    @correo NVARCHAR(50),
    @password NVARCHAR(50)
AS
BEGIN
    SELECT 
        id
    FROM Usuarios
    WHERE correo = @correo AND contraseña = @password AND activo = 1; -- Verificar credenciales y que esté activo
END;
GO


CREATE PROCEDURE SignInUser
    @correo VARCHAR(255),
    @contraseña VARCHAR(255)
AS
BEGIN
    -- Declaración de variables
    DECLARE @UsuarioID INT

    -- Buscar el usuario con el correo y contraseña proporcionados
    SELECT @UsuarioID = id
    FROM Usuarios
    WHERE correo = @correo AND contraseña = @contraseña AND activo = 1

    -- Comprobar si se encontró un usuario
    IF @UsuarioID IS NOT NULL
    BEGIN
        PRINT 'Inicio de sesión exitoso.'
        -- Aquí podrías devolver más detalles del usuario si es necesario
    END
    ELSE
    BEGIN
        PRINT 'Correo o contraseña incorrectos, o el usuario no está activo.'
    END
END
GO

-- Declarar variables para las credenciales
DECLARE @correo VARCHAR(255) = 'Machape@gmail.com';
DECLARE @contraseña VARCHAR(255) = '12345';

-- Ejecutar el procedimiento almacenado
EXEC SignInUser @correo, @contraseña;
GO


DECLARE @resultMessage VARCHAR(255),
        @UsuarioID INT;

EXEC SignInUser
    @correo = 'Machape@gmail.com',
    @password = '12345',
    @resultMessage = @resultMessage OUTPUT,
    @UsuarioID = @UsuarioID OUTPUT;

-- Ver los resultados
SELECT @resultMessage AS ResultMessage, @UsuarioID AS UsuarioID;
GO



CREATE PROCEDURE SignInUser
    @correo VARCHAR(255),
    @password VARCHAR(255),
    @resultMessage VARCHAR(255) OUTPUT,  -- Añadimos la variable de salida
    @UsuarioID INT OUTPUT  -- Devolvemos el ID del usuario como salida
AS
BEGIN
    -- Declaración de variables
    DECLARE @UsuarioIDLocal INT

    -- Buscar el usuario con el correo y contraseña proporcionados
    SELECT @UsuarioIDLocal = id
    FROM Usuarios
    WHERE correo = @correo AND contraseña = @password AND activo = 1

    -- Comprobar si se encontró un usuario
    IF @UsuarioIDLocal IS NOT NULL
    BEGIN
        SET @resultMessage = 'Inicio de sesión exitoso.'
        SET @UsuarioID = @UsuarioIDLocal
    END
    ELSE
    BEGIN
        SET @resultMessage = 'Correo o contraseña incorrectos, o el usuario no está activo.'
        SET @UsuarioID = NULL
    END
END
GO




CREATE PROCEDURE InsertProfile
    @userId INT,
    @nombre VARCHAR(255),
    @descripcion TEXT
AS
BEGIN
    INSERT INTO Perfiles (usuario_id, nombre, descripcion)
    VALUES (@userId, @nombre, @descripcion);

    -- Se puede retornar el ID del perfil insertado si se requiere
    SELECT SCOPE_IDENTITY() AS perfil_id;
END;
GO


-- Procedimiento para actualizar la imagen de perfil de un usuario
ALTER PROCEDURE imageProfile
    @id INT,
    @imagen_url VARCHAR(255)
AS
BEGIN
    UPDATE Perfiles
    SET imagen_url = @imagen_url
    WHERE id = @id;
END;


-- Probar el procedimiento imageProfile
DECLARE @userId INT;
EXEC imageProfile 
    @id = 30, -- Cambia este valor por un `userId` válido
    @imagen_url = 'https://i.pinimg.com/736x/f9/e9/23/f9e923139082d4fb59e7f8204e133b70.jpg';
GO

-- Probar el procedimiento InsertProfile

DECLARE @perfil_id INT;
EXEC InsertProfile 
    @userId = 15, -- Cambia este valor por un `userId` válido
    @nombre = 'Perfil 4',
    @descripcion = 'Descripción 4';

-- Mostrar el ID del perfil insertado
SELECT @perfil_id AS perfil_id;
GO

SELECT * FROM Perfiles WHERE usuario_id = 15;  -- Cambia el `usuario_id` por el que usaste
GO




CREATE PROCEDURE getProfile
    @userId INT
AS
BEGIN
    SELECT 
        id,
        nombre,
        descripcion,
        imagen_url
    FROM Perfiles
    WHERE usuario_id = @userId;
END;
GO

EXEC getProfile @userId = 1;
GO

CREATE PROCEDURE getCategoryId
    @categoryName VARCHAR(255)
AS
BEGIN
    SELECT 
        id
    FROM CategoriasRopa
    WHERE nombre = @categoryName;
END;
GO

EXEC getCategoryId @categoryName = 'Formal';
GO


-- MALO 

CREATE PROCEDURE inProfileCategory
    @profileId INT,
    @categoryId INT
AS 
BEGIN
    INSERT INTO Perfiles_Categorias (perfil_id, categoria_id)
    VALUES (@profileId, @categoryId);
END;

-- Probar el procedimiento inProfileCategory
EXEC inProfileCategory @profileId = 25, @categoryId = 1;
GO
-- FIN MALO


CREATE PROCEDURE ProfileCategory
    @profileId INT,
    @categoryName VARCHAR(255)
AS
BEGIN
    -- Obtener el ID de la categoría
    DECLARE @categoryId INT;
    SELECT @categoryId = id
    FROM CategoriasRopa
    WHERE nombre = @categoryName;

    -- Insertar en la tabla intermedia
    IF @categoryId IS NOT NULL
    BEGIN
        INSERT INTO Perfiles_Categorias (perfil_id, categoria_id)
        VALUES (@profileId, @categoryId);
    END
    ELSE
    BEGIN
        PRINT 'La categoría no existe.';
    END
END;
GO

EXEC ProfileCategory @profileId = 25, @categoryName = 'Casual';
GO


CREATE PROCEDURE lastProfileId
AS
BEGIN
    SELECT TOP 1 id
    FROM Perfiles
    ORDER BY id DESC;
END;
GO 


EXEC lastProfileId;
GO


CREATE PROCEDURE GetClothesByProfileCategory
    @profileId INT
AS
BEGIN 
    SELECT 
        Ropa.id,
        Ropa.nombre,
        Ropa.precio,
        Ropa.ropa_link,
        Ropa.imagen_url,
        Ropa.categoria_id
        
    FROM Ropa
    INNER JOIN CategoriasRopa ON Ropa.categoria_id = CategoriasRopa.id
    INNER JOIN Perfiles_Categorias ON CategoriasRopa.id = Perfiles_Categorias.categoria_id
    WHERE Perfiles_Categorias.perfil_id = @profileId;
END;
GO


EXEC GetClothesByProfileCategory @profileId = 25
GO


CREATE PROCEDURE missCategory
AS
BEGIN
    SELECT 
        cr.id, 
        cr.nombre
    FROM 
        CategoriasRopa cr
    LEFT JOIN 
        Ropa r ON cr.id = r.categoria_id
    WHERE 
        r.categoria_id IS NULL;
END;
GO
EXEC missCategory 
GO