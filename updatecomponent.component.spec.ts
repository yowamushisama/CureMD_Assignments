import { ComponentFixture, TestBed } from '@angular/core/testing';

import { UpdatecomponentComponent } from './updatecomponent.component';

describe('UpdatecomponentComponent', () => {
  let component: UpdatecomponentComponent;
  let fixture: ComponentFixture<UpdatecomponentComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [UpdatecomponentComponent]
    });
    fixture = TestBed.createComponent(UpdatecomponentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
