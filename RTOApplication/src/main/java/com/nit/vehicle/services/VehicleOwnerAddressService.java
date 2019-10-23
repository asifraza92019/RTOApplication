package com.nit.vehicle.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nit.vehicle.model.Vehicle;
import com.nit.vehicle.model.VehicleOwnerAddress;
import com.nit.vehicle.repositories.VehicleOwnerAddressRepository;


@Service
public class VehicleOwnerAddressService {

	
	 @Autowired
	 private VehicleOwnerAddressRepository vehicleOwnerAddressRepository;
	 
	 
	 public VehicleOwnerAddress saveVehicleOwnerAddress(VehicleOwnerAddress vehicleOwnerAddress)
	 {
		return vehicleOwnerAddressRepository.save(vehicleOwnerAddress);
	 }
	 
	 
	 public VehicleOwnerAddress getVehicleOwnderAddressById(Integer id)
	 {
	    Optional<VehicleOwnerAddress> optional= vehicleOwnerAddressRepository.findById(id);
		 
	    if(optional.isPresent())
	    {
	    	 return optional.get();
	    }
	    	//do some exceptional handling here
	    
	    return new VehicleOwnerAddress();
	    
	 }
	 
	 
	 
}
