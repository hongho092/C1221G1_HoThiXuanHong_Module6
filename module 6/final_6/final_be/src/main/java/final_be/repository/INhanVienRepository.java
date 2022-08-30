package final_be.repository;

import final_be.model.NhanVien;
import org.springframework.data.jpa.repository.JpaRepository;

public interface INhanVienRepository extends JpaRepository<NhanVien, Integer> {
}
