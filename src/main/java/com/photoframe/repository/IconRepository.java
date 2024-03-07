package com.photoframe.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.photoframe.model.Icon;

@Repository
public interface IconRepository extends JpaRepository<Icon, Long> {

}
