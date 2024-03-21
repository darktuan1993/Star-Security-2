import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterLink, RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './feature/home/home.component';
import { AboutComponent } from './feature/about/about.component';
import { OurBusinessComponent } from './feature/our-business/our-business.component';
import { CareersWithUsComponent } from './feature/careers-with-us/careers-with-us.component';
import { JobsDetailComponent } from './feature/jobs-detail/jobs-detail.component';

const routes: Routes = [
  {
    path:'user',
    children: [
      {
        path:'home',
        component: HomeComponent,
        data: { title: 'Home Page' },
        pathMatch: 'full',
      },
      {
        path:'about-us',
        component: AboutComponent,
        data: { title: 'About Us' },
        pathMatch: 'full',
      },
      {
        path:'services',
        component: OurBusinessComponent,
        data: { title: 'Our Business' },
        pathMatch: 'full'
      },
      {
        path:'careers-with-us',
        component: CareersWithUsComponent,
        data: { title: 'Careers With Us' },
        pathMatch: 'full'
      },
      {
        path:'jobs-details',
        component: JobsDetailComponent,
        data: { title: 'Jobs Details' },
        pathMatch: 'full'
      },
      {
        path:'jobs-list',
        component: JobsDetailComponent,
        data: { title: 'Jobs List' },
        pathMatch: 'full'
      }
    ]
  }
]

@NgModule({
  declarations: [],
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ClientRoutingModule { }
