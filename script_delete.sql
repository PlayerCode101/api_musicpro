-- DROP FOREIGN KEY
ALTER TABLE `product`
DROP FOREIGN KEY FK_ProductType,
DROP FOREIGN key FK_ProductSubtypeInstrument,
DROP FOREIGN KEY FK_ProductBrand,
DROP FOREIGN key FK_ProductsColor,
DROP FOREIGN key FK_ProductsRope_type,
DROP FOREIGN key FK_ProductsMaterial;

ALTER TABLE `sale`
DROP FOREIGN KEY FK_saleType_sale,
DROP FOREIGN KEY FK_saleWay_pay,
DROP FOREIGN KEY FK_saleType_storeStock,
DROP FOREIGN KEY FK_saleState_pay,
DROP FOREIGN KEY FK_saleType_document_type;

ALTER TABLE `shopping_cart`
DROP FOREIGN KEY FK_shopping_cartState;

ALTER TABLE `store_stock`
DROP FOREIGN KEY FK_storeStockProduct,
DROP FOREIGN KEY FK_storeStore;

ALTER TABLE `purchase_order`
DROP FOREIGN KEY FK_SalePurchase_order,
DROP FOREIGN KEY FK_StatePurchase_order;

-- DROP TABLE
DROP TABLE `product`;
DROP TABLE `type_product`;
DROP TABLE `subtype_product`;
DROP TABLE `brand`;
DROP TABLE `color`;
DROP TABLE `rope_type`;
DROP TABLE `material`;
DROP TABLE `store`;
DROP TABLE `sale`;
DROP TABLE `type_sale`;
DROP TABLE `way_pay`;
DROP TABLE `state`;
DROP TABLE `shopping_cart`;
DROP TABLE `store_stock`;
DROP TABLE `document_type`;
DROP TABLE `purchase_order`;

-- drop views

DROP VIEW view_product_list;
DROP VIEW view_products_guitar;
DROP VIEW view_products_bass;
DROP VIEW view_products_piano;
DROP VIEW view_products_acoustic_drums;
DROP VIEW view_products_electric_batteries;
DROP VIEW view_products_bolster;
DROP VIEW view_products_boxes;
DROP VIEW view_products_headset;
DROP VIEW view_available_products_m001;
DROP VIEW view_available_products_m002;
DROP VIEW view_available_products_m003;
DROP VIEW view_available_products_m004;
DROP VIEW view_sale_data;
DROP VIEW view_shopping_cart_data;
DROP VIEW view_purchase_order_data;