SELECT * FROM c1221g1_pharmacy.import_invoice;

INSERT INTO `c1221g1_pharmacy`.`position` (`position_id`, `position_name`) VALUES ('1', 'Nhân viên');
INSERT INTO `c1221g1_pharmacy`.`position` (`position_id`, `position_name`) VALUES ('2', 'Quản lí');

INSERT INTO `c1221g1_pharmacy`.`employee` (`employee_id`, `employee_address`, `employee_date_start`, `employee_image`, `employee_name`, `employee_note`, `employee_phone`, `flag`, `username`, `position_id`) VALUES ('NV-00001', '1', '2020-10-10', '1', '1', '1', '1', b'1', 'abc', '1');
INSERT INTO `c1221g1_pharmacy`.`employee` (`employee_id`, `employee_address`, `employee_date_start`, `employee_image`, `employee_name`, `employee_note`, `employee_phone`, `flag`, `username`, `position_id`) VALUES ('NV-00002', '1', '2020-10-10', '1', '1', '1', '1', b'1', 'abc', '1');
INSERT INTO `c1221g1_pharmacy`.`employee` (`employee_id`, `employee_address`, `employee_date_start`, `employee_image`, `employee_name`, `employee_note`, `employee_phone`, `flag`, `username`, `position_id`) VALUES ('NV-00003', '1', '2020-10-10', '1', '1', '1', '1', b'1', 'abc', '2');
INSERT INTO `c1221g1_pharmacy`.`employee` (`employee_id`, `employee_address`, `employee_date_start`, `employee_image`, `employee_name`, `employee_note`, `employee_phone`, `flag`, `username`, `position_id`) VALUES ('NV-00004', '1', '2020-10-10', '1', '1', '1', '1', b'1', 'abc', '1');

INSERT INTO `c1221g1_pharmacy`.`import_invoice` (`import_invoice_id`, `flag`, `import_invoice_date`, `import_invoice_hour`, `import_system_code`, `payment_prepayment`, `total`, `employee_id`, `supplier_id`) VALUES ('HDN-00001', b'1', '2022-12-02', '15:22', '453', '7000000', '12500000', 'NV-00001', 'NCC-00015');
INSERT INTO `c1221g1_pharmacy`.`import_invoice` (`import_invoice_id`, `flag`, `import_invoice_date`, `import_invoice_hour`, `import_system_code`, `payment_prepayment`, `total`, `employee_id`, `supplier_id`) VALUES ('HDN-00002', b'1', '2021-11-12', '10:00', '453', '980000', '980000', 'NV-00002', 'NCC-00016');
INSERT INTO `c1221g1_pharmacy`.`import_invoice` (`import_invoice_id`, `flag`, `import_invoice_date`, `import_invoice_hour`, `import_system_code`, `payment_prepayment`, `total`, `employee_id`, `supplier_id`) VALUES ('HDN-00003', b'1', '2022-12-04', '09:30', '453', '1500000', '2089800', 'NV-00002', 'NCC-00017');
INSERT INTO `c1221g1_pharmacy`.`import_invoice` (`import_invoice_id`, `flag`, `import_invoice_date`, `import_invoice_hour`, `import_system_code`, `payment_prepayment`, `total`, `employee_id`, `supplier_id`) VALUES ('HDN-00004', b'1', '2019-09-14', '17:34', '453', '4090800', '4090800', 'NV-00003', 'NCC-00015');
INSERT INTO `c1221g1_pharmacy`.`import_invoice` (`import_invoice_id`, `flag`, `import_invoice_date`, `import_invoice_hour`, `import_system_code`, `payment_prepayment`, `total`, `employee_id`, `supplier_id`) VALUES ('HDN-00005', b'1', '2022-08-21', '07:00', '453', '800000', '888000', 'NV-00004', 'NCC-00016');
INSERT INTO `c1221g1_pharmacy`.`import_invoice` (`import_invoice_id`, `flag`, `import_invoice_date`, `import_invoice_hour`, `import_system_code`, `payment_prepayment`, `total`, `employee_id`, `supplier_id`) VALUES ('HDN-00006', b'1', '2018-07-12', '08:45', '453', '6578800', '6578800', 'NV-00001', 'NCC-00017');
INSERT INTO `c1221g1_pharmacy`.`import_invoice` (`import_invoice_id`, `flag`, `import_invoice_date`, `import_invoice_hour`, `import_system_code`, `payment_prepayment`, `total`, `employee_id`, `supplier_id`) VALUES ('HDN-00007', b'1', '2021-02-15', '14:37', '453', '450000', '980000', 'NV-00002', 'NCC-00016');
INSERT INTO `c1221g1_pharmacy`.`import_invoice` (`import_invoice_id`, `flag`, `import_invoice_date`, `import_invoice_hour`, `import_system_code`, `payment_prepayment`, `total`, `employee_id`, `supplier_id`) VALUES ('HDN-00008', b'1', '2022-07-06', '12:40', '453', '600000', '600000', 'NV-00003', 'NCC-00017');
INSERT INTO `c1221g1_pharmacy`.`import_invoice` (`import_invoice_id`, `flag`, `import_invoice_date`, `import_invoice_hour`, `import_system_code`, `payment_prepayment`, `total`, `employee_id`, `supplier_id`) VALUES ('HDN-00009', b'1', '2018-03-17', '08:40', '453', '500000', '550000', 'NV-00004', 'NCC-00016');
INSERT INTO `c1221g1_pharmacy`.`import_invoice` (`import_invoice_id`, `flag`, `import_invoice_date`, `import_invoice_hour`, `import_system_code`, `payment_prepayment`, `total`, `employee_id`, `supplier_id`) VALUES ('HDN-00010', b'1', '2022-04-10', '15:40', '453', '1500000', '1578000', 'NV-00001', 'NCC-00015');
INSERT INTO `c1221g1_pharmacy`.`import_invoice` (`import_invoice_id`, `flag`, `import_invoice_date`, `import_invoice_hour`, `import_system_code`, `payment_prepayment`, `total`, `employee_id`, `supplier_id`) VALUES ('HDN-00011', b'1', '2019-05-06', '13:40', '453', '578000', '578000', 'NV-00003', 'NCC-00015');
