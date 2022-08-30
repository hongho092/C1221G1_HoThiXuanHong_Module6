package final_be.repository;

import final_be.model.LoaiTour;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ILoaiTourRepository extends JpaRepository<LoaiTour, Integer> {
}
