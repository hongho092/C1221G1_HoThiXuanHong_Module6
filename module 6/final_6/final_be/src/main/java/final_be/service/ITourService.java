package final_be.service;

import final_be.model.Tour;

import java.util.List;

public interface ITourService {
    List<Tour> findAll();

    void save(Tour tour);

    void deleteById(int id);
}
