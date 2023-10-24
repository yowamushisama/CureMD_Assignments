import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { FirstcomponentComponent } from './firstcomponent/firstcomponent.component';
//import { UpdatecomponentComponent } from './updatecomponent/updatecomponent.component';
import { StudentcomponentComponent } from './studentcomponent/studentcomponent.component';
import { AddcomponentComponent } from './studentcomponent/addcomponent/addcomponent.component';
import { DeletecomponentComponent } from './studentcomponent/deletecomponent/deletecomponent.component';
import { UpdatecomponentComponent } from './studentcomponent/updatecomponent/updatecomponent.component';

const routes: Routes = [
  //{path: 'students',component:FirstcomponentComponent},
  //{path: 'updatestudents',component:UpdatecomponentComponent}
  {path:'',component:StudentcomponentComponent},
  {path:'',component:AddcomponentComponent},
  {path:'',component:DeletecomponentComponent},
  {path:'',component:UpdatecomponentComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
