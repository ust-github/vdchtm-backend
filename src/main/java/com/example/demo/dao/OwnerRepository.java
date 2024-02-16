package com.example.demo.dao;

import com.example.demo.domain.Owner;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Repository class for <code>Owner</code> domain objects All method names are compliant
 * with Spring Data naming conventions so this interface can easily be extended for Spring
 * Data. See:
 * https://docs.spring.io/spring-data/jpa/docs/current/reference/html/#repositories.query-methods.query-creation
 */
public interface OwnerRepository extends JpaRepository<Owner, Integer> {
}
