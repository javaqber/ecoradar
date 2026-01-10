package com.javaqber.ecoradar.service;

import com.javaqber.ecoradar.model.Spot;
import com.javaqber.ecoradar.repository.SpotRepository;
import lombok.RequiredArgsConstructor;
import org.locationtech.jts.geom.Coordinate;
import org.locationtech.jts.geom.GeometryFactory;
import org.locationtech.jts.geom.Point;
import org.locationtech.jts.geom.PrecisionModel;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SpotService {

    private final SpotRepository spotRepository;

    // Esta factoría sirve para crear puntos geográficos.
    // 4326 es el ID del sistema GPS mundial.
    private final GeometryFactory geometryFactory = new GeometryFactory(new PrecisionModel(), 4326);

    public List<Spot> findSpotsNear(double lat, double lon, double meters) {
        // 1. Convertimos los números del frontend en un Punto Geográfico
        // El orden en PostGIS es (Longitud, Latitud) -> (X, Y)
        Point ubicacionUsuario = geometryFactory.createPoint(new Coordinate(lon, lat));

        // 2. Llamamos al repositorio
        return spotRepository.findSpotsNear(ubicacionUsuario, meters);
    }
}