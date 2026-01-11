import { HttpClient } from '@angular/common/http';
import { Injectable, inject } from '@angular/core';
import { Observable } from 'rxjs';
import { SpotTs } from '../models/spot';

@Injectable({
  providedIn: 'root' // Esto hace que el servicio esté disponible en toda la app
})
export class SpotService {

  // 1. Inyectamos el cliente HTTP (Nueva forma moderna de Angular 16+)
  private http = inject(HttpClient);

  // 2. La URL de tu Backend (Spring Boot)
  // OJO: Asegúrate de que el puerto coincide con el que usas (8080)
  private apiUrl = 'http://localhost:8080/api/spots';

  constructor() { }

  // 3. El método que llamará el componente
  // Devuelve un Observable que traerá una lista de Spots (Spot[])
  getSpotsNear(lat: number, lon: number, dist: number): Observable<SpotTs[]> {
    
    // Usamos las comillas invertidas (backticks `) para meter variables dentro del texto
    const url = `${this.apiUrl}/near?lat=${lat}&lon=${lon}&dist=${dist}`;
    
    console.log('📡 Llamando al Backend:', url); // Un log para ver si funciona
    
    return this.http.get<SpotTs[]>(url);
  }
}