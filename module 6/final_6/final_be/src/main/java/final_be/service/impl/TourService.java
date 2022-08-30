package final_be.service.impl;

import final_be.model.Tour;
import final_be.repository.ITourRepository;
import final_be.service.ITourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TourService implements ITourService {

    @Autowired
    private ITourRepository tourRepository;

    @Override
    public List<Tour> findAll() {
        return tourRepository.findAllByFlag();
    }

    @Override
    public void save(Tour tour) {
        tourRepository.save(tour);
    }

    @Override
    public void deleteById(int id) {
        tourRepository.deleteTour(id);
    }
}
