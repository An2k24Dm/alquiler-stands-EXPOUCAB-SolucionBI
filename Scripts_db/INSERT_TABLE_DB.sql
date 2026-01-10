INSERT INTO PAIS (Pai_nb_pais) VALUES
('Venezuela');

INSERT INTO CIUDAD (Ciu_nb_ciudad, Fk_pais) VALUES
('Caracas', 1),
('Maracay', 1),
('Valencia', 1);

INSERT INTO SEDE (Sed_nb_sede, Fk_ciudad) VALUES
('Las Mercedes', 1),
('El Hatillo', 1),
('Galipán', 1),
('Sebucán', 1),
('Centro Maracay', 2),
('Zona Industrial Valencia', 3);

INSERT INTO TIPO_EVENTO (Tie_nb_tipo_evento) VALUES
('Feria'),
('Bazar'),
('Exposición');

INSERT INTO TIPO_STAND (Tis_nb_tipo_stand) VALUES
('Mínima'),
('Estándar'),
('Máximo/Ajustable');

INSERT INTO LEYENDA_ESTRELLA (Lee_nb_descripcion_leyenda) VALUES
('Malo'),
('Regular'),
('Bueno'),
('Muy Bueno'),
('Excelente');

INSERT INTO CATEGORIA (Cat_nb_categoria) VALUES
('Comida'),
('Ropa y Calzado'),
('Deporte'),
('Hogar'),
('Tecnología'),
('Belleza'),
('Arte y Artesanía'),
('Bebidas'),
('Niños y Bebés');

INSERT INTO SUBCATEGORIA (Sub_nb_subcategoria, Fk_categoria) VALUES
('Hamburguesas', 1),
('Ropa para Damas', 2),
('Artículos Deportivos', 3),
('Electrodomésticos', 4),
('Accesorios Móviles', 5),
('Cuidado Personal', 6),
('Cuadros y Pintura', 7),
('Cafetería', 8),
('Juguetes', 9),
('Ropa para Niños', 9);

INSERT INTO CLIENTE (Cli_nb_cliente, Cli_cedula, Cli_rif, Cli_telefono, Cli_direccion, Cli_email) VALUES
('DulceManía C.A.', 'J29876123', 'J-29876123-5', '02121234567', 'Caracas', 'contacto@dulcemania.com'),
('Moda Latina', 'J20887411', 'J-20887411-9', '02129998877', 'Caracas', 'ventas@modalatina.com'),
('Burger House', 'J30011223', 'J-30011223-0', '02127654321', 'Caracas', 'info@burgerhouse.com'),
('TecnoPlus Store', 'J31245896', 'J-31245896-4', '02125556677', 'Valencia', 'ventas@tecnoplus.com'),
('Arte Vivo', 'J28745123', 'J-28745123-8', '02123334455', 'El Hatillo', 'contacto@artevivo.com'),
('Kids World', 'J33456987', 'J-33456987-1', '02129991122', 'Maracay', 'info@kidsworld.com'),
('Coffee Time', 'J34789612', 'J-34789612-2', '02125551234', 'Las Mercedes', 'contacto@coffeetime.com'),
('Urban Style', 'J36547891', 'J-36547891-6', '02128889977', 'Sebucán', 'ventas@urbanstyle.com'),
('Fit Zone', 'J38965412', 'J-38965412-0', '02123332211', 'Valencia', 'info@fitzone.com'),
('Casa & Deco', 'J31256987', 'J-31256987-9', '02126667788', 'Maracay', 'contacto@casadeco.com'),
('Smart Gadgets', 'J39874125', 'J-39874125-4', '02129994433', 'Caracas', 'ventas@smartgadgets.com');

INSERT INTO VISITANTE (Vis_cedula, Vis_nb_visitante, Vis_sexo, Vis_email) VALUES
('14523698', 'José León', 'M', 'jleon@gmail.com'),
('19874563', 'Ana Villalba', 'F', 'ana.villalba@gmail.com'),
('20458963', 'Marcos Rivero', 'M', 'marcos.rivero@gmail.com'),
('18645239', 'Laura Rodriguez', 'F', 'laurar@gmail.com'),
('21548963', 'Carlos Méndez', 'M', 'cmendez@gmail.com'),
('17456321', 'Patricia Gómez', 'F', 'pgomez@gmail.com'),
('22987456', 'Luis Fernández', 'M', 'lfernandez@gmail.com'),
('19321456', 'María Salazar', 'F', 'msalazar@gmail.com'),
('17896542', 'Daniel Pérez', 'M', 'daniel.perez@gmail.com'),
('24698753', 'Sofía Morales', 'F', 'sofia.morales@gmail.com'),
('15987463', 'Andrés Lugo', 'M', 'andres.lugo@gmail.com'),
('21456987', 'Valentina Rojas', 'F', 'valen.rojas@gmail.com'),
('19358742', 'Ricardo Figueroa', 'M', 'rfigueroa@gmail.com'),
('22874196', 'Natalia Suárez', 'F', 'natalia.suarez@gmail.com'),
('16745982', 'Miguel Torres', 'M', 'miguel.torres@gmail.com'),
('25469871', 'Paola Castillo', 'F', 'paola.castillo@gmail.com');

INSERT INTO EVENTO (Eve_nb_evento, Eve_fecha_inicio, Eve_fecha_fin, Eve_descripcion, Eve_email, Fk_tipo_evento, Fk_sede) VALUES
('Feria de Comida Caracas 2025', '2025-03-10', '2025-03-12', 'Feria gastronómica con comida tradicional y gourmet', 'info@feriacomida.com', 1, 1),
('Bazar Artesanal El Hatillo 2025', '2025-04-20', '2025-04-22', 'Bazar de artesanías, ropa y accesorios', 'contacto@bazarhatillo.com', 2, 2),
('Expo Deportes Galipán 2025', '2025-05-15', '2025-05-17', 'Exposición de artículos deportivos y actividades recreativas', 'expodeportes@galipan.com', 3, 3),
('Expo Tecnología Valencia 2025', '2025-06-10', '2025-06-12', 'Exposición de innovación y tecnología', 'info@expotecno.com', 3, 6),
('Feria Infantil Maracay 2025', '2025-07-05', '2025-07-07', 'Feria dedicada a productos y servicios infantiles', 'contacto@feriainfantil.com', 1, 5);

INSERT INTO EVENTO_STAND (Fk_evento, Fk_tipo_stand, Evs_cantidad_estimada, Evs_mts_cuadrados_stand, Evs_precio) VALUES
(1, 1, 20, 6, 500),
(1, 2, 15, 12, 800),
(1, 3, 10, 15, 1000),
(2, 1, 25, 6, 500),
(2, 2, 10, 12, 800),
(2, 3, 5, 15, 1000),
(3, 1, 30, 6, 500),
(3, 2, 15, 12, 800),
(3, 3, 8, 15, 1000),
(4, 1, 20, 6, 500),
(4, 2, 15, 12, 800),
(4, 3, 8, 15, 1000),
(5, 1, 18, 6, 500),
(5, 2, 12, 12, 800),
(5, 3, 6, 15, 1000);

INSERT INTO CONTRATO (Con_fecha_alquiler, Con_mts_cuadrados_adicionales, Con_monto, Fk_cliente, Fk_evento, Fk_subcategoria, Fk_tipo_stand) VALUES
('2025-02-15', 0, 500, 1, 1, 1, 1),
('2025-02-20', 2, 1300, 2, 1, 4, 3),
('2025-03-01', 0, 500, 3, 1, 2, 1),
('2025-04-01', 0, 800, 2, 2, 3, 2),
('2025-04-05', 3, 1450, 1, 2, 1, 3),
('2025-05-01', 0, 800, 3, 3, 5, 2),
('2025-05-20', 0, 500, 4, 4, 5, 1),
('2025-05-22', 2, 1300, 5, 4, 7, 3),
('2025-06-01', 0, 800, 6, 5, 9, 2),
('2025-06-03', 4, 1500, 1, 5, 10, 3),
('2025-02-18', 0, 500, 7, 1, 8, 1),
('2025-02-22', 1, 1150, 8, 1, 5, 3),
('2025-03-05', 0, 800, 9, 2, 3, 2),
('2025-03-08', 2, 1300, 10, 2, 1, 3),
('2025-04-10', 0, 500, 11, 3, 6, 1),
('2025-04-12', 3, 1450, 6, 3, 7, 3),
('2025-05-08', 0, 800, 5, 4, 9, 2),
('2025-05-12', 4, 1500, 4, 4, 10, 3);

INSERT INTO ENTRADA (Ent_fecha_entrada, Ent_hora_entrada, Ent_recomienda_amigo, Ent_calificacion, Fk_evento, Fk_visitante, Fk_leyenda_estrella) VALUES
('2025-03-10', '10:15', TRUE, 10, 1, 1, 5),
('2025-03-10', '13:40', TRUE, 8, 1, 2, 4),
('2025-04-20', '11:00', FALSE, 2, 2, 3, 1),
('2025-05-15', '14:30', FALSE, 1, 3, 4, 1),
('2025-06-10', '09:30', TRUE, 6, 4, 5, 3),
('2025-06-10', '12:45', FALSE, 2, 4, 6, 1),
('2025-07-05', '10:00', TRUE, 8, 5, 7, 4),
('2025-07-06', '15:20', TRUE, 7, 5, 8, 4),
('2025-03-11', '11:20', TRUE, 6, 1, 9, 3),
('2025-03-12', '16:45', FALSE, 3, 1, 10, 2),
('2025-04-21', '10:10', TRUE, 4, 2, 11, 3),
('2025-04-22', '14:30', TRUE, 5, 2, 12, 3),
('2025-05-16', '09:50', TRUE, 9, 3, 13, 4),
('2025-05-17', '13:15', FALSE, 3, 3, 14, 2),
('2025-06-11', '12:00', TRUE, 9, 4, 15, 5),
('2025-07-06', '16:10', TRUE, 7, 5, 16, 4);