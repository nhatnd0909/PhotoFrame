package com.photoframe.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.photoframe.model.Discount;

@Repository
public interface DiscountRepository extends JpaRepository<Discount, Long> {

}
