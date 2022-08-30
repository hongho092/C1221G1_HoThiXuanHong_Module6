import { Component, OnInit } from '@angular/core';
import {Tour} from '../../model/tour';
import {TourService} from '../../service/tour.service';

@Component({
  selector: 'app-list',
  templateUrl: './list.component.html',
  styleUrls: ['./list.component.css']
})
export class ListComponent implements OnInit {

  tours: Tour[] = [];

  idDelete: number;

  nameDelete: string;

  p = 1;

  constructor(private tourService: TourService) {
  }

  ngOnInit(): void {
    this.tourService.getAll().subscribe(tours => {
      this.tours = tours;
      console.log(this.tours);
    });
  }

  info(maTour: number, tenTour: string) {
    this.idDelete = maTour;
    this.nameDelete = tenTour;
  }

  delete(idDelete: number) {
    this.tourService.deleteTour(idDelete).subscribe(() => {
      this.ngOnInit();
    }, e => console.log(e));
  }
}
