import { Injectable } from '@angular/core';
import {environment} from '../../environments/environment';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {Tour} from '../model/tour';
import {LoaiTour} from '../model/loai-tour';
import {PhamVi} from '../model/pham-vi';
import {NhanVien} from '../model/nhan-vien';
import {Count} from '../model/count';

const API_URL = `${environment.apiUrl}`;

@Injectable({
  providedIn: 'root'
})
export class CommonService {

  constructor(private http: HttpClient) { }

  getAllLoaiTour(): Observable<LoaiTour[]> {
    return this.http.get<LoaiTour[]>(API_URL + '/listLoaiTour');
  }

  getAllPhamVi(): Observable<PhamVi[]> {
    return this.http.get<PhamVi[]>(API_URL + '/listPhamVi');
  }

  getAllNhanVien(): Observable<NhanVien[]> {
    return this.http.get<NhanVien[]>(API_URL + '/listNhanVien');
  }

  getAllCount(): Observable<Count[]> {
    return this.http.get<Count[]>(API_URL + '/listCount');
  }
}
