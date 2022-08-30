package com.hongho.controller;

import com.hongho.model.book.Book;
import com.hongho.service.IBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
public class BookController {

    @Autowired
    private IBookService bookService;

    @GetMapping(value = "/list")
    public ResponseEntity<List<Book>> getListBook() {
        List<Book> books = bookService.findAll();
        if (books.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(books, HttpStatus.OK);
    }

    @GetMapping(value = "/listByAuthor/{authorName}")
    public ResponseEntity<List<Book>> getListBookByAuthor(@PathVariable String authorName) {
        List<Book> books = bookService.findAllByAuthor(authorName);
        if (books.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(books, HttpStatus.OK);
    }

    @GetMapping(value = "/detail/{id}")
    public ResponseEntity<Book> findById(@PathVariable int id) {
        if ("null".equals(id) || "".equals(id)) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        } else {
            Book book = bookService.findById(id);
            System.out.println(book);
            return new ResponseEntity<>(book, HttpStatus.OK);
        }
    }
}
