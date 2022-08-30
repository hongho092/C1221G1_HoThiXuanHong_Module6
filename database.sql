SELECT * FROM phuong_tien_management.phuong_tien;

select * from phuong_tien_management.phuong_tien
where (phuong_tien.gio_den between '06:30' and '06:44') and (phuong_tien.gio_di between '07:00' and '09:30')
order by phuong_tien.ten_nha_xe;

select * from phuong_tien_management.phuong_tien
where (phuong_tien.gio_den between '' and '23:59') and (phuong_tien.gio_di between '' and '23:59')
order by phuong_tien.bien_so_xe;

select * from phuong_tien_management.phuong_tien
where phuong_tien.gio_di between '07:00' and '09:30';

-- giá trị từ 00:00 --> 05:04
select * from phuong_tien_management.phuong_tien
where phuong_tien.gio_di between '' and '05:04';

-- giá trị từ 07:00 --> 23:59
select * from phuong_tien_management.phuong_tien
where phuong_tien.gio_di between '07:00' and '23:59';

-- không được
select * from phuong_tien_management.phuong_tien
where phuong_tien.gio_di between '08:30' and '';

-- không được 
select * from phuong_tien_management.phuong_tien
where phuong_tien.gio_di between '' and '';

-- khi search between thì start có thể trống nhưng end thì không thể trống.

create database met_met;

use met_met;

CREATE TABLE met_met.import_invoice
(
    import_invoice_id         varchar(20) NOT NULL PRIMARY KEY,
    import_system_code        int         NOT NULL, -- số hợp đồng
    import_invoice_date       varchar(100),
    import_invoice_hour       varchar(100),
    flag                      bit         NOT NULL,
    supplier_id               int NOT NULL,
    CONSTRAINT supplier_id FOREIGN KEY (supplier_id) REFERENCES met_met.supplier (supplier_id)
);


CREATE TABLE met_met.supplier
(
    supplier_id      int NOT NULL PRIMARY KEY,
    supplier_name    varchar(100) NOT NULL,
    supplier_address varchar(255) NOT NULL,
    supplier_phone   varchar(20)  NOT NULL,
    supplier_email   varchar(30)  NOT NULL,
    note             text,
    flag             bit
);

select * from met_met.import_invoice
where (import_invoice.import_invoice_date between '2020/01/01' and '2021/06/10') 
and (import_invoice.import_invoice_hour between '04:00' and '21:30')
order by supplier_id;

-- bắt buộc phải có ngày kêt thúc, giờ
select * from met_met.import_invoice
where (import_invoice.import_invoice_date between '' and '2022/06/29') 
and (import_invoice.import_invoice_hour between '' and '23:59')
order by '';