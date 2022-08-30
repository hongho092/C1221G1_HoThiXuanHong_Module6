package final_be.service.impl;

import final_be.model.NhanVien;
import final_be.repository.INhanVienRepository;
import final_be.service.INhanVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NhanVienService implements INhanVienService {

    @Autowired
    private INhanVienRepository nhanVienRepository;

    @Override
    public List<NhanVien> findAll() {
        return nhanVienRepository.findAll();
    }
}
