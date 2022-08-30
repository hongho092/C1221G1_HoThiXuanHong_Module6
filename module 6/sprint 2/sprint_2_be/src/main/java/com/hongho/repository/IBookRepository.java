package com.hongho.repository;

import com.hongho.model.book.Book;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface IBookRepository extends JpaRepository<Book, Integer> {

    List<Book> findAllByAuthor_AuthorName(String authorName);
}
