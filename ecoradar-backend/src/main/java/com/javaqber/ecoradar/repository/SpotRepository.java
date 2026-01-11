package com.javaqber.ecoradar.repository;

import com.javaqber.ecoradar.model.Spot;

import org.locationtech.jts.geom.Point;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface SpotRepository extends JpaRepository<Spot, Long> {

    @Query(value = "SELECT * FROM spots s WHERE ST_DWithin(s.ubicacion, :point, :distancia, false)", nativeQuery = true)
    List<Spot> findSpotsNear(@Param("point") Point point, @Param("distancia") double distancia);
}