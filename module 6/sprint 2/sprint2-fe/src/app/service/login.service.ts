import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {TokenStorageService} from './token-storage.service';
import {Observable} from 'rxjs';
import {SignInRequest} from '../dto/sign-in-request';
import {SignUpRequest} from '../dto/sign-up-request';

const API: string = 'http://localhost:8080/api';

@Injectable({
  providedIn: 'root'
})
export class LoginService {

  constructor(private http: HttpClient,
              private storeService: TokenStorageService) { }

  signIn(obj: SignInRequest): Observable<any> {
    return this.http.post<any>(`${API}/manager-security/users/sign-in`, obj);
  }

  signUp(obj: SignUpRequest): Observable<any> {
    return this.http.post<any>(`${API}/manager-security/users/sign-up`, obj);
  }

}
