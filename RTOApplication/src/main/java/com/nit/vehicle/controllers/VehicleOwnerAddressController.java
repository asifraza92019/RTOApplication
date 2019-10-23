package com.nit.vehicle.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nit.app.constants.AppConstant;
import com.nit.vehicle.model.VehicleDetails;
import com.nit.vehicle.model.VehicleOwnerAddress;
import com.nit.vehicle.services.VehicleOwnerAddressService;

@Controller
@RequestMapping("/vehicleowneraddress")
public class VehicleOwnerAddressController {

	  @Autowired
	private VehicleOwnerAddressService vehicleOwnerAddressService;
	  
	  
	    @RequestMapping(value="/savevehicleowneraddress",method = RequestMethod.POST)
	  public String saveVehicleOwnerAddress(Model model, @ModelAttribute("vehicleOwnerAddress")VehicleOwnerAddress vehicleOwnerAddress )
	  {
	    	VehicleOwnerAddress vod= vehicleOwnerAddressService.saveVehicleOwnerAddress(vehicleOwnerAddress);
	    	System.out.println(vod);
	    	
	    	
	    	VehicleDetails vehicleDetails =new VehicleDetails();
	    	model.addAttribute("vehicleDetails", vehicleDetails);
	    	
		   return AppConstant.VEHICLE_DETAILS_FORM;
	  }
	  
}
