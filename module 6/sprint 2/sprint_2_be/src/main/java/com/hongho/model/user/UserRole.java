package com.hongho.model.user;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "user_role")
public class UserRole {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer userRoleId;

    @ManyToOne
    @JoinColumn(name = "username",referencedColumnName = "username")
    @JsonBackReference
    private User users;

    @ManyToOne
    @JoinColumn(name = "role", referencedColumnName = "roleId")
    @JsonBackReference
    private Role roles;


    public UserRole(User users, Role roles) {
        this.users = users;
        this.roles = roles;
    }
}
