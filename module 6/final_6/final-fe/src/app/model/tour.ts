import {NhanVien} from './nhan-vien';
import {PhamVi} from './pham-vi';
import {LoaiTour} from './loai-tour';
import {DangKy} from './dang-ky';

export interface Tour {
  maTour: number;
  tenTour: string;
  diaDiem: string;
  ngayKhoiHanh: string;
  ngayVe: string;
  ngayKetThucDangKy: string;
  soLuongNguoiToiDa: string;
  lichTrinh: string;
  yeuCauDoiTuong: string;
  chiPhi: string;
  nhanVienTaoTour: NhanVien;
  phamVi: PhamVi;
  loaiTour: LoaiTour;
}
