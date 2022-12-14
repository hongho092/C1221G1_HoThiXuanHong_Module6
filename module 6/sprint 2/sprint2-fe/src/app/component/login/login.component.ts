import {Component, OnInit} from '@angular/core';
import {Router} from '@angular/router';
import {LoginService} from '../../service/login.service';
import {TokenStorageService} from '../../service/token-storage.service';
import {FormControl, FormGroup, Validators} from '@angular/forms';
import {SignInRequest} from '../../dto/sign-in-request';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  signInForm!: FormGroup;
  token: string;
  userName: string;
  roles: [];
  types: string;
  isSignIn: boolean = false;
  errorMap: any;

  constructor(private securityService: LoginService,
              private route: Router,
              private tokenStorageService: TokenStorageService) {
  }

  ngOnInit(): void {
    this.signInForm = new FormGroup({
      username: new FormControl('', [Validators.required, Validators.email]),
      password: new FormControl('', [Validators.required, Validators.maxLength(50), Validators.minLength(6)]),
      remember: new FormControl(),
    });
    if (this.tokenStorageService.getToken()) {
      this.isSignIn = true;
      const user = this.tokenStorageService.getUser();
      this.roles = user.roles;
      this.userName = user.username;
    }
  }

  submitSignIn() {
    console.log('dfgsdfg');
    // if (this.signInForm.valid) {
      const username = this.signInForm.value.username;
      const password = this.signInForm.value.password;
      const signInSubmitForm: SignInRequest = {username, password};
      this.securityService.signIn(signInSubmitForm).subscribe(
        next => {
          if (this.signInForm.value.remember) {
            this.tokenStorageService.saveTokenLocal(next.token);
            this.tokenStorageService.saveUserLocal(next);
          } else {
            this.tokenStorageService.saveTokenSession(next.token);
            this.tokenStorageService.saveUserSession(next);
          }
          this.userName = this.tokenStorageService.getUser().username;
          this.roles = this.tokenStorageService.getUser().roles;
          console.log('????y l?? th??ng tin s??? c??');
          console.log(this.userName);
          console.log(this.roles);
          console.log('k???t th??c');
          this.isSignIn = true;
          // this.toast.success("????ng nh???p th??nh c??ng", "Ch??c m???ng")
          this.signInForm.reset();

          this.roles.forEach(role => {
            if (role === 'ROLE_USER') {
              this.route.navigateByUrl('/').then(() => {
                window.location.reload();
              });
            } else {
              this.route.navigateByUrl('/').then();
              this.ngOnInit();
            }
          });
        },
        error => {
          console.log(error);
          if (error.error?.errorMap) {
            if (error.error?.errorMap?.notExists) {
              // this.toast.warning(error.error.errorMap['notExists'], 'L???i ????ng Nh???p');
            } else if (error.error?.errorMap?.isVerification) {
              // this.toast.warning(error.error.errorMap['isVerification'], 'L???i ????ng nh???p');
            } else {
              this.errorMap = error.error.errorMap;
            }
          } else {
            // this.toast.warning('Sai m???t kh???u, vui l??ng th??? l???i!', 'L???i ????ng Nh???p');
          }
        }
      );

    // }
  }

}
