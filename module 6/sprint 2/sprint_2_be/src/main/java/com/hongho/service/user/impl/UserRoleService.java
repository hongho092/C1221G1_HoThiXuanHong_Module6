package com.hongho.service.user.impl;

import com.hongho.model.user.UserRole;
import com.hongho.repository.user.IUserRoleRepository;
import com.hongho.service.user.IUserRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserRoleService implements IUserRoleService {
    @Autowired
    private IUserRoleRepository iUserRoleRepository;

    @Override
    public UserRole findUserRole(String roleName) {
        return this.iUserRoleRepository.findUserRoleByUsername(roleName);
    }

    @Override
    public void saveUserRole(UserRole userRole) {
        this.iUserRoleRepository.save(userRole);
    }

}
