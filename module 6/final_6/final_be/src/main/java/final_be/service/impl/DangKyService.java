package final_be.service.impl;

import final_be.dto.Count;
import final_be.repository.IDangKyRepository;
import final_be.service.IDangKyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DangKyService implements IDangKyService {

    @Autowired
    private IDangKyRepository dangKyRepository;

    @Override
    public List<Count> findListCount() {
        return dangKyRepository.getListCount();
    }
}
