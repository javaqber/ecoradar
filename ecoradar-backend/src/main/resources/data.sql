-- data.sql

-- ESPACIOS NATURALES / SIERRAS
INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Parque Natural Sierra Norte de Sevilla',
  'Espacio natural protegido con bosques mediterráneos, dehesas y alta biodiversidad',
  'Espacio Natural',
  ST_SetSRID(ST_MakePoint(-5.814514, 37.919826), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Cerro del Hierro',
  'Monumento natural con formaciones kársticas y alto valor geológico y paisajístico',
  'Espacio Natural',
  ST_SetSRID(ST_MakePoint(-5.693000, 37.908000), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Cascadas del Huéznar',
  'Monumento natural fluvial con bosques de ribera y gran interés ecológico',
  'Espacio Natural',
  ST_SetSRID(ST_MakePoint(-5.494000, 37.883000), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Corredor Verde Metropolitano',
  'Ruta ecológica que conecta zonas rurales y periurbanas fomentando la movilidad sostenible',
  'Espacio Natural',
  ST_SetSRID(ST_MakePoint(-6.030000, 37.289000), 4326)
);


-- PARQUES URBANOS (ZONAS VERDES)
INSERT INTO spots (nombre, descripcion, categoria, ubicacion) 
VALUES (
    'El Pensador', 
    'Entrenúcleos', 
    'Urbanismo', 
ST_SetSRID(ST_MakePoint(-5.9347222222222, 37.309722222222), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Parque de María Luisa',
  'Principal parque histórico de Sevilla, con amplias zonas verdes y valor ecológico urbano',
  'Parque Urbano',
  ST_SetSRID(ST_MakePoint(-5.992500, 37.375555), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Parque del Alamillo',
  'Gran parque periurbano con vegetación mediterránea y funciones ecológicas',
  'Parque Urbano',
  ST_SetSRID(ST_MakePoint(-5.997222, 37.418611), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Parque Amate',
  'Zona verde urbana con senderos y espacios naturales en el distrito Cerro-Amate',
  'Parque Urbano',
  ST_SetSRID(ST_MakePoint(-5.953900, 37.380300), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Parque de los Príncipes',
  'Parque urbano con arbolado, áreas recreativas y biodiversidad local',
  'Parque Urbano',
  ST_SetSRID(ST_MakePoint(-6.012600, 37.374900), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion) 
VALUES (
    'Bioalverde',
    'Huerta ecológica.', 
    'Supermercado', 
ST_SetSRID(ST_MakePoint(-5.937269, 37.330763), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Parque de La Alquería del Pilar',
  'Principal parque urbano de Dos Hermanas, con amplias zonas verdes y valor ambiental',
  'Parque Urbano',
  ST_SetSRID(ST_MakePoint(-5.924600, 37.287700), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Parque Forestal Dehesa de Doña María',
  'Gran espacio verde periurbano con senderos y vegetación mediterránea',
  'Parque Urbano',
  ST_SetSRID(ST_MakePoint(-5.938300, 37.273900), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Parque Entrenúcleos',
  'Zona verde moderna integrada en el nuevo desarrollo urbano de Entrenúcleos',
  'Parque Urbano',
  ST_SetSRID(ST_MakePoint(-5.930900, 37.320600), 4326)
);



-- ECOPUNTOS (Reciclaje Urbano)
INSERT INTO spots (nombre, descripcion, categoria, ubicacion) 
VALUES (
    'Herboteca', 
    'Supermercado Ecológico Herboristería', 
    'Supermercado', 
ST_SetSRID(ST_MakePoint(-6.0039436, 37.3819363), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Ecopunto Distrito Triana',
  'Ecopunto urbano para reciclaje de pequeños residuos como pilas, aceite y electrónicos',
  'Reciclaje',
  ST_SetSRID(ST_MakePoint(-6.007800, 37.389300), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Ecopunto Casco Antiguo',
  'Punto de reciclaje selectivo de proximidad en el centro histórico',
  'Reciclaje',
  ST_SetSRID(ST_MakePoint(-5.993500, 37.388500), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Ecopunto Nervión',
  'Ecopunto para recogida selectiva de residuos domésticos especiales',
  'Reciclaje',
  ST_SetSRID(ST_MakePoint(-5.985000, 37.377000), 4326)
);


-- PUNTOS LIMPIOS (Gestión de Residuos)
INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Punto Limpio Los Olivos',
  'Centro de recogida de residuos especiales y voluminosos gestionado por Lipasam',
  'Gestión de Residuos',
  ST_SetSRID(ST_MakePoint(-6.036700, 37.380600), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Punto Limpio Los Pinos',
  'Instalación municipal para el reciclaje de residuos domésticos especiales',
  'Gestión de Residuos',
  ST_SetSRID(ST_MakePoint(-5.995200, 37.363500), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Punto Limpio Las Jacarandas',
  'Punto limpio urbano para la correcta gestión de residuos no convencionales',
  'Gestión de Residuos',
  ST_SetSRID(ST_MakePoint(-5.986500, 37.413000), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Punto Limpio Dos Hermanas',
  'Instalación municipal para la recogida de residuos especiales y voluminosos',
  'Gestión de Residuos',
  ST_SetSRID(ST_MakePoint(-5.933400, 37.282600), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Ecopunto Centro Dos Hermanas',
  'Punto de reciclaje selectivo para pequeños residuos domésticos',
  'Reciclaje',
  ST_SetSRID(ST_MakePoint(-5.922800, 37.283900), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Ecopunto Entrenúcleos',
  'Ecopunto urbano para reciclaje selectivo en zona residencial de Entrenúcleos',
  'Reciclaje',
  ST_SetSRID(ST_MakePoint(-5.931600, 37.318900), 4326)
);


-- CARGADORES ELÉCTRICOS
INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Cargador Eléctrico Isla de la Cartuja',
  'Punto público de recarga para vehículos eléctricos',
  'Movilidad Sostenible',
  ST_SetSRID(ST_MakePoint(-6.154800, 37.422500), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Cargador Eléctrico Triana',
  'Estación de recarga para movilidad eléctrica urbana',
  'Movilidad Sostenible',
  ST_SetSRID(ST_MakePoint(-6.003100, 37.415300), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Cargador Eléctrico Distrito Norte',
  'Punto de recarga pública para vehículos eléctricos en zona residencial',
  'Movilidad Sostenible',
  ST_SetSRID(ST_MakePoint(-5.992500, 37.464000), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Cargador Eléctrico Entrenúcleos',
  'Punto público de recarga para vehículos eléctricos en Entrenúcleos',
  'Movilidad Sostenible',
  ST_SetSRID(ST_MakePoint(-5.929800, 37.319800), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Cargador Eléctrico Dos Hermanas Centro',
  'Estación de recarga pública para movilidad eléctrica urbana',
  'Movilidad Sostenible',
  ST_SetSRID(ST_MakePoint(-5.923300, 37.284600), 4326)
);


-- FUENTES PÚBLICAS
INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Fuente Pública Alameda de Hércules',
  'Fuente de agua potable de acceso público en zona peatonal',
  'Agua y Bienestar',
  ST_SetSRID(ST_MakePoint(-5.982800, 37.388800), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Fuente Pública Parque de María Luisa',
  'Fuente de agua potable situada en zona verde urbana',
  'Agua y Bienestar',
  ST_SetSRID(ST_MakePoint(-5.989000, 37.374400), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Fuente Puerta de Jerez',
  'Fuente pública de agua potable en una de las plazas principales de Sevilla',
  'Agua y Bienestar',
  ST_SetSRID(ST_MakePoint(-5.993000, 37.386000), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Fuente Pública Parque de La Alquería',
  'Fuente de agua potable ubicada dentro del Parque de La Alquería del Pilar',
  'Agua y Bienestar',
  ST_SetSRID(ST_MakePoint(-5.924200, 37.287300), 4326)
);

INSERT INTO spots (nombre, descripcion, categoria, ubicacion)
VALUES (
  'Fuente Pública Parque Entrenúcleos',
  'Fuente de agua potable en zona verde del barrio de Entrenúcleos',
  'Agua y Bienestar',
  ST_SetSRID(ST_MakePoint(-5.930300, 37.320200), 4326)
);



-- 1. Punto en la Puerta del Sol 
INSERT INTO spots (nombre, descripcion, categoria, ubicacion) 
VALUES ('Punto de Reciclaje Sol', 'Contenedores de vidrio y plástico junto al metro.', 'Reciclaje', 
ST_SetSRID(ST_MakePoint(-3.7038, 40.4168), 4326));

-- 2. Punto en el Retiro 
INSERT INTO spots (nombre, descripcion, categoria, ubicacion) 
VALUES ('Fuente del Retiro', 'Fuente de agua potable cerca del estanque.', 'Agua', 
ST_SetSRID(ST_MakePoint(-3.6830, 40.4180), 4326));
