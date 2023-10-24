import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
@Injectable({
  providedIn: 'root'
})
export class UsersService { // for post
  private readonly BASE_URL: string = 'https://jsonplaceholder.typicode.com';

  constructor(private http:HttpClient) { 
  }
  getPost(): Observable<any> {
    return this.http.get<any>('https://jsonplaceholder.typicode.com/posts')
  }

}
