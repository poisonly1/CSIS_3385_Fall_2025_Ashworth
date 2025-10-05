package org.example.monsterbountyserver.repository;

import org.example.monsterbountyserver.entity.Monster;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
// This interface allows CRUD and custom queries for the Monster entity
public interface MonsterRepository extends JpaRepository<Monster, Long> {

    // Custom query method:
    @Query("SELECT m FROM Monster m ORDER BY m.bountyDrakes")
    List<Monster> findAllOrderedByBountyDrakesFirst();
}

