USE `example`;

CREATE TABLE IF NOT EXISTS `history` (
  `id`                varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_order_id` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at`        varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_at`        varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_at`       varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source`            varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type`              varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `peer`              varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `goods_name`        varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount`            varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type`      varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status`            varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee_amount`        varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_amount`     varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark`            varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fund_status`       varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other`             varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;