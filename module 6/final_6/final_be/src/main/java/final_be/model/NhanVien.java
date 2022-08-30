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
@Table(name = "nhan_vien")
@JsonIgnoreProperties({"tours", "dangKys"})
public class NhanVien {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String ten;
    private String ngaySinh;
    private String diaChi;
    private String email;
    private String soDienThoai;
    private String gioiTinh;

    @JsonManagedReference
    @JsonBackReference(value = "")
    @OneToMany(mappedBy = "nhanVienTaoTour")
    private List<Tour> tours;

    @JsonManagedReference
    @JsonBackReference(value = "")
    @OneToMany(mappedBy = "nguoiDangKy")
    private List<DangKy> dangKys;
}
