package com.silviu.landon.data.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.silviu.landon.data.entity.Guest;

@Repository
public interface GuestRepository extends PagingAndSortingRepository<Guest, Long> {

}