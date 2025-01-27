

INSERT Usuarios (nombre, correo, contraseña, telefono) 
VALUES ('Cevin','Cevin@gmail.com','75753156y', 123456789); 

UPDATE Usuarios
SET profile_picture = 'https://pbs.twimg.com/media/GbL-7KlakAMnRC8?format=jpg&name=small'
WHERE id = 15;


USE master;
GO
EXEC xp_readerrorlog 0, 1, N'Server is listening on';
GO


SELECT SERVERPROPERTY('InstanceName') AS InstanceName, SERVERPROPERTY('MachineName') AS MachineName;







INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera Polo 60% Algod�n Manga Larga Hombre', NULL, NULL, 10850, 'https://imagedelivery.net/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/135977129_01/public');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera Pique Manga Corta Hombre', NULL, NULL, 9990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883157980_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Poleron Hombre con Cierre Algodon Butter + Capucha', NULL, NULL, 29990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/136609370_01/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera Manga Corta Hombre', NULL, NULL, 19990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883158263_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Camisa Casual Manga Corta Lino Hombre', NULL, NULL, 44990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883201616_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera Manga Corta Regular Fit Hombre', NULL, NULL, 29990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883159169_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera Manga Corta para Hombre', NULL, NULL, 9990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883167427_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Pantal�n Outwork Ripstop Mollen Hombre', NULL, NULL, 37380, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/123516181_01/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Pantal�n Corto Cargo Hombre', NULL, NULL, 29100, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/136844251_01/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera Manga Corta Regular Fit Hombre', NULL, NULL, 7990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883163522_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Pantal�n Cargo Fit Hombre', NULL, NULL, 34990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883328997_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Jeans Super Skinny Fit Hombre', NULL, NULL, 19990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/881848451_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Traje De Ba�o Hombre', NULL, NULL, 14990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883164143_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Poleron Hombre Casual', NULL, NULL, 29990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883117718_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Jeans Jogger Fit Hombre Cintura El�stica', NULL, NULL, 16990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/882124118_01/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Short Bermuda Algod�n Hombre Corte Americano', NULL, NULL, 23990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883197722_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera Casual Manga Corta Algod�n Hombre', NULL, NULL, 13990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883314022_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera Manga Corta Regular Algod�n Hombre', NULL, NULL, 13990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883197623_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Poleron Deportivo Hombre', NULL, NULL, 39990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/17157597_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Jeans Slim Fit Hombre', NULL, NULL, 26990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/17314005_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera Manga Corta Algod�n Hombre', NULL, NULL, 16990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883170753_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Poler�n Hombre Casual', NULL, NULL, 29990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883117718_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Pantal�n Cargo Gabardina Con Cinta Reflectante Hombre', NULL, NULL, 11990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/126578559_01/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera Pique Manga Corta Hombre', NULL, NULL, 9.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883157980_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Poleron Hombre con Cierre Algodon Butter + Capucha', NULL, NULL, 29.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/136609370_01/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera Manga Corta Hombre', NULL, NULL, 19.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883158263_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Camisa Casual Manga Corta Lino Hombre', NULL, NULL, 44.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883201616_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera Manga Corta Regular Fit Hombre', NULL, NULL, 29.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883159169_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera Manga Corta para Hombre', NULL, NULL, 9.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883167427_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Pantal�n Outwork Ripstop Mollen Hombre', NULL, NULL, 37.38, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/123516181_01/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Pantal�n Corto Cargo Hombre', NULL, NULL, 29.1, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/136844251_01/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera Manga Corta para Hombre', NULL, NULL, 9.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883167410_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera Manga Corta Relaxed Fit Hombre', NULL, NULL, 7.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883163522_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera Manga Corta Cuello Redondo Hombre', NULL, NULL, NULL, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883096462_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera Manga Corta Algod�n Regular Fit Hombre', NULL, NULL, 9.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883199049_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Jeans Cargo Fit Hombre', NULL, NULL, 34.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883328997_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Jeans Super Skinny Fit Hombre', NULL, NULL, 19.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/881848451_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Camisa Casual Manga Larga Slim Fit Lino Hombre', NULL, NULL, 34.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883164223_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera B�sica Algod�n Stretch Hombre', NULL, NULL, 14.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/17220217_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Bermuda Chino Algod�n Regular Fit Hombre', NULL, NULL, 19.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883158171_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Camisa Casual Manga Corta Viscosa Hombre', NULL, NULL, 20.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883197413_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera Manga Corta Algod�n Hombre', NULL, NULL, 24.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883163988_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Bermuda Chino Lino Hombre', NULL, NULL, 14.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883201352_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Camisa Manga Corta Hombre', NULL, NULL, 14.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883242722_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera Manga Corta Algod�n Hombre', NULL, NULL, 21.9, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/17228731_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera Manga Corta Algod�n Regular Fit Hombre', NULL, NULL, 9.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883196280_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Chaqueta De Jeans Regular Fit Hombre', NULL, NULL, 49.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/882673485_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Bermuda Casual Hombre', NULL, NULL, 16.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883158329_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Traje De Ba�o Hombre', NULL, NULL, 14.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883243591_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Poler�n Hombre Casual', NULL, NULL, 29.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883117718_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Short Bermuda Algod�n Hombre', NULL, NULL, 23.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883197722_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Jeans Skinny Hombre', NULL, NULL, 19.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/881687499_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Traje De Ba�o Hombre', NULL, NULL, 22.99, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/882963674_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Abrigo de mujer Outdoor Termica Impermeable CortaViento', NULL, NULL, 19590, 'https://imagedelivery.net/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/133873684_03/public');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera Tank Punto Sin Mangas Mujer', NULL, NULL, 8990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883255772_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Blazer Vest Mujer', NULL, NULL, 23990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883180123_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Polera 100% Algod�n con Volantes Mujer', NULL, NULL, 12990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/17134285_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Camisa Ramio Bolsillos Mujer', NULL, NULL, 22990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/17133603_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Vestido Corto Mujer', NULL, NULL, 19990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883255372_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Vestido Midi Mujer con Mangas Caladas', NULL, NULL, 16990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/882979924_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Traje de Ba�o Entero Dama', NULL, NULL, 27200, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/137910292_01/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Traje De Ba�o Bikini Playa Bikini Cintura Alta Negronaranja', NULL, NULL, 19980, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/124149775_01/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Blusa Off Shoulder Manga Corta Mujer', NULL, NULL, 8990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883254022_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Top Off Shoulder Sin Mangas Mujer', NULL, NULL, 12990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883310206_01/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Jeans Cargo Tiro Medio Mujer', NULL, NULL, 19990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883176514_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('SYBILLA - Vestido Largo Mujer', NULL, NULL, 13990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883253931_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('SYBILLA - Blusa Balloon Sin Mangas', NULL, NULL, 8990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883254101_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('SYBILLA - Jeans Grace Flare Tiro Alto Mujer', NULL, NULL, 14990, 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/881704456_1/width=240,height=240,quality=70,format=webp,fit=pad');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Camiseta b�sica de manga corta para hombre con dise�o impreso de efecto salpicadura de pintura y f�tbol, estilo casual', NULL, NULL, 8690, '//img.ltwebstatic.com/images3_pi/2024/12/26/bf/1735173917ecc1e3def62ff926b477a46748c4e93f_thumbnail_336x.jpg');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Manfinity Dauomo Camiseta estampada para hombres, casual y de moda para uso diario', NULL, NULL, 8690, '//img.ltwebstatic.com/images3_pi/2024/12/26/0b/173518457442e74ecdd84d8138535cbbc7cab342f7_thumbnail_336x.jpg');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Manfinity Dauomo Chaqueta de hombre con cremallera, manga larga, bolsillo y dise�o minimalista de capucha', NULL, NULL, 18590, '//img.ltwebstatic.com/images3_pi/2024/12/23/b2/1734932290bfd5ade8ede9d7bc4279ad0d52d7f588_thumbnail_336x.jpg');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('1 Paquete de Cinturones Casuales de Nailon para Hombres con Hebilla Propia para Uso Diario, Deportes, Exteriores y Viajes - Regalo Ideal para el A�o Nuevo Chino, D�a de San Valent�n y Uso Cotidiano', NULL, NULL, 4211, '//img.ltwebstatic.com/images3_spmp/2024/12/24/7a/1734974242a9b9bd8c29f087d9b82fc1158bb6258c_thumbnail_405x.webp');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Manfinity LEGND Pantalones vaqueros rectos de unicolor y multibolsillo, vers�tiles y casuales para hombres', NULL, NULL, 45790, '//img.ltwebstatic.com/images3_pi/2024/11/19/6a/1731980712f2145bb06033c0531adfce44ca51ec73_thumbnail_336x.jpg');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Jeans de pierna ancha y ajuste delgado con bolsillos sesgados y estampado de letras lavados para hombre, color negro liso, para fiesta y streetwear, estilo rapero', NULL, NULL, 17787, '//img.ltwebstatic.com/images3_spmp/2024/12/27/36/17352937594a78b66f93a85a591cbe64562dbf54c0_thumbnail_336x.jpg');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Manfinity Hypemode Pantalones informales largos con cord�n a rayas sencillos para hombres, para uso diario', NULL, NULL, 25690, '//img.ltwebstatic.com/images3_pi/2024/12/19/14/1734584918419a92f68efedb9ccdc96b47b8a67a0e_thumbnail_336x.jpg');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Camiseta de manga corta unisex de uso vers�til, holgada y casual con estampado de frase "Nuestro Amor" en ingl�s', NULL, NULL, 9053, '//img.ltwebstatic.com/images3_spmp/2024/12/12/19/17339881755627cfc7a0b7754eb680c92e84217110_thumbnail_405x.webp');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('3 pares de calcetines c�modos y vers�tiles de media ca�a unicolor negro/blanco/gris para hombre', NULL, NULL, 5590, '//img.ltwebstatic.com/images3_pi/2024/12/20/e2/173466681251279f9507bd7c709d9258d52eee25c0_thumbnail_405x.webp');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Manfinity Mode Conjunto de top de manga larga con cuello de solapa y pantalones lisos para hombres', NULL, NULL, 46290, '//img.ltwebstatic.com/images3_pi/2024/09/20/94/1726797144f48694b15d1aba4438359557909b12cf_thumbnail_336x.jpg');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Manfinity Homme Traje de chaqueta y pantal�n de unicolor para hombre de talla grande', NULL, NULL, 47690, '//img.ltwebstatic.com/images3_pi/2024/11/07/04/1730958913c07778df0862f873c2d133226e5fcef7_thumbnail_336x.jpg');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Manfinity Homme Conjunto de traje casual de talla grande estilo caballero con cuello de solapa, para oto�o', NULL, NULL, 33896, '//img.ltwebstatic.com/images3_pi/2024/10/01/96/1727774981b508c90f499b294958238054abc6b2a4_thumbnail_336x.jpg');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Manfinity Mode Traje informal de chaqueta y pantal�n de unicolor para hombre de talla grande', NULL, NULL, 57390, '//img.ltwebstatic.com/images3_pi/2024/09/23/9f/172707709297e6d68ff469134d2b96762465177a3f_thumbnail_405x.webp');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Manfinity Mode Conjunto de camisa de manga larga y pantalones largos de uso diario minimalista de unicolor para hombres de talla grande', NULL, NULL, 38790, '//img.ltwebstatic.com/images3_pi/2024/07/19/8e/1721377771824620eb14f18dfff25b925c2f61a2d8_thumbnail_336x.jpg');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Conjunto de traje con 2 piezas de blazer de doble botonadura y pantal�n de talla grande para hombre, dise�o de color contrastante', NULL, NULL, 49990, '//img.ltwebstatic.com/images3_pi/2024/12/02/3e/17331438205d1c218a195d3226b52edd96196ec420_thumbnail_336x.jpg');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Manfinity Mode Conjunto de traje casual de talla grande para hombre, chaqueta de manga larga con cuello de solapa y pantalones, de unicolor, para oto�o', NULL, NULL, 62590, '//img.ltwebstatic.com/images3_pi/2024/11/07/85/1730971689f3955b72a95dc73fd0b7490405e1224b_thumbnail_336x.jpg');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Manfinity Mode Conjunto de traje de chaqueta y pantal�n de manga larga de solapa de chal de unicolor para hombre de talla grande para negocios y viajes', NULL, NULL, 45145, '//img.ltwebstatic.com/images3_pi/2024/11/06/77/173088158780b12442044732019341b31a0a2506dd_thumbnail_405x.webp');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Manfinity Mode Conjunto de blazer y pantal�n de unicolor para hombre de talla grande', NULL, NULL, 40636, '//img.ltwebstatic.com/images3_pi/2024/06/01/45/1727768831862b4e908bfdc0fd6a2ed461fa891a23_thumbnail_405x.webp');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Manfinity Dauomo Sudadera Redonda Con Cuello De Letras Impresas Para Hombres', NULL, NULL, 11890, '//img.ltwebstatic.com/images3_pi/2023/12/19/c7/1702963038ae5eb0019649045b94a26d017a69081b_thumbnail_336x.jpg');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Manfinity RelaxMax Sudadera Con Media Cremallera De Color Liso Para Hombre Con Manga Ragl�n', NULL, NULL, 14790, '//img.ltwebstatic.com/images3_pi/2023/12/12/80/1702369950effbdfc05168eeff7c6796862c53199b_thumbnail_336x.jpg');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Sudadera con media cremallera de terciopelo para hombre', NULL, NULL, 11850, '//img.ltwebstatic.com/images3_spmp/2024/11/07/56/1730946235a34102464634bd89efff8f5acce41649_thumbnail_336x.jpg');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Camiseta de manga larga con estampado de ola 3D y letra para hombre, c�moda y casual de cuello redondo, estilo primaveral elegante', NULL, NULL, 8873, '//img.ltwebstatic.com/images3_spmp/2024/09/25/52/1727238250a757434778cccc5ae15c19154ca65f81_thumbnail_405x.webp');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Sudadera holgada informal con cuello redondo de manga larga con estampado de gato de dibujos animados para hombre, oto�o/invierno', NULL, NULL, 9592, '//img.ltwebstatic.com/images3_pi/2024/08/26/4b/1724652011525793bd5c27962d409c5badda7791d2_thumbnail_405x.webp');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Manfinity Homme Sudadera holgada para hombre con forro c�lido y estampado de letra', NULL, NULL, 9832, '//img.ltwebstatic.com/images3_pi/2024/07/18/0e/17212899175936db284500bfdd488bf98e304ce87d_thumbnail_336x.jpg');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Manfinity RelaxMax Sudadera holgada vintage con estampado de letras de manga larga para salir con amigos', NULL, NULL, 6676, '//img.ltwebstatic.com/images3_pi/2024/01/12/44/1705026853d110c29d4c455d012b826b77cfbf2e38_thumbnail_336x.jpg');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Manfinity Dauomo Sudadera Con Capucha Y Dise�o De Impresi�n Digital Para Hombre', NULL, NULL, 9443, '//img.ltwebstatic.com/images3_pi/2024/01/11/32/17049365363afe545e18220da4e9b6ba5be831ec35_thumbnail_336x.jpg');


INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES ('Sudadera con capucha de unicolor para hombres, primavera y oto�o', NULL, NULL, 12390, '//img.ltwebstatic.com/images3_spmp/2024/08/25/83/1724582380a695a77252bd92558b6444cb290c2d4b_thumbnail_405x.webp');











--LE FALTAN COSAS PERO POR SI ACASO:


    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN MOOSTA Camiseta sin mangas de mujer con cuello de halter y lentejuelas a la moda', NULL, NULL, NULL, '/SHEIN-MOOSTA-Women-s-Fashionable-Sequin-Halter-Neck-Camisole-p-48175861.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENTcn=productflowlisthz=0ps=13_1_0jc=itemPicking_00300887&src_tab_page_id=page_home1736029308403&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN LUNE Camisa casual de manga larga con dobladillo de volantes sueltos y color liso', NULL, NULL, NULL, '/SHEIN-LUNE-Loose-Ruffle-Hem-Plain-Color-Casual-Long-Sleeve-Shirt-p-47683253.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENTcn=productflowlisthz=0ps=13_1_0jc=itemPicking_00300887&src_tab_page_id=page_home1736029308403&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN LUNE Camiseta casual de manga larga con cuello en V y estampado floral para mujer', NULL, NULL, NULL, '/SHEIN-LUNE-V-Neck-Floral-Print-Long-Sleeve-Casual-T-Shirt-For-Women-Graphic-Tees-Women-Tops-For-Spring-Outfit-p-48165801.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENTcn=productflowlisthz=0ps=13_1_0jc=itemPicking_00300887&src_tab_page_id=page_home1736029308403&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN Essnce Camiseta de manga larga y cuello redondo ajustada para mujer con pliegues laterales el�sticos', NULL, NULL, NULL, '/SHEIN-Essnce-Women-s-Tight-Crew-Neck-Long-Sleeve-T-Shirt-With-Ruched-Side-Elasticated-p-47357159.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENTcn=productflowlisthz=0ps=13_1_0jc=itemPicking_00300887&src_tab_page_id=page_home1736029308403&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('Su�teres de punto para mujer de oto�o e invierno', NULL, NULL, NULL, '/Autumn-Winter-Women-Knitted-Sweaters-Fashion-New-Arrivals-French-Style-Pullover-Sweaters-Trendy-Color-Block-Back-To-School-American-Shirt-Casual-Wear-Teacher-Outfit-70s-Retro-Sweater-Commuter-Minimalist-Office-Wear-Vintage-Simple-French-Style-Solid-Sweaters-p-48138957.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENTcn=productflowlisthz=0ps=13_1_0jc=itemPicking_00300887&src_tab_page_id=page_home1736029308403&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN EZwear Chaqueta de motociclista con forro de tipo teddy', NULL, NULL, NULL, '/SHEIN-EZwear-Women-CoatsTeddy-Lined-Open-Front-Suedette-Moto-Jacket-p-50434466.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENTcn=productflowlisthz=0ps=13_1_0jc=itemPicking_00300887&src_tab_page_id=page_home1736029308403&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('Po�selle C�rdigan casual de mujer de unicolor', NULL, NULL, NULL, '/Po-selle-Women-s-Solid-Color-Long-Sleeve-Single-Breasted-Stand-Collar-Casual-Cardigan-Autumn-Winter-p-46192631.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENTcn=productflowlisthz=0ps=13_1_0jc=itemPicking_00300887&src_tab_page_id=page_home1736029308403&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN LUNE Su�ter holgado de punto con gr�fico de flor de piel de vis�n', NULL, NULL, NULL, '/SHEIN-LUNE-Women-s-Elegant-Mink-Fur-Flower-Graphic-Long-Sleeve-Loose-Knit-Sweater-p-46620801.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENTcn=productflowlisthz=0ps=13_1_0jc=itemPicking_00300887&src_tab_page_id=page_home1736029308403&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN MOOSTA Body de manga larga color marr�n', NULL, NULL, NULL, '/SHEIN-MOOSTA-Women-s-Brown-Long-Sleeve-Bodysuit-Slim-Fit-Figure-Flattering-Simple-Versatile-For-Commuting-p-48557652.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENTcn=productflowlisthz=0ps=13_1_0jc=itemPicking_00300887&src_tab_page_id=page_home1736029308403&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN WYWH Top sin espalda con estampado de leopardo', NULL, NULL, NULL, '/SHEIN-WYWH-Women-s-Fashion-Casual-Neck-Tie-Leopard-Print-Backless-Tank-Top-p-46593150.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENTcn=productflowlisthz=0ps=13_1_0jc=itemPicking_00300887&src_tab_page_id=page_home1736029308403&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN Essnce Leggings con forro t�rmico para mujer', NULL, NULL, NULL, '/SHEIN-Essnce-Women-s-Faux-Leather-Leggings-With-Thermal-Lined-Basic-Long-Tights-Autumn-Winter-p-50519857.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENTcn=productflowlisthz=0ps=13_1_0jc=itemPicking_00300887&src_tab_page_id=page_home1736029308403&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN LUNE Sudadera casual con capucha de forro polar', NULL, NULL, NULL, '/SHEIN-LUNE-Women-s-Solid-Color-Long-Sleeve-Zipper-Front-Fleece-Hooded-Casual-Sweatshirt-Autumn-Winter-p-48676934.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENTcn=productflowlisthz=0ps=13_1_0jc=itemPicking_00300887&src_tab_page_id=page_home1736029308403&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN Essnce Jersey de mujer de unicolor con dise�o de estrella', NULL, NULL, NULL, '/SHEIN-Essnce-Women-s-Casual-Solid-Color-Five-Pointed-Star-Pattern-Sweater-Autumn-Winter-p-49985432.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENTcn=productflowlisthz=0ps=13_1_0jc=itemPicking_00300887&src_tab_page_id=page_home1736029308403&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN Clasi Su�ter holgado casual y vers�til con cuello medio alto', NULL, NULL, NULL, '/SHEIN-Essnce-Loose-Fit-Casual-Versatile-Pullover-With-Half-High-Neck-Long-Sleeve-p-50011963.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENTcn=productflowlisthz=0ps=13_1_0jc=itemPicking_00300887&src_tab_page_id=page_home1736029308403&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('Cottnline Jeans vaqueros de mujer de pierna ancha, cintura baja', NULL, NULL, NULL, '/Cottnline-Women-Front-Button-Low-Waist-Minimalist-Pocket-Wide-Leg-Denim-Jeans-Casual-For-Daily-Wear-p-43497987.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENTcn=productflowlisthz=0ps=13_1_0jc=itemPicking_00300887&src_tab_page_id=page_home1736029308403&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN Attitoon Camiseta de manga corta suelta con cuello redondo', NULL, NULL, NULL, '/SHEIN-Attitoon-Casual-Minimalist-Rock-Lip-Graphic-Round-Neck-Short-Sleeve-Loose-T-Shirt-For-Women-Suitable-For-Summer-p-46643818.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENTcn=productflowlisthz=0ps=13_1_0jc=itemPicking_00300887&src_tab_page_id=page_home1736029308403&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN Holidaya Camiseta b�sica de unicolor con cuello en V', NULL, NULL, NULL, '/SHEIN-Holidaya-Basic-Solid-Color-V-Neck-T-Shirt-Casual-Vacation-Wear-p-46845747.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENTcn=productflowlisthz=0ps=13_1_0jc=itemPicking_00300887&src_tab_page_id=page_home1736029308403&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN LUNE Camiseta de manga larga de mujer con cuello en V, de unicolor, casual y vers�til', NULL, NULL, NULL, '/SHEIN-LUNE-Women-V-Neck-Solid-Color-Casual-Versatile-Long-Sleeve-T-Shirt-p-46900410.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENTcn=productflowlisthz=0ps=13_1_0jc=itemPicking_00300887&src_tab_page_id=page_home1736029308403&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN MOOSTA Su�ter holgado casual de cuello redondo y manga larga para mujer', NULL, NULL, NULL, '/SHEIN-MOOSTA-Women-S-Plain-Crew-Neck-Long-Sleeve-Casual-Pullover-Sweater-p-50087776.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENTcn=productflowlisthz=0ps=13_1_0jc=itemPicking_00300887&src_tab_page_id=page_home1736029308403&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN EZwear Sudadera casual de cuello redondo de manga larga', NULL, NULL, NULL, '/SHEIN-EZwear-English-Letter-Print-Round-Neck-Long-Sleeve-Casual-Sweatshirt-p-50838226.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENTcn=productflowlisthz=0ps=13_1_0jc=itemPicking_00300887&src_tab_page_id=page_home1736029308403&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('Jeans de denim lavado con estiramiento, forrados t�rmicamente', NULL, NULL, NULL, '/Winter-Thicken-Thermal-Lined-Skinny-Stretch-Washed-Denim-Jeans-p-47491713.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENTcn=productflowlisthz=0ps=13_1_0jc=itemPicking_00300887&src_tab_page_id=page_home1736029308403&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN Muchic Su�ter ajustado casual con estampado de caballero', NULL, NULL, NULL, 'https://cl.shein.com/SHEIN-EZwear-Women-s-Casual-Knight-Pattern-Fitted-Sweater-For-Autumn-Winter-p-48882548.html');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN LUNE Camiseta de talla grande con bloqueo de color, camisetas de mujer para primavera y oto�o', NULL, NULL, NULL, 'javascript:void(0)');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN Sport Studio Leggings de yoga Leggings de entrenamiento de control de barriga de alto estiramiento incons�til con pretina ancha', NULL, NULL, NULL, 'javascript:void(0)');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('Pendientes de moda de c�rculo hueco de acero inoxidable para mujeres', NULL, NULL, NULL, 'javascript:void(0)');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('Sujetador sin costuras y con espalda descubierta', NULL, NULL, NULL, 'javascript:void(0)');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('Organizador debajo del fregadero con caj�n deslizante', NULL, NULL, NULL, 'javascript:void(0)');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('Agenda 2025 en espa�ol/ingl�s', NULL, NULL, NULL, 'javascript:void(0)');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('Cubierta de mesa transparente de PVC', NULL, NULL, NULL, 'javascript:void(0)');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('Funda el�stica impermeable para sof�', NULL, NULL, NULL, 'javascript:void(0)');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('C�mara instant�nea imprimible para ni�os', NULL, NULL, NULL, 'javascript:void(0)');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('Almohadilla calefactora para taza de temperatura constante', NULL, NULL, NULL, 'javascript:void(0)');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN MOOSTA Camiseta sin mangas con cuello de halter y lentejuelas', NULL, NULL, NULL, '/SHEIN-MOOSTA-Women-s-Fashionable-Sequin-Halter-Neck-Camisole-p-48175861.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENT`cn=productflowlist`hz=0`ps=13_1_0`jc=itemPicking_00300887&src_tab_page_id=page_home1736030047835&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN LUNE Camisa casual de manga larga con dobladillo de volantes', NULL, NULL, NULL, '/SHEIN-LUNE-Loose-Ruffle-Hem-Plain-Color-Casual-Long-Sleeve-Shirt-p-47683253.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENT`cn=productflowlist`hz=0`ps=13_1_0`jc=itemPicking_00300887&src_tab_page_id=page_home1736030047835&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN LUNE Camiseta casual de manga larga con cuello en V y estampado floral', NULL, NULL, NULL, '/SHEIN-LUNE-V-Neck-Floral-Print-Long-Sleeve-Casual-T-Shirt-For-Women-Graphic-Tees-Women-Tops-For-Spring-Outfit-p-48165801.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENT`cn=productflowlist`hz=0`ps=13_1_0`jc=itemPicking_00300887&src_tab_page_id=page_home1736030047835&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN Essnce Camiseta de manga larga y cuello redondo ajustada para mujer', NULL, NULL, NULL, '/SHEIN-Essnce-Women-s-Tight-Crew-Neck-Long-Sleeve-T-Shirt-With-Ruched-Side-Elasticated-p-47357159.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENT`cn=productflowlist`hz=0`ps=13_1_0`jc=itemPicking_00300887&src_tab_page_id=page_home1736030047835&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN EZwear Sudadera holgada con capucha y estampado gr�fico', NULL, NULL, NULL, '/SHEIN-EZwear-Casual-Minimalist-MILANO-Graphic-Print-Loose-Fit-Hoodie-Sweatshirt-For-Women-p-49675619.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENT`cn=productflowlist`hz=0`ps=13_1_0`jc=itemPicking_00300887&src_tab_page_id=page_home1736030047835&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN Attitoon Camiseta de manga corta con cuello redondo', NULL, NULL, NULL, '/SHEIN-Attitoon-Casual-Minimalist-Rock-Lip-Graphic-Round-Neck-Short-Sleeve-Loose-T-Shirt-For-Women-Suitable-For-Summer-p-46643818.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENT`cn=productflowlist`hz=0`ps=13_1_0`jc=itemPicking_00300887&src_tab_page_id=page_home1736030047835&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN Clasi Camiseta de cuello alto gruesa como capa base para mujer', NULL, NULL, NULL, '/SHEIN-Clasi-Women-s-Thick-High-Neck-Base-Layer-T-Shirt-Versatile-For-Autumn-Winter-p-49219943.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENT`cn=productflowlist`hz=0`ps=13_1_0`jc=itemPicking_00300887&src_tab_page_id=page_home1736030047835&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN MOOSTA Set de 2 piezas con top asim�trico de hombro descubierto', NULL, NULL, NULL, '/SHEIN-MOOSTA-2pcs-Women-Winter-Casual-Fuzzy-Asymmetrical-Off-Shoulder-Top-With-Loose-Wide-Leg-Pants-Set-p-46458804.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENT`cn=productflowlist`hz=0`ps=13_1_0`jc=itemPicking_00300887&src_tab_page_id=page_home1736030047835&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('Camiseta casual de manga corta y cuello redondo para mujer', NULL, NULL, NULL, '/Women-s-Casual-Short-Sleeve-Round-Neck-T-Shirt-p-50125626.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENT`cn=productflowlist`hz=0`ps=13_1_0`jc=itemPicking_00300887&src_tab_page_id=page_home1736030047835&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN LUNE Jersey de cuello redondo para mujer en colores Maillard', NULL, NULL, NULL, '/SHEIN-LUNE-2024-Autumn-Winter-Women-s-New-Maillard-Color-Crew-Neck-Sweatshirt-Top-p-47675465.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENT`cn=productflowlist`hz=0`ps=13_1_0`jc=itemPicking_00300887&src_tab_page_id=page_home1736030047835&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('Jeans de denim lavado con estiramiento, forrados t�rmicamente y engrosados', NULL, NULL, NULL, '/Winter-Thicken-Thermal-Lined-Skinny-Stretch-Washed-Denim-Jeans-p-47491713.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENT`cn=productflowlist`hz=0`ps=13_1_0`jc=itemPicking_00300887&src_tab_page_id=page_home1736030047835&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN MOOSTA Body de manga larga color marr�n para mujer', NULL, NULL, NULL, '/SHEIN-MOOSTA-Women-s-Brown-Long-Sleeve-Bodysuit-Slim-Fit-Figure-Flattering-Simple-Versatile-For-Commuting-p-48557652.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENT`cn=productflowlist`hz=0`ps=13_1_0`jc=itemPicking_00300887&src_tab_page_id=page_home1736030047835&mallCode=1');
    

    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
    VALUES ('SHEIN MOOSTA Su�ter holgado casual de cuello redondo', NULL, NULL, NULL, '/SHEIN-MOOSTA-Women-S-Plain-Crew-Neck-Long-Sleeve-Casual-Pullover-Sweater-p-50087776.html?src_module=all&src_identifier=on=PRODUCT_ITEMS_COMPONENT`cn=productflowlist`hz=0`ps=13_1_0`jc=itemPicking_00300887&src_tab_page_id=page_home1736030047835&mallCode=1');


        INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Casual','Comodo y relajado, ideal para el dia a dia.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Formal','Elegante y sofisticado, utilizado en eventos importantes.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Bohemio','Estilo artistico y libre, con influencias hippie y etnicas.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Oversize','Prendas grandes y sueltas, comodas y de moda.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Callejero','Inspirado en la moda urbana y de hip hop.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Semi formal','Combina elementos formales y casuales, ideal para ocasiones menos estrictas.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Deportivo','Ropa funcional y comoda, disenada para el ejercicio.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Vintage','Prendas y accesorios de decadas pasadas.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Chic','Elegante y moderno, con un toque de sofisticacion.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Minimalista','Estilo sencillo y limpio, con pocos elementos.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Gotico','Oscuro y misterioso, con influencias del punk y el victoriano.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Punk','Rebelde y audaz, con prendas desgarradas y detalles metalicos.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Preppy','Estilo colegial y refinado, con colores vivos y estampados clasicos.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Hipster','Eclectico y alternativo, con un enfoque en lo vintage y lo indie.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Romantico','Delicado y femenino, con encajes, volantes y estampados florales.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Grunge','Desalinado y desenfadado, con camisas de franela y jeans rotos.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Militar','Inspirado en uniformes militares, con colores caqui y verdes.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Retro','Recrea estilos de decadas pasadas, especialmente los anos 70 y 80.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Eclectico','Mezcla de diferentes estilos y epocas, creando un look unico.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Urbano','Inspirado en la moda de las ciudades, con influencias del streetwear.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Normcore','Estilo sencillo y anonimo, con prendas basicas y neutras.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Skater','Influenciado por la cultura del skate, con ropa comoda y funcional.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Rocker','Inspirado en la musica rock, con chaquetas de cuero y jeans ajustados.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Country','Estilo rustico y campestre, con botas vaqueras y camisas a cuadros.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Clasico','Elegante y atemporal, con cortes y colores tradicionales.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Athleisure','Combina ropa deportiva con elementos casuales y elegantes.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Arty','Estilo artistico y creativo, con prendas unicas y llamativas.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Business casual','Elegante pero comodo, ideal para ambientes de trabajo menos formales.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Futurista','Inspirado en la ciencia ficcion, con prendas metalicas y cortes innovadores.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Cyberpunk','Estilo futurista y rebelde, con influencias de la tecnologia y el punk.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Pin-up','Inspirado en los anos 50, con vestidos ajustados y estampados llamativos.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Nautical','Estilo marinero, con colores azul, blanco y rojo, y detalles como rayas y anclas.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Tomboy','Estilo androgeno y desenfadado, con prendas masculinas y comodas.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Cosplay','Recrea la apariencia de personajes de ficcion, con disfraces elaborados.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Steampunk','Mezcla de moda victoriana y elementos futuristas, con engranajes y corses.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Safari','Inspirado en la ropa de exploradores, con colores neutros y funcionales.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Western','Estilo vaquero, con botas, sombreros y cinturones con hebillas grandes.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Androgeno','Estilo que borra las lineas de genero, combinando elementos masculinos y femeninos.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Lounge wear','Ropa comoda y relajada, ideal para estar en casa.');
    
 
    INSERT INTO CategoriasRopa (nombre, descripcion)
    VALUES ('Tradicional','Estilo basado en trajes y vestidos tipicos de diferentes culturas y epocas.');





        INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Jockey de sarga', 140, 10.990, 'https://cl.hm.com/1217386001/p', 'https://hmchile.vtexassets.com/arquivos/ids/6009343-600-900?v=638442648733100000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Camisa resort Loose Fit', 140, 16.990, 'https://cl.hm.com/1225147002/p', 'https://hmchile.vtexassets.com/arquivos/ids/6107327-600-900?v=638491049806570000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Camisa resort de punto Regular Fit', 140, 24.743, 'https://cl.hm.com/1212583001/p', 'https://hmchile.vtexassets.com/arquivos/ids/6149609-600-900?v=638507458181530000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Camisa en mezcla de lino Relaxed Fit', 140, 14.993, 'https://cl.hm.com/1160688007/p', 'https://hmchile.vtexassets.com/arquivos/ids/6023464-600-900?v=638447880879500000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Camisa resort de boucl� Regular Fit', 140, 26.990, 'https://cl.hm.com/1257496001/p', 'https://hmchile.vtexassets.com/arquivos/ids/6234482-600-900?v=638555828368600000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Pantal�n texturizado Relaxed Fit', 140, 32.990, 'https://cl.hm.com/1257497001/p', 'https://hmchile.vtexassets.com/arquivos/ids/6232728-600-900?v=638554967151470000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Chaqueta texturizada Loose Fit', 140, 32.990, 'https://cl.hm.com/1257441001/p', 'https://hmchile.vtexassets.com/arquivos/ids/6232584-600-900?v=638554966064470000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Camisa texturizada Loose Fit', 140, 22.990, 'https://cl.hm.com/1257667001/p', 'https://hmchile.vtexassets.com/arquivos/ids/6232771-600-900?v=638554967508100000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Camisa resort Regular Fit', 140, 19.990, 'https://cl.hm.com/1234488002/p', 'https://hmchile.vtexassets.com/arquivos/ids/6237966-600-900?v=638557566038400000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Camisa estampada Regular Fit', 140, 9.743, 'https://cl.hm.com/1223110004/p', 'https://hmchile.vtexassets.com/arquivos/ids/6222404-600-900?v=638549775179300000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Polera waffle Regular Fit', 140, 16.990, 'https://cl.hm.com/1236121003/p', 'https://hmchile.vtexassets.com/arquivos/ids/6254954-600-900?v=638564464350900000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Polera Regular Fit', 140, 16.990, 'https://cl.hm.com/1232514002/p', 'https://hmchile.vtexassets.com/arquivos/ids/6233890-600-900?v=638555824965270000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Polera polo en punto trenzado Slim Fit', 140, 26.990, 'https://cl.hm.com/1233769002/p', 'https://hmchile.vtexassets.com/arquivos/ids/6207454-600-900?v=638531645082770000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Polera polo con textura Regular Fit', 140, 18.392, 'https://cl.hm.com/1233102001/p', 'https://hmchile.vtexassets.com/arquivos/ids/6198905-600-900?v=638527333837330000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Camisa en mezcla de lino Regular Fit', 140, 16.990, 'https://cl.hm.com/1234387001/p', 'https://hmchile.vtexassets.com/arquivos/ids/6184426-600-900?v=638521277881030000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Pantal�n de algod�n Slim Fit', 140, 26.990, 'https://cl.hm.com/1228144006/p', 'https://hmchile.vtexassets.com/arquivos/ids/6240206-600-900?v=638558419746630000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Cintur�n de cuero', 140, 16.990, 'https://cl.hm.com/1002322001/p', 'https://hmchile.vtexassets.com/arquivos/ids/6169250-600-900?v=638516098239900000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Sandalias planas de cuero', 140, 26.990, 'https://cl.hm.com/1230414001/p', 'https://hmchile.vtexassets.com/arquivos/ids/6172478-600-900?v=638516140190070000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Polera de malla con estampado Oversized Fit', 140, 14.990, 'https://cl.hm.com/1140854008/p', 'https://hmchile.vtexassets.com/arquivos/ids/6209906-600-900?v=638533355240770000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Camiseta Loose Fit', 140, 16.990, 'https://cl.hm.com/1233356001/p', 'https://hmchile.vtexassets.com/arquivos/ids/6582164-600-900?v=638715422845430000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Pantal�n de sarga Slim Fit', 140, 22.990, 'https://cl.hm.com/1236096002/p', 'https://hmchile.vtexassets.com/arquivos/ids/6218924-600-900?v=638547186342600000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Polera polo de lyocell Slim Fit', 140, 19.990, 'https://cl.hm.com/1232559001/p', 'https://hmchile.vtexassets.com/arquivos/ids/6243761-600-900?v=638561002116530000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Polera Loose Fit', 140, 12.990, 'https://cl.hm.com/0972640070/p', 'https://hmchile.vtexassets.com/arquivos/ids/6098038-600-900?v=638488425808770000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Pack de 2 poleras', 140, 8.990, 'https://cl.hm.com/1212805001/p', 'https://hmchile.vtexassets.com/arquivos/ids/6580114-600-900?v=638715411733600000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Polera de algod�n', 140, 3.990, 'https://cl.hm.com/1150469001/p', 'https://hmchile.vtexassets.com/arquivos/ids/6169989-600-900?v=638516106653500000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Vestido con lazo', 140, 40.990, 'https://cl.hm.com/1254527001/p', 'https://hmchile.vtexassets.com/arquivos/ids/6217795-600-900?v=638546313972600000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Jeans con doblez ancho', 140, 46.990, 'https://cl.hm.com/1247251001/p', 'https://hmchile.vtexassets.com/arquivos/ids/6228303-600-900?v=638552392775430000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Minivestido evas�', 140, 19.990, 'https://cl.hm.com/1246943001/p', 'https://hmchile.vtexassets.com/arquivos/ids/6325859-600-900?v=638591245222700000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Camisa oversize', 140, 16.990, 'https://cl.hm.com/1239275004/p', 'https://hmchile.vtexassets.com/arquivos/ids/6196351-600-900?v=638526471854130000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Chaqueta corta', 140, 32.990, 'https://cl.hm.com/1237829005/p', 'https://hmchile.vtexassets.com/arquivos/ids/6260174-600-900?v=638566226809830000&width=600&height=900&aspect=true');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('Body con tirantes finos', 140, 12.990, 'https://cl.hm.com/1251656001/p', 'https://hmchile.vtexassets.com/arquivos/ids/6359044-600-900?v=638604235906900000&width=600&height=900&aspect=true');
    
      INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('VESTIDO MIDI PUNTO FLECOS', 123, 22.990, 'https://www.zara.com/cl/es/vestido-midi-punto-flecos-p03500001.html', 'https://static.zara.net/assets/public/6b7d/9b25/f6f9453d88fe/ffa29ce4db53/03500001330-p/03500001330-p.jpg?ts=1715759364319&w=426');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('VESTIDO ESTAMPADO CINTUR�N', 123, 29.990, 'https://www.zara.com/cl/es/vestido-estampado-cinturon-p09878142.html', 'https://static.zara.net/assets/public/3b1b/652f/1d4c4aafb8d4/d34384ac8036/09878142044-p/09878142044-p.jpg?ts=1716286372703&w=426');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('VESTIDO CORTO ESTAMPADO', 123, 22.990, 'https://www.zara.com/cl/es/vestido-corto-estampado-p05432562.html', 'https://static.zara.net/assets/public/6133/f152/8f3140b78ffe/c7e316dfdd17/05432562330-500-p/05432562330-500-p.jpg?ts=1730806631873&w=426');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('VESTIDO ESTAMPADO CINTUR�N YUTE', 123, 29.990, 'https://www.zara.com/cl/es/vestido-estampado-cinturon-yute-p02298092.html', 'https://static.zara.net/assets/public/b07f/c7de/0c014295a901/beb900ec5370/02298092330-p/02298092330-p.jpg?ts=1713953873795&w=426');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('VESTIDO NUDO ESTAMPADO', 123, 29.990, 'https://www.zara.com/cl/es/vestido-nudo-estampado-p05186501.html', 'https://static.zara.net/assets/public/1f96/54c1/54e94f809fed/7008f1dcb73d/05186501330-p/05186501330-p.jpg?ts=1729518369010&w=426');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('VESTIDO HALTER ESTAMPADO ZW COLLECTION', 123, 29.990, 'https://www.zara.com/cl/es/vestido-halter-estampado-zw-collection-p05107247.html', 'https://static.zara.net/assets/public/1eb1/dae8/2b2c4b40b269/bd604638bafa/05107247330-p/05107247330-p.jpg?ts=1720453709125&w=426');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('VESTIDO MIDI PUNTO ESTAMPADO ANIMAL', 123, 22.990, 'https://www.zara.com/cl/es/vestido-midi-punto-estampado-animal-p09874016.html', 'https://static.zara.net/assets/public/2a1e/0b96/1f0c4806b6e3/8aca0c947ca5/09874016051-p/09874016051-p.jpg?ts=1715785521579&w=426');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('VESTIDO ESTAMPADO ANIMAL LAZADA ZW COLLECTION', 123, 39.990, 'https://www.zara.com/cl/es/vestido-estampado-animal-lazada-zw-collection-p03999049.html', 'https://static.zara.net/assets/public/bd4c/76ea/6d9c4d43944f/d5f7fccf549a/03999049330-p/03999049330-p.jpg?ts=1722632611696&w=426');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('VESTIDO CAMISERO MIDI ESTAMPADO', 123, 29.990, 'https://www.zara.com/cl/es/vestido-camisero-midi-estampado-p03761201.html', 'https://static.zara.net/assets/public/9327/196b/40fa4082b347/e8d7da051416/03761201330-p/03761201330-p.jpg?ts=1721649369015&w=426');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('VESTIDO MIDI ESTAMPADO', 123, 29.990, 'https://www.zara.com/cl/es/vestido-midi-estampado-p01165092.html', 'https://static.zara.net/assets/public/e563/f3af/3338427aa38c/fe31fbfad5d3/01165092093-p/01165092093-p.jpg?ts=1715862659871&w=426');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('VESTIDO R�STICO BORDADOS', 123, 37.990, 'https://www.zara.com/cl/es/vestido-rustico-bordados-p05029952.html', 'https://static.zara.net/assets/public/ba89/8da0/90e24729812a/3837f3c2879d/05029952068-p/05029952068-p.jpg?ts=1733997196413&w=426');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('VESTIDO MINI ESTAMPADO', 123, 37.990, 'https://www.zara.com/cl/es/vestido-mini-estampado-p05029951.html', 'https://static.zara.net/assets/public/8fd9/f0e3/7e1946c99351/cd66c6403739/05029951330-p/05029951330-p.jpg?ts=1734020162397&w=426');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('VESTIDO HALTER ESTAMPADO ZW COLLECTION', 123, 50.990, 'https://www.zara.com/cl/es/vestido-halter-estampado-zw-collection-p06895079.html', 'https://static.zara.net/stdstatic/6.45.0/images/transparent-background.png');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('VESTIDO MOTIVOS BORDADOS', 123, 15.990, 'https://www.zara.com/cl/es/vestido-motivos-bordados-p04493555.html', 'https://static.zara.net/stdstatic/6.45.0/images/transparent-background.png');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('VESTIDO COMBINADO CROCHET', 123, 15.990, 'https://www.zara.com/cl/es/vestido-combinado-crochet-p02756490.html', 'https://static.zara.net/stdstatic/6.45.0/images/transparent-background.png');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('VESTIDO BORDADOS', 123, 21.990, 'https://www.zara.com/cl/es/vestido-bordados-p06303668.html', 'https://static.zara.net/stdstatic/6.45.0/images/transparent-background.png');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('VESTIDO ESTAMPADO', 123, 21.990, 'https://www.zara.com/cl/es/vestido-estampado-p01718676.html', 'https://static.zara.net/stdstatic/6.45.0/images/transparent-background.png');
    
 
    INSERT INTO Ropa (nombre, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('VESTIDO ESTAMPADO', 123, 19.990, 'https://www.zara.com/cl/es/vestido-estampado-p01381762.html', 'https://static.zara.net/stdstatic/6.45.0/images/transparent-background.png');