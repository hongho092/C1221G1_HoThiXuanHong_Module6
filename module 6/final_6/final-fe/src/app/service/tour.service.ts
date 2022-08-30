import { Injectable } from '@angular/core';
import {environment} from '../../environments/environment';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {Tour} from '../model/tour';

const API_URL = `${environment.apiUrl}`;

@Injectable({
  providedIn: 'root'
})
export class TourService {

  constructor(private http: HttpClient) { }

  getAll(): Observable<Tour[]> {
    return this.http.get<Tour[]>(API_URL + '/list');
  }

  saveTour(tour): Observable<Tour> {
    return this.http.post<Tour>(API_URL + '/create', tour);
  }

  deleteTour(id: number): Observable<Tour> {
    return this.http.delete<Tour>(`${API_URL}/delete?id=${id}`);
  }

  getAllCount() {

  }
}
