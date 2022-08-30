package final_be.repository;

import final_be.model.Tour;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


public interface ITourRepository extends JpaRepository<Tour, Integer> {

    @Query(value = "select * from tour where flag = 1",
           countQuery = "select * from tour where flag = 1",
           nativeQuery = true)
    List<Tour> findAllByFlag ();

    @Transactional
    @Modifying
    @Query(value = "update tour set `flag` = 0 where ma_tour = :id",
            nativeQuery = true)
    void deleteTour(@Param("id") int id);

}
