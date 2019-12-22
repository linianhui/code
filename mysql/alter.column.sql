USE `example`;

ALTER TABLE `history` CHANGE `created_at`    `created_at`    DATETIME      NULL DEFAULT NULL; 
ALTER TABLE `history` CHANGE `payment_at`    `payment_at`    DATETIME      NULL DEFAULT NULL; 
ALTER TABLE `history` CHANGE `modified_at`   `modified_at`   DATETIME      NULL DEFAULT NULL;
ALTER TABLE `history` CHANGE `amount`        `amount`        DECIMAL(10,2) NULL DEFAULT NULL; 
ALTER TABLE `history` CHANGE `fee_amount`    `fee_amount`    DECIMAL(10,2) NULL DEFAULT NULL; 
ALTER TABLE `history` CHANGE `refund_amount` `refund_amount` DECIMAL(10,2) NULL DEFAULT NULL; 