import { Component, OnInit } from '@angular/core';
import {AbstractControl, FormControl, FormGroup, Validators} from '@angular/forms';
import {NhanVien} from '../../model/nhan-vien';
import {PhamVi} from '../../model/pham-vi';
import {LoaiTour} from '../../model/loai-tour';
import {TourService} from '../../service/tour.service';
import {Router} from '@angular/router';
import {CommonService} from '../../service/common.service';

@Component({
  selector: 'app-create',
  templateUrl: './create.component.html',
  styleUrls: ['./create.component.css']
})
export class CreateComponent implements OnInit {

  createForm: FormGroup;

  nhanViens: NhanVien[];

  phamVis: PhamVi[];

  loaiTours: LoaiTour[];

  constructor(private tourService: TourService,
              private commonService: CommonService,
              private router: Router) {
    this.createForm = new FormGroup({
      tenTour: new FormControl(),
      diaDiem: new FormControl(),
      ngayKhoiHanh: new FormControl('', [this.validateCustomDate]),
      ngayVe: new FormControl(),
      ngayKetThucDangKy: new FormControl(),
      soLuongNguoiToiDa: new FormControl('', [Validators.pattern('^[1-9][0-9]*$')]),
      lichTrinh: new FormControl(),
      yeuCauDoiTuong: new FormControl(),
      chiPhi: new FormControl(),
      nhanVienTaoTour: new FormControl(),
      phamVi: new FormControl(),
      loaiTour: new FormControl(),
    }, Validators.required);
  }

  validateCustomDate(ngayKhoiHanh: AbstractControl) {
    const value1 = String(ngayKhoiHanh.value);
    const now = new Date().toLocaleString('en-ZA', {hour12: false});
    const string1 = now.substr(0, 4);
    const string2 = now.substr(5, 2);
    const string3 = now.substr(8, 2);
    const nowVal = string1 + '-' + string2 + '-' + string3;
    if (value1 > nowVal) {
      return {invalid: true};
    } else {
      return null;
    }
  }

  // startDateErrorValidator: ValidatorFn = (control: FormGroup): ValidationErrors | null => {
  //   const start = control.get('startDate');
  //   if (start.value !== null) {
  //     this.startDate = start.value.slice(0, 10) + start.value.slice(11);
  //   }
  //   const now = new Date().toLocaleString('en-ZA', {hour12: false});
  //   const string1 = now.substr(0, 4);
  //   const string2 = now.substr(5, 2);
  //   const string3 = now.substr(8, 2);
  //   const string4 = now.substr(12, 5);
  //   const nowVal = string1 + '-' + string2 + '-' + string3 + string4;
  //   console.log('nowVal: ' + nowVal);
  //   if (this.startDate > nowVal) {
  //     return {startDateError: true};
  //   } else {
  //     return null;
  //   }
  // }

  ngOnInit(): void {
    this.commonService.getAllLoaiTour().subscribe(loaiTours => {
      this.loaiTours = loaiTours;
    });
    this.commonService.getAllPhamVi().subscribe(phamVis => {
      this.phamVis = phamVis;
    });
    this.commonService.getAllNhanVien().subscribe(nhanViens => {
      this.nhanViens = nhanViens;
    });
  }

  create() {
    if (this.createForm.valid) {
      const tour = this.createForm.value;
      console.log('tour: ' + tour);
      console.log('tour1: ' + this.createForm.value.tenTour);
      console.log('tour2: ' + this.createForm.value.nhanVienTaoTour);
      console.log('tour3: ' + this.createForm.value.ngayKetThucDangKy);
      this.tourService.saveTour(tour).subscribe(() => {
        alert('Tạo thành công');
        this.createForm.reset();
        this.router.navigateByUrl('');
      }, e => console.log(e));
    }
  }
}
