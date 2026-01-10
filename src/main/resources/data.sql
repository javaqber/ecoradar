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

-- 4. Punto en Barcelona
INSERT INTO spots (nombre, descripcion, categoria, ubicacion) 
VALUES ('Punto Limpio BCN', 'Centro de residuos.', 'Reciclaje', 
ST_SetSRID(ST_MakePoint(2.1734, 41.3851), 4326));