# Fix the recurring invoices frequency
ALTER TABLE `ip_invoices_recurring`
  CHANGE `recur_frequency` `recur_frequency` VARCHAR(255)
CHARACTER SET utf8
COLLATE utf8_general_ci NOT NULL;

ALTER TABLE `ip_invoice_items`
  ADD `item_is_recurring` TINYINT(1)
  AFTER `item_order`;

# Add invoice_currency to ip_invoices
ALTER TABLE `ip_invoices`
  ADD COLUMN `invoice_currency` INT(11) DEFAULT 1
  AFTER `invoice_status_id`;