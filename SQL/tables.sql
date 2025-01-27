-- Creación de la tabla Usuarios
CREATE TABLE Usuarios (
    id INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(255) NOT NULL,
    correo VARCHAR(255) NOT NULL UNIQUE,
    contraseña VARCHAR(255) NOT NULL,
    telefono INT,
    pais VARCHAR(100), -- Nueva columna añadida
    fecha_reg DATETIME DEFAULT GETDATE(),
    activo BIT DEFAULT 1
);


-- Creación de la tabla Perfiles


ALTER TABLE Perfiles ADD imagen_url VARCHAR(255);

UPDATE Perfiles
SET imagen_url = 'https://static.wikia.nocookie.net/gatopedia/images/2/2e/El_gatoo.png/revision/latest?cb=20230103150310&path-prefix=es'
WHERE id = 26;

DELETE FROM Perfiles
WHERE usuario_id = 1;

CREATE TABLE Perfiles (
    id INT PRIMARY KEY IDENTITY(1,1),
    usuario_id INT,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    fecha_creacion DATETIME DEFAULT GETDATE(),
    imagen_url VARCHAR(255),
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(id)
);


-- Creación de la tabla Categorías de Ropa
CREATE TABLE CategoriasRopa (
    id INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT
);

-- Creación de la tabla intermedia Perfiles_Categorías
CREATE TABLE Perfiles_Categorias (
    perfil_id INT,
    categoria_id INT,
    PRIMARY KEY (perfil_id, categoria_id),
    FOREIGN KEY (perfil_id) REFERENCES Perfiles(id),
    FOREIGN KEY (categoria_id) REFERENCES CategoriasRopa(id)
);

-- Creación de la tabla Ropa
CREATE TABLE Ropa (
    id INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    categoria_id INT,
    precio INT,
    imagen_url VARCHAR(255),
    FOREIGN KEY (categoria_id) REFERENCES CategoriasRopa(id)
);
ALTER TABLE Ropa ADD precio VARCHAR(255); --WHAT PORQUE HICE ESTO LKASDFJAS
ALTER TABLE Ropa DROP precio;





INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, imagen_url)
VALUES
('SHEIN MOOSTA Camiseta sin mangas de mujer con cuello de halter y lentejuelas a la moda', NULL, NULL, NULL, 'https://img.ltwebstatic.com/images3_pi/2024/11/20/10/17320931791bb2d0cdf49d93ee0201c2ef9cc0ff8e_thumbnail_336x.webp'),
('SHEIN LUNE Camisa casual de manga larga con dobladillo de volantes sueltos y color liso', NULL, NULL, NULL, 'https://img.ltwebstatic.com/images3_pi/2024/11/15/b5/1731635294e2cd671094fc8eb2266b840b373beb64_thumbnail_336x.webp'),
('SHEIN LUNE Camiseta casual de manga larga con cuello en V y estampado floral para mujer', NULL, NULL, NULL, 'https://img.ltwebstatic.com/images3_pi/2024/11/20/99/1732079346292d334021f7edd83fe93a34b3b49a7c_thumbnail_336x.webp');

   
 INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('NIKE - Polera Deportiva Hombre', NULL, 127, 18.990, 'https://www.falabella.com/falabella-cl/product/15337681/Polera-Deportiva-Hombre-Nike/15337693', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/15337693_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('NIKE - Polera Manga Corta Deportiva Hombre Swim', NULL, 127, 19.990, 'https://www.falabella.com/falabella-cl/product/17183232/Polera-Manga-Corta-Deportiva-Hombre-Nike-Swim/17183245', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/17183245_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('ADIDAS - Polera Deportiva Hombre', NULL, 127, 22.990, 'https://www.falabella.com/falabella-cl/product/16810524/Polera-Deportiva-Hombre-Adidas/16810526', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/16810526_1/width=240,height=240,quality=70,format=webp,fit=pad');
    

    
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('ADIDAS - Amplimove Cross Training Zapatilla Deportiva Hombre Negro', NULL, 127, 59.990, 'https://www.falabella.com/falabella-cl/product/50350037/Amplimove-Cross-Training-Zapatilla-Deportiva-Hombre-Negro-Adidas/50350041', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/50350041_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('SKECHERS - Sandalia Deportivas para Hombre Caf�', NULL, 127, 39.990, 'https://www.falabella.com/falabella-cl/product/80006379/Sandalia-Deportivas-para-Hombre-Skechers-Cafe/80006383', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/80006383_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('DIADORA - Polera Deportiva Manga Corta Hombre', NULL, 127, 8.990, 'https://www.falabella.com/falabella-cl/product/882675413/Polera-Deportiva-Manga-Corta-Hombre-Diadora/882675419', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/882675419_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('PUMA - Polera Manga Corta Ess Elevated Embroidered Hombre', NULL, 127, 17.990, 'https://www.falabella.com/falabella-cl/product/17187602/Polera-Manga-Corta-Ess-Elevated-Embroidered-Hombre-Puma/17187613', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/17187613_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('LIPPI - Panal Zapatilla Outdoor Hombre Negro', NULL, 127, 39.990, 'https://www.falabella.com/falabella-cl/product/50125845/Panal-Zapatilla-Outdoor-Hombre-Negro-Lippi/50125847', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/50125847_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('NIKE - Revolution 7 Zapatilla Running Hombre Negro', NULL, 127, 59.990, 'https://www.falabella.com/falabella-cl/product/50332726/Revolution-7-Zapatilla-Running-Hombre-Negro-Nike/50332729', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/50332729_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('ADIDAS - Polera Deportiva Sports T-Shirts Training Hombre', NULL, 127, 19.990, 'https://www.falabella.com/falabella-cl/product/16812902/Polera-Deportiva-Sports-T-Shirts-Training-Hombre-Adidas/16812924', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/16812924_1/width=240,height=240,quality=70,format=webp,fit=pad');
    










    --
    
        INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('DIADORA - Poleron Casual Hombre', NULL, 121, 16.990, 'https://www.falabella.com/falabella-cl/product/882968480/Poleron-Casual-Hombre-Diadora/882968487', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/882968487_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('DIADORA - Poleron Algodon Hombre', NULL, 121, 16.990, 'https://www.falabella.com/falabella-cl/product/883010346/Poleron-Algodon-Hombre-Diadora/883010359', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883010359_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('DIADORA - Cortaviento Casual Poliamida Hombre', NULL, 121, 34.990, 'https://www.falabella.com/falabella-cl/product/883269843/Cortaviento-Casual-Poliamida-Hombre-Diadora/883269858', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883269858_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('ADIDAS - Polera Deportiva Sports T-Shirts Training Hombre', NULL, 121, 19.990, 'https://www.falabella.com/falabella-cl/product/16812902/Polera-Deportiva-Sports-T-Shirts-Training-Hombre-Adidas/16812917', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/16812917_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('DIADORA - Polera Deportiva Manga Corta Hombre', NULL, 121, 14.990, 'https://www.falabella.com/falabella-cl/product/883117976/Polera-Deportiva-Manga-Corta-Hombre-Diadora/883117977', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883117977_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('ADIDAS - Poleron Deportivo Hombre', NULL, 121, 39.990, 'https://www.falabella.com/falabella-cl/product/17157584/Poleron-Deportivo-Hombre-Adidas/17157600', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/17157600_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('NIKE - Poleron Club Hoodie Hombre', NULL, 121, 57.990, 'https://www.falabella.com/falabella-cl/product/8330345/Poleron-Club-Hoodie-Hombre-Nike/8330349', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/8330349_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('NIKE - Poleron Casual Regular Fit Hombre', NULL, 121, 65.990, 'https://www.falabella.com/falabella-cl/product/7454186/Poleron-Casual-Regular-Fit-Hombre-Nike/7454190', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/7454190_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('NIKE - Polera Manga Corta Sports Fitness Hombre', NULL, 121, 24.990, 'https://www.falabella.com/falabella-cl/product/16834556/Polera-Manga-Corta-Sports-Fitness-Hombre-Nike/17187390', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/17187390_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('NIKE - Poleron Deportivo Hombre', NULL, 121, 44.990, 'https://www.falabella.com/falabella-cl/product/7454172/Poleron-Deportivo-Hombre-Nike/7454181', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/7454181_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('NIKE - Poleron Deportivo Hombre', NULL, 121, 59.990, 'https://www.falabella.com/falabella-cl/product/14841274/Poleron-Deportivo-Hombre-Nike/17187407', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/17187407_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('PUMA - Poleron Hoodie Casual Algodon Hombre', NULL, 121, 30.990, 'https://www.falabella.com/falabella-cl/product/17256372/Poleron-Hoodie-Casual-Algodon-Hombre-Puma/17256386', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/17256386_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('NIKE - Poleron Full Zipper Casual Hombre', NULL, 121, 57.990, 'https://www.falabella.com/falabella-cl/product/8330348/Poleron-Full-Zipper-Casual-Hombre-Nike/8330351', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/8330351_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('DIADORA - Poleron Deportivo Hombre', NULL, 121, 29.990, 'https://www.falabella.com/falabella-cl/product/883047964/Poleron-Deportivo-Hombre-Diadora/883047973', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/883047973_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('PUMA - Poleron Half Zipper Hombre', NULL, 121, 46.990, 'https://www.falabella.com/falabella-cl/product/17000282/Poleron-Half-Zipper-Hombre-Puma/17000291', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/17000291_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('GENERICO - Blazer lujo casual para hombre', NULL, 121, 48.750, 'https://www.falabella.com/falabella-cl/product/127374107/Blazer-lujo-casual-para-hombre/127374111', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/127374111_01/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('PUMA - Poleron Cuello Redondo Hombre', NULL, 121, 36.990, 'https://www.falabella.com/falabella-cl/product/17197257/Poleron-Cuello-Redondo-Hombre-Puma/17197258', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/17197258_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('LEVIS - Camisa Casual Manga Corta Algodon Hombre', NULL, 121, 39.990, 'https://www.falabella.com/falabella-cl/product/17179674/Camisa-Casual-Manga-Corta-Algodon-Hombre-Levis/17179675', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/17179675_1/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('HAKA HONU - Polera Hombre Polo Terracota', NULL, 121, 14.990, 'https://www.falabella.com/falabella-cl/product/130376350/Polera-Hombre-Polo-Terracota-Haka-Honu/130376351', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/130376351_01/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('HAKA HONU - Poleron Hombre Canguro Negro', NULL, 121, 23.990, 'https://www.falabella.com/falabella-cl/product/117127931/Poleron-Hombre-Canguro-Negro-Haka-Honu/117127937', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/117127937_01/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('HAKA HONU - Poleron Hombre Canguro Azulino', NULL, 121, 23.990, 'https://www.falabella.com/falabella-cl/product/117127923/Poleron-Hombre-Canguro-Azulino-Haka-Honu/117127929', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/117127929_01/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('SOVIET - Camisa Cotele Hombre', NULL, 121, 17.990, 'https://www.falabella.com/falabella-cl/product/129624261/Camisa-Cotele-Hombre-Soviet-SOVIET/129624262', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/129624262_01/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('HAKA HONU - Poleron Hombre Peliculyon Burdeo', NULL, 121, 21.990, 'https://www.falabella.com/falabella-cl/product/130145943/Poleron-Hombre-Peliculyon-Burdeo-Haka-Honu/130188184', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/130188184_01/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('HAKA HONU - Poleron Hombre Peliculyon Negro', NULL, 121, 21.990, 'https://www.falabella.com/falabella-cl/product/117128215/Poleron-Hombre-Peliculyon-Negro-Haka-Honu/117128221', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/117128221_01/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('HAKA HONU - Poleron Hombre Peliculyon Terracota', NULL, 121, 21.990, 'https://www.falabella.com/falabella-cl/product/117128222/Poleron-Hombre-Peliculyon-Terracota-Haka-Honu/117128223', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/117128223_01/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('HAKA HONU - Poleron Hombre Ninja Negro', NULL, 121, 23.990, 'https://www.falabella.com/falabella-cl/product/131709156/Poleron-Hombre-Ninja-Negro-Haka-Honu/131709161', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/131709161_01/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('ESPRIT - Camisa De Algodon Hombre', NULL, 121, 17.990, 'https://www.falabella.com/falabella-cl/product/128346939/Camisa-De-Algodon-Hombre-Esprit-ESPRIT/128346944', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/128346944_01/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('SOVIET - Camisa Manga Larga Hombre', NULL, 121, 14.990, 'https://www.falabella.com/falabella-cl/product/119745449/Camisa-Manga-Larga-Hombre-Soviet-SOVIET/119745451', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/119745451_01/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('HAKA HONU - Poleron Hombre Refugia-T Negro', NULL, 121, 29.990, 'https://www.falabella.com/falabella-cl/product/121542214/Poleron-Hombre-Refugia-T-Negro-Haka-Honu/121542216', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/121542216_01/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('ESPRIT - Camisa De Algodon Hombre', NULL, 121, 17.990, 'https://www.falabella.com/falabella-cl/product/128346921/Camisa-De-Algodon-Hombre-Esprit-ESPRIT/128346926', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/128346926_01/width=240,height=240,quality=70,format=webp,fit=pad');
    
 
    INSERT INTO Ropa (nombre, descripcion, categoria_id, precio, ropa_link, imagen_url)
    VALUES ('HAKA HONU - Poleron Hombre Ninja Mostaza', NULL, 121, 23.990, 'https://www.falabella.com/falabella-cl/product/117128180/Poleron-Hombre-Ninja-Mostaza-Haka-Honu/117128185', 'https://www.falabella.com/cdn-cgi/imagedelivery/4fYuQyy-r8_rpBpcY7lH_A/falabellaCL/117128185_01/width=240,height=240,quality=70,format=webp,fit=pad');
    