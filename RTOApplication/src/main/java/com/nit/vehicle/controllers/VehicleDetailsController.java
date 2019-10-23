package com.nit.vehicle.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nit.app.constants.AppConstant;
import com.nit.generator.RegistrationNumber;
import com.nit.vehicle.model.VehicleDetails;
import com.nit.vehicle.model.VehicleRegistration;
import com.nit.vehicle.services.VehicleDetailsService;
import com.nit.vehicle.services.VehicleRegistrationService;

@Controller
@RequestMapping("/vehicledetail")
public class VehicleDetailsController {

	
	 @Autowired
	private VehicleDetailsService vehicleDetailsService;
	 
	 @Autowired
	 private VehicleRegistrationService vehicleRegistrationService;
	 
	 @RequestMapping(value ="/savevehicledetails", method= RequestMethod.POST)
	public String saveVehicleDetailsService(Model model, @ModelAttribute("vehicleDetails") VehicleDetails vehicleDetails)
	{
		
		 VehicleDetails vehicleDetails1= vehicleDetailsService.saveVehicleDetails(vehicleDetails);
		 
		 System.out.println(vehicleDetails1);
		 
		 RegistrationNumber registrationNumber= new RegistrationNumber();
		 String rno= registrationNumber.generateRegistrationNumber();
		 System.out.println(rno);  
		 
		 VehicleRegistration vehicleRegistration = new VehicleRegistration();
		 vehicleRegistration.setVehicleRegistrationNumber(rno);
		 
		 
		 
		 VehicleRegistration  vr = vehicleRegistrationService.saveRegistrationNumber(vehicleRegistration);
		 
		 System.out.println(vr);

	     	
		 
		    model.addAttribute("vehicleRegistration", vehicleRegistration);;
		    return AppConstant.REGISTRATION_SUCCESS;
	}
	 
	 
	
}
