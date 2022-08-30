package com.hongho.model.customer;

import com.hongho.model.user.User;
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
@Table(name = "customer")
public class Customer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String customerName;
    private String phone;
    private String address;

    @OneToOne
    @JoinColumn(name = "customer_username", referencedColumnName = "username")
    private User customerUsername ;

    @ManyToOne
    @JoinColumn(name = "customer_type_id", referencedColumnName = "customerTypeId")
    private CustomerType customerType;
}
