package com.hongho.service;

import com.hongho.model.book.Book;

import java.util.List;

public interface IBookService {
    List<Book> findAll();

    Book findById(int id);

    List<Book> findAllByAuthor(String authorName);
}
