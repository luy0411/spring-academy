package com.spring.academy;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface ToyRepository extends CrudRepository<Toy, Long>, PagingAndSortingRepository<Toy, Long> {
}
