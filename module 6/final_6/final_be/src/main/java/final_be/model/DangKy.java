package final_be.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "dang_ky")
public class DangKy {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "nhan_vien_dang_ky", referencedColumnName = "id")
    private NhanVien nguoiDangKy;

    @ManyToOne
    @JoinColumn(name = "tour", referencedColumnName = "maTour")
    private Tour tourDangKy;

    private String soLuong;

    @ManyToOne
    @JoinColumn(name = "trang_thai", referencedColumnName = "id")
    private TrangThai trangThai;
}
