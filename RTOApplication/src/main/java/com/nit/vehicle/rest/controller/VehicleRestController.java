package com.nit.vehicle.rest.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.nit.vehicle.model.Vehicle;

@RestController
@RequestMapping("/restvehicle")
public class VehicleRestController {

	      @RequestMapping("/regno")
	public  Vehicle  getAllDetailOfVehicle(@RequestParam("id") String regNo)
	{
	    	  
	    	  Vehicle vehicle = new Vehicle();
	    	  return vehicle;
	    	  
		
	}
	
	
}
