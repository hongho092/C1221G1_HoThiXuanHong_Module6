package final_be.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "tour")
@JsonIgnoreProperties({"dangKys"})
public class Tour {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int maTour;
    private String tenTour;
    private String diaDiem;
    private String ngayKhoiHanh;
    private String ngayVe;
    private String ngayKetThucDangKy;
    private String soLuongNguoiToiDa;
    private String lichTrinh;
    private String yeuCauDoiTuong;
    private String chiPhi;

    @Column(columnDefinition = "BIT")
    private Boolean flag;

    @ManyToOne
    @JoinColumn(name = "nhan_vien_tao_tour", referencedColumnName = "id")
    private NhanVien nhanVienTaoTour;

    @ManyToOne
    @JoinColumn(name = "pham_vi", referencedColumnName = "id")
    private PhamVi phamVi;

    @ManyToOne
    @JoinColumn(name = "loai_tour", referencedColumnName = "id")
    private LoaiTour loaiTour;

    @JsonManagedReference
    @JsonBackReference(value = "")
    @OneToMany(mappedBy = "tourDangKy")
    private List<DangKy> dangKys;

//
//    @ManyToOne
//    @JoinColumn(name = "diem_di", referencedColumnName = "id")
//    private DiaDiem diemDi;
//
//    @ManyToOne
//    @JoinColumn(name = "diem_dien", referencedColumnName = "id")
//    private DiaDiem diemDen;
//
//    private String soDienThoai;
//    private String email;
//    private String gioDi;
//    private String gioDen;


}
