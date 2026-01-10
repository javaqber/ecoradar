package com.javaqber.ecoradar.controller;

import com.javaqber.ecoradar.model.Spot;
import com.javaqber.ecoradar.service.SpotService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/spots") // Todas las rutas empezarán por /api/spots
@CrossOrigin("*") // Permite peticiones desde cualquier lugar
@RequiredArgsConstructor // Inyecta el Service automáticamente
public class SpotController {

    private final SpotService spotService;

    // URL final: GET
    // http://localhost:5433/api/spots/near?lat=40.41&lon=-3.70&dist=5000
    @GetMapping("/near")
    public ResponseEntity<List<Spot>> getSpotsNear(
            @RequestParam double lat,
            @RequestParam double lon,
            @RequestParam double dist) {

        List<Spot> spots = spotService.findSpotsNear(lat, lon, dist);
        return ResponseEntity.ok(spots);
    }
}