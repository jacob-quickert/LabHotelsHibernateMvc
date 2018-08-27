package com.hibernatemvcreview.LabHibernateMvcReview;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hibernatemvcreview.LabHibernateMvcReview.dao.HotelsRepository;

@Controller
public class HotelsController {
	
	
	@Autowired
	HotelsRepository hotelDao;
	
	
	@RequestMapping("/")
	public ModelAndView home() {
		return new ModelAndView("index", "listCities", hotelDao.findDistinctCity() );
	}
	
	@PostMapping("/hotels")
	public ModelAndView hotels(String city) {
		ModelAndView mv = new ModelAndView("listcityhotels");
		mv.addObject("listHotels", hotelDao.findByCityOrderByPricePerNightAsc(city));
		mv.addObject("city", city);
		return mv;
	}
	
	

}
