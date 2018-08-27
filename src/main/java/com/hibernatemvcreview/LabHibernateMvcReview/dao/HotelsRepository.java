package com.hibernatemvcreview.LabHibernateMvcReview.dao;

import java.util.List;
import java.util.TreeSet;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.hibernatemvcreview.LabHibernateMvcReview.entity.Hotel;

public interface HotelsRepository extends JpaRepository <Hotel, Long> {
	
	// Getting all hotels from a reference to the city column
	List<Hotel> findByCityOrderByPricePerNightAsc(String city);
	
	//DISTINCT method for index page drop down menu
	@Query("SELECT DISTINCT city FROM Hotel")
	//@Query(value="SELECT DISTINCT city FROM Hotel_Listings", nativeQuery=true)
	TreeSet<String> findDistinctCity();
}
