import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
//import { FirstcomponentComponent } from './firstcomponent/firstcomponent.component';
//import { UpdatecomponentComponent } from './updatecomponent/updatecomponent.component';
//import { DeletecomponentComponent } from './deletecomponent/deletecomponent.component';
//import { StudentcomponentComponent } from './studentcomponent/studentcomponent.component';
import { StudentcomponentComponent } from './studentcomponent/studentcomponent.component';
import { AddcomponentComponent } from './studentcomponent/addcomponent/addcomponent.component';
import { DeletecomponentComponent } from './studentcomponent/deletecomponent/deletecomponent.component';
import { UpdatecomponentComponent } from './studentcomponent/updatecomponent/updatecomponent.component';
import { UserListComponent } from './user-list/user-list.component';
import { HttpClientModule } from '@angular/common/http';


@NgModule({
  declarations: [
    AppComponent,
    UpdatecomponentComponent,
    DeletecomponentComponent,
    StudentcomponentComponent,
    AddcomponentComponent,
    UserListComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
