import { Component, OnInit } from '@angular/core';
import {Book} from '../../../model/book';
import {BookService} from '../../../service/book.service';
import {ActivatedRoute, ParamMap} from '@angular/router';

@Component({
  selector: 'app-detail',
  templateUrl: './detail.component.html',
  styleUrls: ['./detail.component.css']
})
export class DetailComponent implements OnInit {

  detailBook: Book;
  quantity = 1;
  booksByAuthor: Book[] = [];
  name: string;


  constructor(private bookService: BookService,
              private activatedRoute: ActivatedRoute) {
    activatedRoute.paramMap.subscribe((paramMap: ParamMap) => {
      const id = paramMap.get('id');
      const name = paramMap.get('nameAuthor');
      if (id != null) {
        this.bookService.findById(Number(id)).subscribe(book => {
          this.detailBook = book;
        });
      }
      if (name != null) {
        this.bookService.getAllByAuthor(name).subscribe(book => {
          this.booksByAuthor = book;
        });
      }
    });
  }

  ngOnInit(): void {
  }

  reduce() {
    if (this.quantity !== 1) {
      this.quantity = this.quantity - 1;
    }
  }

  increase() {
    this.quantity = this.quantity + 1;
  }

  nameAuthor(authorName: string) {
    this.name = authorName;
  }
}
