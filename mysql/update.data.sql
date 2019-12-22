USE `example`;

UPDATE `history` SET `id`                = TRIM(REPLACE(`id`, CHAR(9), ''));
UPDATE `history` SET `id`                = NULL WHERE `id` = '';

UPDATE `history` SET `merchant_order_id` = TRIM(REPLACE(`merchant_order_id`, CHAR(9), ''));
UPDATE `history` SET `merchant_order_id` = NULL WHERE `merchant_order_id` = '';

UPDATE `history` SET `created_at`        = TRIM(REPLACE(`created_at`, CHAR(9), ''));
UPDATE `history` SET `created_at`        = NULL WHERE `created_at` = '';

UPDATE `history` SET `payment_at`        = TRIM(REPLACE(`payment_at`, CHAR(9), ''));
UPDATE `history` SET `payment_at`        = NULL WHERE `payment_at` = '';

UPDATE `history` SET `modified_at`       = TRIM(REPLACE(`modified_at`, CHAR(9), ''));
UPDATE `history` SET `modified_at`       = NULL WHERE `modified_at` = '';

UPDATE `history` SET `source`            = TRIM(REPLACE(`source`, CHAR(9), ''));
UPDATE `history` SET `source`            = NULL WHERE `source` = '';

UPDATE `history` SET `type`              = TRIM(REPLACE(`type`, CHAR(9), ''));
UPDATE `history` SET `type`              = NULL WHERE `type` = '';

UPDATE `history` SET `peer`              = TRIM(REPLACE(`peer`, CHAR(9), ''));
UPDATE `history` SET `peer`              = NULL WHERE `peer` = '';

UPDATE `history` SET `goods_name`        = TRIM(REPLACE(`goods_name`, CHAR(9), ''));
UPDATE `history` SET `goods_name`        = NULL WHERE `goods_name` = '';

UPDATE `history` SET `amount`            = TRIM(REPLACE(`amount`, CHAR(9), ''));
UPDATE `history` SET `amount`            = NULL WHERE `amount` = '';

UPDATE `history` SET `payment_type`      = TRIM(REPLACE(`payment_type`, CHAR(9), ''));
UPDATE `history` SET `payment_type`      = NULL WHERE `payment_type` = '';

UPDATE `history` SET `status`            = TRIM(REPLACE(`status`, CHAR(9), ''));
UPDATE `history` SET `status`            = NULL WHERE `status` = '';

UPDATE `history` SET `fee_amount`        = TRIM(REPLACE(`fee_amount`, CHAR(9), ''));
UPDATE `history` SET `fee_amount`        = NULL WHERE `fee_amount` = '';

UPDATE `history` SET `refund_amount`     = TRIM(REPLACE(`refund_amount`, CHAR(9), ''));
UPDATE `history` SET `refund_amount`     = NULL WHERE `refund_amount` = '';

UPDATE `history` SET `remark`            = TRIM(REPLACE(`remark`, CHAR(9), ''));
UPDATE `history` SET `remark`            = NULL WHERE `remark` = '';

UPDATE `history` SET `fund_status`       = TRIM(REPLACE(`fund_status`, CHAR(9), ''));
UPDATE `history` SET `fund_status`       = NULL WHERE `fund_status` = '';

UPDATE `history` SET `other`             = TRIM(REPLACE(`other`, CHAR(9), ''));
UPDATE `history` SET `other`             = NULL WHERE `other` = '';