package com.nit.vehicle.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nit.vehicle.model.VehicleRegistration;

@Repository
public interface VehicleRegistrationRepository extends JpaRepository<VehicleRegistration, Integer> {

	
}
