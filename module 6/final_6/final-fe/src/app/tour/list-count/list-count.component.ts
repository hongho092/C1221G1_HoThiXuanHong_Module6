import { Component, OnInit } from '@angular/core';
import {TourService} from '../../service/tour.service';
import {Count} from '../../model/count';
import {CommonService} from '../../service/common.service';

@Component({
  selector: 'app-list-count',
  templateUrl: './list-count.component.html',
  styleUrls: ['./list-count.component.css']
})
export class ListCountComponent implements OnInit {

  counts: Count[] = [];

  p = 0;

  constructor(private commonService: CommonService) {
  }

  ngOnInit(): void {
    this.commonService.getAllCount().subscribe(counts => {
      this.counts = counts;
    });
  }

}
