package final_be.controller;

import final_be.dto.Count;
import final_be.dto.TourDto;
import final_be.model.LoaiTour;
import final_be.model.NhanVien;
import final_be.model.PhamVi;
import final_be.model.Tour;
import final_be.service.*;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
public class TourController {

    @Autowired
    private ITourService tourService;

    @Autowired
    private IPhamViService phamViService;

    @Autowired
    private ILoaiTourService loaiTourService;

    @Autowired
    private INhanVienService nhanVienService;

    @Autowired
    private IDangKyService dangKyService;

    @GetMapping(value = "/list")
    public ResponseEntity<List<Tour>> getListTour() {
        List<Tour> tours = tourService.findAll();
        if (tours.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(tours, HttpStatus.OK);
    }

    @GetMapping(value = "/listLoaiTour")
    public ResponseEntity<List<LoaiTour>> getListLoaiTour() {
        List<LoaiTour> loaiTours = loaiTourService.findAll();
        if (loaiTours.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(loaiTours, HttpStatus.OK);
    }

    @GetMapping(value = "/listPhamVi")
    public ResponseEntity<List<PhamVi>> getListPhamVi() {
        List<PhamVi> phamVis = phamViService.findAll();
        if (phamVis.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(phamVis, HttpStatus.OK);
    }

    @GetMapping(value = "/listNhanVien")
    public ResponseEntity<List<NhanVien>> getListNhanVien() {
        List<NhanVien> nhanViens = nhanVienService.findAll();
        if (nhanViens.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(nhanViens, HttpStatus.OK);
    }

    @PostMapping(value = "/create")
    public ResponseEntity<List<FieldError>> createPhuongTien(@Validated @RequestBody TourDto tourDto, BindingResult bindingResult) {
        if (bindingResult.hasFieldErrors()) {
            return new ResponseEntity<>(bindingResult.getFieldErrors(), HttpStatus.NO_CONTENT);
        }
        Tour tour = new Tour();
        BeanUtils.copyProperties(tourDto, tour);
        tour.setFlag(true);
        tourService.save(tour);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @DeleteMapping(value = "delete")
    public ResponseEntity<Void> deleteTour(@RequestParam int id) {
        if (id == 0) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        tourService.deleteById(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @GetMapping(value = "/listCount")
    public ResponseEntity<List<Count>> getListCount() {
        List<Count> counts = dangKyService.findListCount();
        if (counts.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(counts, HttpStatus.OK);
    }
}
