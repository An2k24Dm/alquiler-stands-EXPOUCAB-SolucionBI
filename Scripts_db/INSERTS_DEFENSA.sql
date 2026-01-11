INSERT INTO EVENTO (Eve_nb_evento, Eve_fecha_inicio, Eve_fecha_fin, Eve_descripcion, Eve_email, Fk_tipo_evento, Fk_sede) VALUES
('Feria de Innovación Caracas 2023', '2023-09-15', '2023-09-17', 'Evento de innovación y emprendimiento en Caracas', 'innovacion2023@ferias.com', 1, 1);

INSERT INTO EVENTO_STAND (Fk_evento, Fk_tipo_stand, Evs_cantidad_estimada, Evs_mts_cuadrados_stand, Evs_precio) VALUES
(16, 1, 9, 6, 500),
(16, 2, 8, 12, 800),
(16, 3, 5, 15, 1000);

INSERT INTO CONTRATO (Con_fecha_alquiler, Con_mts_cuadrados_adicionales, Con_monto, Fk_cliente, Fk_evento, Fk_subcategoria, Fk_tipo_stand) VALUES
('2023-09-15', 14, 3100, 18, 16, 5, 3),
('2023-09-15', 10, 2500, 10, 16, 4, 3),
('2023-09-15', 20, 4000, 17, 16, 5, 3),
('2023-09-16', 15, 3250, 16, 16, 4, 3),
('2023-09-16', 9, 2350, 15, 16, 4, 3),
('2023-09-17', 11, 2650, 14, 16, 5, 3),
('2024-07-06', 14, 3100, 18, 15, 5, 3),
('2024-09-15', 14, 3100, 18, 14, 5, 3),
('2024-11-20', 14, 3100, 18, 13, 5, 3);

INSERT INTO ENTRADA (Ent_fecha_entrada, Ent_hora_entrada, Ent_recomienda_amigo, Ent_calificacion, Fk_evento, Fk_visitante, Fk_leyenda_estrella) VALUES
('2023-09-15', '10:15', TRUE, 10, 16, 1, 5),
('2023-09-15', '13:40', TRUE, 8, 16, 2, 4),
('2023-09-15', '11:00', TRUE, 8, 16, 3, 4),
('2023-09-15', '14:30', TRUE, 9, 16, 18, 5),
('2023-09-16', '09:30', TRUE, 7, 16, 5, 4),
('2023-09-16', '12:45', TRUE, 10, 16, 7, 5),
('2023-09-16', '10:00', TRUE, 8, 16, 7, 4),
('2023-09-16', '15:20', TRUE, 7, 16, 13, 4),
('2023-09-17', '11:20', TRUE, 6, 16, 15, 3),
('2023-09-17', '16:45', TRUE, 8, 16, 9, 4),
('2023-09-17', '10:10', TRUE, 8, 16, 11, 4);