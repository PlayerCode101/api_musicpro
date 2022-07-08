
-- VIEWS PRODUCTS
-- all products
CREATE OR REPLACE VIEW view_product_list
AS SELECT
	pr.sku_code,
	pr.name_product,
	tpr.name_type,
	stpr.name_subtype,
	br.name_brand,
	co.name_color,
	rot.name_rope_type,
	ma.name_material,
	pr.dimensions,
	pr.not_include,
  pr.n_keys,
	pr.voltage,
	pr.type_conection,
	pr.price,
	pr.discount
FROM product AS pr
LEFT JOIN type_product AS tpr
	ON pr.id_type = tpr.id_type
LEFT JOIN subtype_product AS stpr
	ON pr.id_subtype = stpr.id_subtype
LEFT JOIN brand AS br
	ON pr.id_brand = br.id_brand
LEFT JOIN color AS co
	ON pr.id_color = co.id_color
LEFT JOIN rope_type AS rot
	ON pr.id_rope_type = rot.id_rope_type
LEFT JOIN material AS ma
	ON pr.id_material = ma.id_material;

-- guitar products
CREATE OR REPLACE VIEW view_products_guitar
AS SELECT *
FROM view_product_list
WHERE name_subtype = 'GUITARRAS';

-- bass products
CREATE OR REPLACE VIEW view_products_bass
AS SELECT *
FROM view_product_list
WHERE name_subtype = 'BAJOS';

-- piano products
CREATE OR REPLACE VIEW view_products_piano
AS SELECT *
FROM view_product_list
WHERE name_subtype = 'PIANOS';

-- acuostic drums products
CREATE OR REPLACE VIEW view_products_acoustic_drums
AS SELECT *
FROM view_product_list
WHERE name_subtype = 'BATERIAS ACUSTICAS';

-- electric batteries products
CREATE OR REPLACE VIEW view_products_electric_batteries
AS SELECT *
FROM view_product_list
WHERE name_subtype = 'BATERIAS ELECTRONICAS';

-- bolster products
CREATE OR REPLACE VIEW view_products_bolster
AS SELECT *
FROM view_product_list
WHERE name_subtype = 'CABEZALES';

-- boxes products
CREATE OR REPLACE VIEW view_products_boxes
AS SELECT *
FROM view_product_list
WHERE name_subtype = 'CAJAS';

-- headset products
CREATE OR REPLACE VIEW view_products_headset
AS SELECT *
FROM view_product_list
WHERE name_subtype = 'AUDIFONOS';

-- monitor products
CREATE OR REPLACE VIEW view_products_monitor
AS SELECT *
FROM view_product_list
WHERE name_subtype = 'MONITORES';

-- loudspeakers products
CREATE OR REPLACE VIEW view_products_loudspeakers
AS SELECT *
FROM view_product_list
WHERE name_subtype = 'PARLANTES';

-- wires products
CREATE OR REPLACE VIEW view_products_wires
AS SELECT *
FROM view_product_list
WHERE name_subtype = 'CABLES';

-- microphone products
CREATE OR REPLACE VIEW view_products_microphone
AS SELECT *
FROM view_product_list
WHERE name_subtype = 'MICROFONOS';

-- interface products
CREATE OR REPLACE VIEW view_products_interface
AS SELECT *
FROM view_product_list
WHERE name_subtype = 'INTERFACES';

-- mixer products
CREATE OR REPLACE VIEW view_products_mixer
AS SELECT *
FROM view_product_list
WHERE name_subtype = 'MIXERS';

-- view store_stock
-- providencia
CREATE OR REPLACE VIEW view_available_products_m001
AS SELECT
  st.name_store,
  stst.sku_code,
  pr.name_product,
  stst.stock_product
FROM store_stock AS stst
JOIN store AS st
  ON stst.code_store = st.code_store
JOIN product AS pr
  ON stst.sku_code = pr.sku_code
WHERE stst.code_store = 'M-001' AND stst.stock_product > 0;

-- maipu
CREATE OR REPLACE VIEW view_available_products_m002
AS SELECT
  st.name_store,
  stst.sku_code,
  pr.name_product,
  stst.stock_product
FROM store_stock AS stst
JOIN store AS st
  ON stst.code_store = st.code_store
JOIN product AS pr
  ON stst.sku_code = pr.sku_code
WHERE stst.code_store = 'M-002' > stst.stock_product > 0;

-- santiago
CREATE OR REPLACE VIEW view_available_products_m003
AS SELECT
  st.name_store,
  stst.sku_code,
  pr.name_product,
  stst.stock_product
FROM store_stock AS stst
JOIN store AS st
  ON stst.code_store = st.code_store
JOIN product AS pr
  ON stst.sku_code = pr.sku_code
WHERE stst.code_store = 'M-003' > stst.stock_product > 0;

-- vitacura
CREATE OR REPLACE VIEW view_available_products_m004
AS SELECT
  st.name_store,
  stst.sku_code,
  pr.name_product,
  stst.stock_product
FROM store_stock AS stst
JOIN store AS st
  ON stst.code_store = st.code_store
JOIN product AS pr
  ON stst.sku_code = pr.sku_code
WHERE stst.code_store = 'M-004' > stst.stock_product > 0;

-- sale_data
CREATE OR REPLACE VIEW view_sale_data
AS SELECT
  st.name_store,
  ts.name_type_sale,
  wp.name_way_pay,
  sa.products,
  sa.sub_total_sale,
  sa.total_sale,
  dt.name_doc_type,
  DATE_FORMAT(sa.date_hour, "%H:%I:%S") AS sale_hour,
  DATE_FORMAT(sa.date_hour, "%d-%m-%Y") AS sale_date,
  sta.name_state
FROM `sale` AS sa
JOIN `type_sale` AS ts
  ON sa.id_type_sale = ts.id_type_sale
JOIN `document_type` AS dt
  ON sa.id_doc_type = dt.id_doc_type
JOIN store AS st
  ON sa.code_store = st.code_store
JOIN way_pay AS wp
  ON sa.id_way_pay = wp.id_way_pay
JOIN state AS sta
  ON sa.id_state = sta.id_state;

-- shopping cart
CREATE OR REPLACE VIEW view_shopping_cart_data
AS SELECT
  shc.id_cart,
  shc.products,
  sta.name_state
FROM shopping_cart AS shc
JOIN state AS sta
  ON shc.id_state = sta.id_state;

-- purchase order
CREATE OR REPLACE VIEW view_purchase_order_data
AS SELECT
  puo.n_order,
  st.name_store,
  sa.products,
  ts.name_type_sale,
  sta.name_state
FROM purchase_order AS puo
JOIN sale AS sa
  ON puo.id_sale = sa.id_sale
JOIN store AS st
  ON sa.code_store = st.code_store
JOIN type_sale AS ts
  ON sa.id_type_sale = ts.id_type_sale
JOIN state AS sta
  ON puo.id_state = sta.id_state;