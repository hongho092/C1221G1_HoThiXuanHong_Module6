package final_be.dto;

import final_be.model.LoaiTour;
import final_be.model.NhanVien;
import final_be.model.PhamVi;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class TourDto {

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
    private Boolean flag;
    private NhanVien nhanVienTaoTour;
    private PhamVi phamVi;
    private LoaiTour loaiTour;
}
