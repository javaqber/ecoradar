import { Component, OnInit, inject } from '@angular/core';
import { SpotService } from '../../services/spot.service';
import { SpotTs } from '../../models/spot';
import * as L from 'leaflet';

@Component({
  selector: 'app-map',
  standalone: true,
  imports: [],
  templateUrl: './map.component.html',
  styleUrl: './map.component.css'
})
export class MapComponent implements OnInit {

  private spotService = inject(SpotService);
  private map: L.Map | undefined;

  // Coordenadas por defecto (Madrid) por si el usuario rechaza dar su ubicación
  private lat = 40.4168;
  private lon = -3.7038;

  ngOnInit(): void {
    // AL ARRANCAR: Intentamos localizar al usuario primero
    this.locateUser();
  }

  private locateUser(): void {
    if (!navigator.geolocation) {
      console.error('Navegador no soporta geolocalización');
      this.initMap(); // Cargamos con coordenadas por defecto
      return;
    }

    // Preguntamos al navegador
    navigator.geolocation.getCurrentPosition(
      (position) => {
        // ✅ Éxito: El usuario dio permiso
        this.lat = position.coords.latitude;
        this.lon = position.coords.longitude;
        console.log(`📍 Usuario localizado en: ${this.lat}, ${this.lon}`);
        
        // Iniciamos el mapa en SU ubicación
        this.initMap();
        this.loadSpots();
      },
      (error) => {
        // ❌ Error o Rechazo: Usamos Madrid
        console.warn('No se pudo obtener ubicación, usando defecto', error);
        this.initMap();
        this.loadSpots();
      }
    );
  }

  private initMap(): void {
    // Iniciamos el mapa centrado en las coordenadas (sean las reales o las de defecto)
    this.map = L.map('map').setView([this.lat, this.lon], 14);

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      attribution: '© OpenStreetMap contributors'
    }).addTo(this.map);

    // Opcional: Añadimos un marcador especial para "TU POSICIÓN" (Círculo azul)
    L.circleMarker([this.lat, this.lon], {
      color: 'blue',
      fillColor: '#30f',
      fillOpacity: 0.5,
      radius: 10
    }).addTo(this.map).bindPopup('¡Estás aquí!');
  }

  private loadSpots(): void {
    // Buscamos puntos a 50 Km de la ubicación actual
    this.spotService.getSpotsNear(this.lat, this.lon, 5000)
      .subscribe({
        next: (data: SpotTs[]) => {
          this.addMarkers(data);
        },
        error: (err) => {
          console.error('Error:', err);
        }
      });
  }

  private addMarkers(spots: SpotTs[]): void {
    if (!this.map) return;
    
    const icon = L.icon({
      iconUrl: 'https://unpkg.com/leaflet@1.7.1/dist/images/marker-icon.png',
      iconRetinaUrl: 'https://unpkg.com/leaflet@1.7.1/dist/images/marker-icon-2x.png',
      shadowUrl: 'https://unpkg.com/leaflet@1.7.1/dist/images/marker-shadow.png',
      iconSize: [25, 41],
      iconAnchor: [12, 41],
      popupAnchor: [1, -34],
      shadowSize: [41, 41]
    });

    spots.forEach(spot => {
      L.marker([spot.latitud, spot.longitud], { icon: icon })
        .addTo(this.map!)
        .bindPopup(`<b>${spot.nombre}</b><br>${spot.descripcion}`);
    });
  }
}