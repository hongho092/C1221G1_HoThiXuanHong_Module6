import { Injectable } from '@angular/core';
import {environment} from '../../environments/environment';
import {HttpClient} from '@angular/common/http';
import {Book} from '../model/book';
import {Observable} from 'rxjs';

const API_URL = `${environment.apiUrl}`;

@Injectable({
  providedIn: 'root'
})
export class BookService {

  constructor(private http: HttpClient) { }

  getAll(): Observable<Book[]> {
    return this.http.get<Book[]>(API_URL + '/list');
  }

  findById(id: number): Observable<Book> {
    return this.http.get<Book>(`${API_URL}/detail/${id}`);
  }

  getAllByAuthor(authorName: string): Observable<Book[]> {
    return this.http.get<Book[]>(`${API_URL}/listByAuthor/${authorName}`);
  }
}
