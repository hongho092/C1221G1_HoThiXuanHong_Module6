package final_be.service.impl;

import final_be.model.PhamVi;
import final_be.repository.IPhamViRepository;
import final_be.service.IPhamViService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PhamViService implements IPhamViService {

    @Autowired
    private IPhamViRepository phamViRepository;

    @Override
    public List<PhamVi> findAll() {
        return phamViRepository.findAll();
    }
}
