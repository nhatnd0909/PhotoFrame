package com.photoframe.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.photoframe.model.DetailOrder;

@Repository
public interface DetailOrderRepository extends JpaRepository<DetailOrder, Long> {

}
