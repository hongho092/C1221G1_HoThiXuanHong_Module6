package final_be.service.impl;

import final_be.model.LoaiTour;
import final_be.repository.ILoaiTourRepository;
import final_be.service.ILoaiTourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoaiTourService implements ILoaiTourService {

    @Autowired
    private ILoaiTourRepository loaiTourRepository;

    @Override
    public List<LoaiTour> findAll() {
        return loaiTourRepository.findAll();
    }
}
