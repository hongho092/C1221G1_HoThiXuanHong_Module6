package com.hongho.service.user;


import com.hongho.model.user.UserRole;

public interface IUserRoleService {
    UserRole findUserRole(String roleName);

    void saveUserRole(UserRole userRole);

}
