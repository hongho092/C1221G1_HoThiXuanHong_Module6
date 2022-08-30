package com.hongho.dto.user;


import com.hongho.model.user.Role;
import com.hongho.model.user.User;

public class UserRoleDto {
    private Integer userRoleId;
    private User users;
    private Role roles;

    public UserRoleDto() {
        // nothing
    }

    public Integer getUserRoleId() {
        return userRoleId;
    }

    public void setUserRoleId(Integer userRoleId) {
        this.userRoleId = userRoleId;
    }

    public User getUsers() {
        return users;
    }

    public void setUsers(User users) {
        this.users = users;
    }

    public Role getRoles() {
        return roles;
    }

    public void setRoles(Role roles) {
        this.roles = roles;
    }
}
