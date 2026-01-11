-- data.sql

-- 1. Punto en la Puerta del Sol 
INSERT INTO spots (nombre, descripcion, categoria, ubicacion) 
VALUES ('Punto de Reciclaje Sol', 'Contenedores de vidrio y plástico junto al metro.', 'Reciclaje', 
ST_SetSRID(ST_MakePoint(-3.7038, 40.4168), 4326));

-- 2. Punto en el Retiro 
INSERT INTO spots (nombre, descripcion, categoria, ubicacion) 
VALUES ('Fuente del Retiro', 'Fuente de agua potable cerca del estanque.', 'Agua', 
ST_SetSRID(ST_MakePoint(-3.6830, 40.4180), 4326));

-- 3. Punto en Nuevos Ministerios 
INSERT INTO spots (nombre, descripcion, categoria, ubicacion) 
VALUES ('Cargador Tesla', 'Carga rápida para eléctricos.', 'Energía', 
ST_SetSRID(ST_MakePoint(-3.6920, 40.4470), 4326));

-- 4. Punto en Sevilla
INSERT INTO spots (nombre, descripcion, categoria, ubicacion) 
VALUES ('Urbanizacion Echaguy.', 'Entrenúcleos', 'Vivienda', 
ST_SetSRID(ST_MakePoint(-5.928282515470928, 37.31060833424005), 4326));

-- 5. Punto en Dos Hermanas (Entrenúcleos)
INSERT INTO spots (nombre, descripcion, categoria, ubicacion) 
VALUES ('Torre Panorámica', 'Entrenúcleos', 'Urbanismo', 
ST_SetSRID(ST_MakePoint(-5.9347222222222, 37.309722222222), 4326));