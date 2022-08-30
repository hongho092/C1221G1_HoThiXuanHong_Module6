package com.hongho.service.user.impl;


import com.hongho.model.user.Role;
import com.hongho.repository.user.IRoleRepository;
import com.hongho.service.user.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleService implements IRoleService {

    @Autowired
    private IRoleRepository iRoleRepository;

    @Override
    public Role findRoleByName(String roleUser) {
        return this.iRoleRepository.findRolesByRoleName(roleUser);

    }
}
