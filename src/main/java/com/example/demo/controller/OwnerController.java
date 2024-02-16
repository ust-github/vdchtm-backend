package com.example.demo.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import com.example.demo.dao.OwnerRepository;
import com.example.demo.domain.Owner;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Api(tags = "Owner controller")
@RestController
@CrossOrigin("*")
@RequiredArgsConstructor
class OwnerController {

    private final OwnerRepository ownerRepository;

    @ApiOperation("Getting list of owners")
    @GetMapping("/owners")
    public List<Owner> getAllOwners() {
        //return Collections.emptyList();
        return ownerRepository.findAll();
    }
}
