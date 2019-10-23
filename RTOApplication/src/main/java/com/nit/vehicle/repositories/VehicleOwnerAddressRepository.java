package com.nit.vehicle.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nit.vehicle.model.VehicleOwnerAddress;

@Repository
public interface VehicleOwnerAddressRepository extends JpaRepository<VehicleOwnerAddress, Integer> {

}
