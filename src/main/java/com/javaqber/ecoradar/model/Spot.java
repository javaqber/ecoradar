package com.javaqber.ecoradar.model;

import jakarta.persistence.*;
import lombok.*;
import org.locationtech.jts.geom.Point;

@Entity
@Table(name = "spots")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Spot {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String nombre;

    @Column(length = 500)
    private String descripcion;

    @Column(nullable = false)
    private String categoria;

    // columnDefinition = "geometry(Point, 4326)" le dice a la DB:
    // "Esto es una GEOMETRÍA de tipo PUNTO, usando el sistema de coordenadas 4326
    // (GPS mundial)"
    @Column(columnDefinition = "geometry(Point, 4326)")
    private Point ubicacion;

}
