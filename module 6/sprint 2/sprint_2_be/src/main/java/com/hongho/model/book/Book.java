package com.hongho.model.book;

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
@Table(name = "book")
//@JsonIgnoreProperties({"tours"})
public class Book {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String bookName;
    private String detail;
    private String size;
    private String totalPage;
    private int quantity;
    private String img;
    private String price;

    @ManyToOne
    @JoinColumn(name = "author", referencedColumnName = "id")
    private Author author;

    @ManyToOne
    @JoinColumn(name = "publisher", referencedColumnName = "id")
    private Publisher publisher;

    @ManyToOne
    @JoinColumn(name = "category", referencedColumnName = "id")
    private Category category;
}
