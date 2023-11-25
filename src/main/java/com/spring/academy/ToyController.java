package com.spring.academy;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;

@RestController
@RequestMapping("/toys")
public class ToyController {

    private ToyRepository repository;

    public ToyController(ToyRepository repository) {
        this.repository = repository;
    }

    @GetMapping
    public ResponseEntity<Iterable<Toy>> list(Pageable pageable)  {
        return ResponseEntity.ok(
            this.repository.findAll(
                    PageRequest.of(
                            pageable.getPageNumber(),
                            pageable.getPageSize(),
                            pageable.getSortOr(
                                    pageable.getSort()
                            )
                    )
            )
        );
    }

    @PostMapping
    public ResponseEntity<Void> save (@RequestBody Toy toy, UriComponentsBuilder builder) {
        Toy savedToy = this.repository.save(toy);
        URI location = builder.buildAndExpand(savedToy).toUri();
        return ResponseEntity.created(location).build();
    }

}
