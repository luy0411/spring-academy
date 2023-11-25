package com.spring.academy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriBuilder;
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
    public ResponseEntity<Iterable<Toy>> list()  {
        return ResponseEntity.ok(
            this.repository.findAll()
        );
    }

    @PostMapping
    public ResponseEntity<Void> save (@RequestBody Toy toy, UriComponentsBuilder builder) {
        Toy savedToy = this.repository.save(toy);
        URI location = builder.buildAndExpand(savedToy).toUri();
        return ResponseEntity.created(location).build();
    }

}
