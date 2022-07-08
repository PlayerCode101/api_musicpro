-- brand listo
INSERT INTO musicpro.brand
(name_brand)
VALUES
('Epiphone'),
('Freeman'),
('Tama'),
('Pearl'),
('Sonor'),
('Mapex'),
('Roland'),
('Alesis'),
('ENGL'),
('Marshall'),
('Pavey'),
('EVH'),
('Ibanez');

-- color listo
INSERT INTO musicpro.color
(name_color)
VALUES
('Negro'),
('Blanco'),
('Amarillo'),
('Azul'),
('Rojo'),
('Cafe'),
('Naranjo'),
('Verde'),
('Gris'),
('Celeste');

-- material listo
INSERT INTO musicpro.material
(name_material)
VALUES
('DAddario, .010-.046'),
('Gibson, .010-.046'),
('Abeto'),
('Cuerpo de Caoba. Top: Flamed Maple'),
('D Addario, .012-.053'),
('Alamo'),
('Sitka'),
('Basswood'),
('Tilo americano'),
('Caoba');

-- rope_type
INSERT INTO musicpro.rope_type
(name_rope_type)
VALUES
('Nylon'),
('Metal');

-- state listo
INSERT INTO musicpro.state
(name_state)
VALUES
('Por pagar'),
('Pagado'),
('Por despachar'),
('Despachado'),
('Entregado'),
('Aprobado'),
('Rechazado'),
('Cancelado');

-- store
INSERT INTO musicpro.store
(code_store, name_store)
VALUES
('M-001', 'Casa Matriz Providencia'),
('M-002', 'Sucursal Maipu'),
('M-003', 'Sucursal Santiago'),
('M-004', 'Sucursal Vitacura');

-- subtype_instrument listo
INSERT INTO musicpro.subtype_product
(name_subtype)
VALUES
('GUITARRAS'),
('BAJOS'),
('PIANOS'),
('BATERIAS ACUSTICAS'),
('BATERIAS ELECTRONICAS'),
('CABEZALES'),
('CAJAS'),
('AUDIFONOS'),
('MONITORES'),
('PARLANTES'),
('CABLES'),
('MICROFONOS'),
('INTERFACES'),
('MIXERS');

-- type_product listo
INSERT INTO musicpro.type_product
(name_type)
VALUES
('CUERDAS'),
('PERCUSION'),
('AMPLIFICADORES'),
('OTROS');

select * FROM musicpro.type_product;

-- type_sale listo
INSERT INTO musicpro.type_sale
(name_type_sale)
VALUES
('Presencial'),
('Online'),
('Telefonico');

-- way_pay listo
INSERT INTO musicpro.way_pay
(name_way_pay)
VALUES
('Debito'),
('Transferencia'),
('Efectivo'),
('Credito');

-- document_type listo
INSERT INTO musicpro.document_type
(name_doc_type)
VALUES
('Boleta'),
('Factura');

-- product
-- product
INSERT INTO musicpro.product
(sku_code, name_product, id_type, id_subtype, id_brand, id_color, id_rope_type, id_material, dimensions, not_include, n_keys, voltage, type_conection, price, discount)
values
(4676362, 'Guitarras Cuerpo Solido Ibanez AZES40', 1, 1, 1, 10, 1, 10, '115 x 105 x 50 cm', 'Funda', null, 56, null, 150000, 5),
(1110197, 'Guitarra acústica Folk Takamine', 1, 1, 4, 4, 1, 9, '110 x 100 x 50 cm', 'Amplificador', null, null, null, 70000, 10),
(1175849, 'Guitarra Eléctrica Ibanez AZES40 PRB', 1, 1, 3, 5, 2, 8, '113 x 106 x 55 cm', 'Uñeta', null, 80, 'Cable', 360000, 5),
(4526473, 'Bajo eléctrico de 4 cuerdas Ibanez SR505E BM', 1, 2, 4, 6, 2, 7, '120 x 110 x 60 cm', 'Funda', null, 569, 'Cable', 350000, 10),
(4647284, 'Bajo eléctrico de 5 cuerdas', 1, 2, 6, 7, 2, 6, '115 x 115 x 50 cm', 'Uñeta', null, null, 'Cable', 400000, 5),
(4525533, 'Bajo Activo', 1, 2, 3, 8, 2, 5, '120 x 110 x 60 cm', 'Amplicar', null, 88, 'Cable', 400000, 10),
(4566253, 'Bajo Pasivo', 1, 2, 4, 9, 2, 4, '125 x 115 x 55 cm', 'Funda', null, null, null, 350000, 30),
(4366253, 'Piano de media cola', 1, 3, 5, 10, 2, 3, '160 x 125 x 70 cm', 'Pedestal', 88, null, 'Cable', 800000, 25),
(4566273, 'Piano de cola entera', 1, 3, 6, 1, 2, 2, '160 x 125 x 70 cm', 'Pedestal', 61, null, 'Cable', 600000, 15),
(4563253, 'Pianolas', 1, 3, 7, 2, null, 1, '150 x 110 x 60 cm', 'Pedestal', 60, null, 'Cable', 500000, 10),
(4569803, 'Baterías Acústicas', 2, 4, 8, 3, null, 3, '130 x 120 x 110', 'Baquetas', null, null, null, 450000, 5),
(5566253, 'Batería Electrónica', 2, 5, 9, 4, null, 6, '120 x 110 x 100', 'Baquetas', null, 98, 'Cable', 560000, 5),
(9756253, 'Cabezal', 3, 6, 13, 5, null, 8, '21.5 x 47 x 22.8 cm', 'Cable', null, null, 'Cable', 30000, 10),
(4632529, 'Caja', 3, 7, 12, 6, null, 9, '30 x 50 x 30 cm', 'Funda', null, null, 'Cable', 50000, 5),
(4634329, 'Audífonos de monitoreo Sennheiser HD 206', 4, 8, 11, 7, null, 10, '25 x 35 cm', 'Cable', null, null, 'Bluetooth', 30000, 8),
(4600989, 'Monitor de estudio activo Jbl 305PMKII', 4, 9, 10, 8, null, 2, '29.8 x 18.5 x 23.1 cm', 'Funda', null, 987, 'Cable', 56999, 10),
(8273643, 'Parlante Bluetooth Bose Soundlink Revolve Plus II negro', 4, 10, 10, 9, null, 4, '15 x 8 x 8 cms', null, null, 452, 'Bluetooth', 67000, 0),
(9948372, 'Cable Crossover Roland Systems SC-W20F', 4, 11, 5, null, null, 5, '20 metros', 'Funda', null, null, 'Cable', 40000, 10),
(1092938, 'Micrófono dinámico Shure MV7 para Podcasting', 4, 12, 3, 10, null, 6, '200 x 42 x 127 mm', 'Cable', null, 89, 'Cable', 120000, 5),
(6427473, 'Interfaz de audio Focusrite Scarlett 2i2', 4, 13, 9, 1, null, 7, '25 x 17.6 x 20 cm', 'Funda', null, null, 'Cable', 680000, 5),
(8721629, 'Mixer Zoom L-8', 4, 14, 7, 2, null, 8, '10.8 cm x 26.7 cm x 45.2 cm ', 'Funda', null, 563, 'Cable', 500000, 5);

INSERT INTO musicpro.sale
(id_type_sale, id_doc_type, code_store, id_way_pay, products, sub_total_sale, total_sale, date_hour, id_state)
VALUES
(1, 1, 'M-001', 4, '[4632529, 9948372, 8721629]', 400000, 450000, CURRENT_TIMESTAMP, 8),
(2, 1, 'M-001', 2, '[4525533, 4656749]', 300000, 350000, CURRENT_TIMESTAMP, 7),
(1, 2, 'M-001', 3, '[1110197, 4656739, 4634329]', 560000, 600000, CURRENT_TIMESTAMP, 5),
(3, 1, 'M-002', 1, '[1110197, 4656749]', 789000, 800000, CURRENT_TIMESTAMP, 1),
(1, 1, 'M-002', 2, '[1175849]', 450000, 500000, CURRENT_TIMESTAMP, 3),
(3, 2, 'M-002', 3, '[4676362, 4569803]', 250000, 300000, CURRENT_TIMESTAMP, 5),
(2, 1, 'M-003', 4, '[4656739]', 300000, 350000, CURRENT_TIMESTAMP, 5),
(1, 2, 'M-003', 1, '[4647284, 4566273]', 740000, 770000, CURRENT_TIMESTAMP, 4),
(3, 2, 'M-003', 1, '[8273643, 4656749]', 800000, 860000, CURRENT_TIMESTAMP, 7),
(2, 1, 'M-003', 2, '[1175849, 4656739]', 679000, 650000, CURRENT_TIMESTAMP, 6),
(3, 1, 'M-004', 4, '[1110197]', 780000, 750000, CURRENT_TIMESTAMP, 2),
(1, 2, 'M-004', 3, '[1092938]', 450000, 400000, CURRENT_TIMESTAMP, 2),
(1, 1, 'M-004', 2, '[9756253]', 65000, 70000, CURRENT_TIMESTAMP, 2),
(3, 2, 'M-004', 1, '[4566253]', 654000, 700000, CURRENT_TIMESTAMP, 1),
(1, 1, 'M-003', 2, '[9948372]', 28000, 30000, CURRENT_TIMESTAMP, 2),
(1, 2, 'M-003', 4, '[1110197]', 45000, 40000, CURRENT_TIMESTAMP, 2),
(3, 2, 'M-004', 3, '[4566273]', 45000, 40000, CURRENT_TIMESTAMP, 1),
(1, 2, 'M-001', 4, '[8273643, 1092938]', 20000, 23000, CURRENT_TIMESTAMP, 1),
(1, 1, 'M-002', 3, '[1110197]', 145000, 160000, CURRENT_TIMESTAMP, 2),
(3, 2, 'M-001', 1, '[5566253]', 450000, 400000, CURRENT_TIMESTAMP, 2),
(1, 2, 'M-001', 3, '[1092938, 8273643, 1092938]', 350000, 400000, CURRENT_TIMESTAMP, 4);

-- purchase_order
INSERT INTO musicpro.purchase_order
(id_sale, id_state)
VALUES
(1,5),
(2,5),
(3,5),
(4,5),
(5,5),
(6,5),
(7,5),
(8,5),
(9,5),
(10,5),
(11,5),
(12,5),
(13,5),
(14,5),
(15,5),
(16,5),
(17,5),
(18,5),
(19,5),
(20,5),
(21,5);

-- store_stock
INSERT INTO musicpro.store_stock
(sku_code, code_store, stock_product)
VALUES
(4676362, 'M-001', 100),
(1110197, 'M-001', 69),
(1175849, 'M-001', 95),
(4526473, 'M-001', 38),
(6427473, 'M-001', 40),
(4647284, 'M-001', 76),
(4525533, 'M-001', 50),
(4566253, 'M-001', 49),
(4366253, 'M-001', 100),
(4566273, 'M-001', 90),
(4563253, 'M-001', 40),
(4569803, 'M-001', 50),
(5566253, 'M-001', 30),
(9756253, 'M-001', 20),
(4632529, 'M-001', 98),
(4634329, 'M-001', 94),
(4600989, 'M-001', 39),
(8273643, 'M-001', 29),
(9948372, 'M-001', 19),
(1092938, 'M-001', 38),
(8721629, 'M-001', 28),
(4676362, 'M-002', 10),
(1110197, 'M-002', 10),
(1175849, 'M-002', 12),
(4526473, 'M-002', 9),
(6427473, 'M-002', 8),
(4647284, 'M-002', 9),
(4525533, 'M-002', 6),
(4566253, 'M-002', 4),
(4366253, 'M-002', 6),
(4566273, 'M-002', 9),
(4563253, 'M-002', 10),
(4569803, 'M-002', 3),
(5566253, 'M-002', 15),
(9756253, 'M-002', 0),
(4632529, 'M-002', 0),
(4634329, 'M-002', 20),
(4600989, 'M-002', 5),
(8273643, 'M-002', 0),
(9948372, 'M-002', 10),
(1092938, 'M-002', 8),
(8721629, 'M-002', 0),
(4676362, 'M-003', 0),
(1110197, 'M-003', 8),
(1175849, 'M-003', 10),
(4526473, 'M-003', 9),
(6427473, 'M-003', 11),
(4647284, 'M-003', 15),
(4525533, 'M-003', 0),
(4566253, 'M-003', 0),
(4366253, 'M-003', 19),
(4566273, 'M-003', 5),
(4563253, 'M-003', 3),
(4569803, 'M-003', 0),
(5566253, 'M-003', 10),
(9756253, 'M-003', 2),
(4632529, 'M-003', 5),
(4634329, 'M-003', 8),
(4600989, 'M-003', 0),
(8273643, 'M-003', 1),
(9948372, 'M-003', 3),
(1092938, 'M-003', 8),
(8721629, 'M-003', 5),
(4676362, 'M-004', 0),
(1110197, 'M-004', 3),
(1175849, 'M-004', 2),
(4526473, 'M-004', 10),
(6427473, 'M-004', 8),
(4647284, 'M-004', 19),
(4525533, 'M-004', 0),
(4566253, 'M-004', 6),
(4366253, 'M-004', 3),
(4566273, 'M-004', 2),
(4563253, 'M-004', 6),
(4569803, 'M-004', 7),
(5566253, 'M-004', 4),
(9756253, 'M-004', 0),
(4632529, 'M-004', 8),
(4634329, 'M-004', 9),
(4600989, 'M-004', 14),
(8273643, 'M-004', 3),
(9948372, 'M-004', 0),
(1092938, 'M-004', 7),
(8721629, 'M-004', 3);
