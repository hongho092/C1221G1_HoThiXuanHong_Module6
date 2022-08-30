package com.hongho.service;

import com.hongho.model.book.Book;
import com.hongho.repository.IBookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookService implements IBookService{

    @Autowired
    private IBookRepository bookRepository;

    @Override
    public List<Book> findAll() {
        return bookRepository.findAll();
    }

    @Override
    public Book findById(int id) {
        return bookRepository.findById(id).orElse(null);
    }

    @Override
    public List<Book> findAllByAuthor(String authorName) {
        return bookRepository.findAllByAuthor_AuthorName(authorName);
    }
}
