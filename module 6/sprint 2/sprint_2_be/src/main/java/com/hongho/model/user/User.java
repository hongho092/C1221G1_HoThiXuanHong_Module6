package com.hongho.model.user;

import com.hongho.model.customer.Customer;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;

import javax.persistence.*;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "users")
public class User {

    @Id
    @Column(columnDefinition = "VARCHAR(30)")
    private String username;
    private String password;
    @Column(columnDefinition = "BIT")
    private boolean flag;
    @OneToMany(mappedBy = "users")
    private List<UserRole> userRoleList;

    @OneToOne(mappedBy = "customerUsername")
    private Customer customer;
    
    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

}
