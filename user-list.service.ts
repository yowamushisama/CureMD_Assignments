import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class UserListService {
    //private readonly BASE_URL: string = 'https://jsonplaceholder.typicode.com';
    private readonly BASE_URL: string = 'http://localhost:65155/student';

    constructor(private http: HttpClient) {}
  
    getUsers(): Observable<any> {
     // return this.http.get<any>(`${this.BASE_URL}/users`);
      return this.http.get<any>(`${this.BASE_URL}/GetAllStudents`);
    }
  
    getParticularUser(id: any): Observable<any> {
      return this.http.get<any>(`${this.BASE_URL}/users/` + id);
    }
  
    postUser(user: any) {
      this.http.post(this.BASE_URL, user);
    }
  }
  