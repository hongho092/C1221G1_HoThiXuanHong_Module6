import {Component, OnInit} from '@angular/core';
import {TokenStorageService} from '../../service/token-storage.service';
import {ActivatedRoute, Router} from '@angular/router';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  isLogIn = false;
  username: string;
  roles: string[];

  constructor(private router: Router,
              private activatedRoute: ActivatedRoute,
              private tokenStorageService: TokenStorageService) {
  }

  ngOnInit(): void {
    if (this.tokenStorageService.getToken()) {
      this.isLogIn = true;
      this.username = this.tokenStorageService.getUser().username;
      this.roles = this.tokenStorageService.getUser().roles;
    }
  }

  logout(e) {
    this.tokenStorageService.signOut();
    this.router.navigateByUrl('/').then();
    this.ngOnInit();
  }

}
