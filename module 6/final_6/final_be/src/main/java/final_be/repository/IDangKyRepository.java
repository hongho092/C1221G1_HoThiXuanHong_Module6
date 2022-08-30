package final_be.repository;

import final_be.dto.Count;
import final_be.model.DangKy;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface IDangKyRepository extends JpaRepository<DangKy, Integer> {

    @Query(value = "select nhan_vien.ten as ten, count(nhan_vien_dang_ky) as soLan " +
                   "from final_be_management.dang_ky " +
                   "join nhan_vien " +
                   "on nhan_vien.id = dang_ky.nhan_vien_dang_ky " +
                   "where trang_thai = 2 " +
                   "group by nhan_vien_dang_ky ",
            countQuery = "select nhan_vien.ten as ten, count(nhan_vien_dang_ky) as soLan " +
                         "from final_be_management.dang_ky " +
                         "join nhan_vien " +
                         "on nhan_vien.id = dang_ky.nhan_vien_dang_ky " +
                         "where trang_thai = 2 " +
                         "group by nhan_vien_dang_ky ",
            nativeQuery = true)
    List<Count> getListCount();
}
