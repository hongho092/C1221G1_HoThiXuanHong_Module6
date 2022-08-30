package com.hongho.model.cart;

import com.hongho.model.book.Book;
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
@Table(name = "cart_detail")
public class CartDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private Integer cartDetailQuantity;
    @ManyToOne
    @JoinColumn(name = "book_id",referencedColumnName = "id")
    private Book book;
    @ManyToOne
    @JoinColumn(name = "cart_id",referencedColumnName = "id")
    private Cart cart;
}
