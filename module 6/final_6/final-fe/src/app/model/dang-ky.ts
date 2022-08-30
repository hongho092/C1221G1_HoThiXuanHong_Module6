import {Tour} from './tour';
import {TrangThai} from './trang-thai';
import {NhanVien} from './nhan-vien';

export interface DangKy {
  id: number;
  nguoiDangKy: NhanVien;
  tourDangKy: Tour;
  soLuong: string;
  trangThai: TrangThai;
}
