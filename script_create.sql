CREATE TABLE `type_product` (
  `id_type` INT NOT NULL AUTO_INCREMENT,
  `name_type` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `subtype_product` (
  `id_subtype` INT NOT NULL  AUTO_INCREMENT,
  `name_subtype` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_subtype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `brand` (
  `id_brand` INT NOT NULL AUTO_INCREMENT,
  `name_brand` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_brand`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `color` (
  `id_color` INT NOT NULL AUTO_INCREMENT,
  `name_color` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_color`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `rope_type` (
  `id_rope_type` INT NOT NULL AUTO_INCREMENT,
  `name_rope_type` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_rope_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `material` (
  `id_material` INT NOT NULL AUTO_INCREMENT,
  `name_material` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_material`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `product` (
  `sku_code` INT NOT NULL,
  `name_product` VARCHAR(100) NOT NULL,
  `id_type` INT,
  `id_subtype` INT,
  `id_brand` INT, 
  `id_color` INT,
  `id_rope_type` INT,
  `id_material` INT,
  `dimensions` VARCHAR(100),
  `not_include` VARCHAR(100),
  `n_keys` INT, 
  `voltage` FLOAT,
  `type_conection` VARCHAR(100),
  `price` INT NOT NULL,
  `discount` FLOAT DEFAULT 0,
  PRIMARY KEY (`sku_code`),
  CONSTRAINT FK_ProductType FOREIGN KEY (`id_type`) REFERENCES `type_product`(`id_type`),
  CONSTRAINT FK_ProductSubtypeInstrument FOREIGN KEY (`id_subtype`) REFERENCES `subtype_product`(`id_subtype`),
  CONSTRAINT FK_ProductBrand FOREIGN KEY (`id_brand`) REFERENCES `brand`(`id_brand`),
  CONSTRAINT FK_ProductsColor FOREIGN KEY (`id_color`) REFERENCES `color`(`id_color`),
  CONSTRAINT FK_ProductsRope_type FOREIGN KEY (`id_rope_type`) REFERENCES `rope_type`(`id_rope_type`),
  CONSTRAINT FK_ProductsMaterial FOREIGN KEY (`id_material`) REFERENCES `material`(`id_material`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 

CREATE TABLE `store` (
  `code_store` VARCHAR(100) NOT NULL,
  `name_store` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`code_store`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `type_sale` (
  `id_type_sale` INT NOT NULL AUTO_INCREMENT,
  `name_type_sale` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_type_sale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `way_pay` (
  `id_way_pay` INT NOT NULL AUTO_INCREMENT,
  `name_way_pay` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_way_pay`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `store_stock` (
  `sku_code` INT NOT NULL,
  `code_store` VARCHAR(100) NOT NULL,
  `stock_product` INT DEFAULT 0,
  CONSTRAINT FK_storeStockProduct FOREIGN KEY (`sku_code`) REFERENCES `product`(`sku_code`),
  CONSTRAINT FK_storeStore FOREIGN KEY (`code_store`) REFERENCES `store`(`code_store`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `state` (
  `id_state` INT NOT NULL AUTO_INCREMENT,
  `name_state` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `document_type` (
  `id_doc_type` INT NOT NULL AUTO_INCREMENT,
  `name_doc_type` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_doc_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `sale` (
  `id_sale` INT NOT NULL AUTO_INCREMENT,
  `id_type_sale` INT NOT NULL,
  `id_doc_type` INT NOT NULL, 
  `code_store` VARCHAR(100) NOT NULL,
  `id_way_pay` INT NOT NULL,
  `products` TEXT NOT NULL,
  `sub_total_sale` INT NOT NULL,
  `total_sale` INT NOT NULL,
  `date_hour` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `id_state` INT NOT NULL,
  PRIMARY KEY (`id_sale`),
  CONSTRAINT FK_saleType_sale FOREIGN KEY (`id_type_sale`) REFERENCES `type_sale`(`id_type_sale`),
  CONSTRAINT FK_saleType_storeStock FOREIGN KEY (`code_store`) REFERENCES `store`(`code_store`),
  CONSTRAINT FK_saleType_document_type FOREIGN KEY (`id_doc_type`) REFERENCES `document_type`(`id_doc_type`),
  CONSTRAINT FK_saleWay_pay FOREIGN KEY (`id_way_pay`) REFERENCES `way_pay`(`id_way_pay`),
  CONSTRAINT FK_saleState_pay FOREIGN KEY (`id_state`) REFERENCES `state`(`id_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `shopping_cart` (
  `id_cart` INT NOT NULL AUTO_INCREMENT,
  `products` TEXT,
  `id_state` INT,
  PRIMARY KEY (`id_cart`),
  CONSTRAINT FK_shopping_cartState FOREIGN KEY (`id_state`) REFERENCES state(`id_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `purchase_order` (
  `n_order` INT NOT NULL AUTO_INCREMENT,
  `id_sale` INT,
  `id_state` INT,
  PRIMARY KEY (`n_order`),
  CONSTRAINT FK_SalePurchase_order FOREIGN KEY (`id_sale`) REFERENCES `sale`(`id_sale`),
  CONSTRAINT FK_StatePurchase_order FOREIGN KEY (`id_state`) REFERENCES `state`(`id_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
