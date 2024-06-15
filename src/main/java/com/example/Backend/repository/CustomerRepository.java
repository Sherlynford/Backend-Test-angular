package com.example.Backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.Backend.entity.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer,Long>{
    
}
