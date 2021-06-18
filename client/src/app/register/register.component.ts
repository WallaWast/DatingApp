import { Component, EventEmitter, OnInit, Output } from '@angular/core';
import {
  AbstractControl,
  FormBuilder,
  FormGroup,
  FormControl,
  ValidatorFn,
  Validators,
} from '@angular/forms';
import { Router } from '@angular/router';
import { Observable, of } from 'rxjs';
import { map, switchMap } from 'rxjs/operators';
import { AccountService } from '../_services/account.service';

import { GeoDbService } from 'wft-geodb-angular-client';
import { PlaceDetails } from 'wft-geodb-angular-client/lib/model/place-details.model';
import { PlaceSummary } from 'wft-geodb-angular-client/lib/model/place-summary.model';
import { GeoResponse } from 'wft-geodb-angular-client/lib/model/geo-response.model';
import { AutoSuggestConstants } from '../_models/autosuggest-constants.class';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css'],
})
export class RegisterComponent implements OnInit {
  @Output() cancelRegister = new EventEmitter();
  registerForm: FormGroup;
  maxDate: Date;
  validationErrors: string[] = [];
  private MIN_CITY_POPULATION = 40000;
  cityControl: FormControl;
  selectedCity: PlaceDetails;
  filteredCities: Observable<PlaceSummary[]>;

  constructor(
    private accountService: AccountService,
    private fb: FormBuilder,
    private geoDbService: GeoDbService,
    private router: Router,    
  ) {}

  ngOnInit(): void {
    this.initializarForm();
    this.maxDate = new Date();
    this.maxDate.setFullYear(this.maxDate.getFullYear() - 18);
  }

  initializarForm() {
    this.cityControl = new FormControl();
    this.registerForm = this.fb.group({
      gender: ['male'],
      username: ['', Validators.required],
      knownAs: ['', Validators.required],
      email: [
        '',
        [
          Validators.required,
          Validators.email,
          Validators.pattern('^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,4}$'),
        ],
      ],
      dateOfBirth: ['', Validators.required],
      city: ['', Validators.required],
      country: ['', Validators.required],
      password: [
        '',
        [Validators.required, Validators.minLength(4), Validators.maxLength(8)],
      ],
      confirmPassword: [
        '',
        [Validators.required, this.matchValues('password')],
      ],
    });

    this.registerForm.controls.password.valueChanges.subscribe(() => {
      this.registerForm.controls.confirmPassword.updateValueAndValidity();
    });

    this.filteredCities = this.cityControl.valueChanges.pipe(
      switchMap((cityNamePrefix: string) => {
        let citiesObservable: Observable<PlaceSummary[]> = of([]);

        if (
          cityNamePrefix &&
          cityNamePrefix.length >= AutoSuggestConstants.MIN_INPUT_LENGTH
        ) {
          citiesObservable = this.geoDbService
            .findPlaces({
              namePrefix: cityNamePrefix,
              minPopulation: this.MIN_CITY_POPULATION,
              types: ['CITY'],
              sortDirectives: ['-population'],
              limit: AutoSuggestConstants.MAX_SUGGESTIONS,
              offset: 0,
            })
            .pipe(
              map(
                (response: GeoResponse<PlaceSummary[]>) => {
                  return response.data;
                },

                (error: any) => console.log(error)
              )
            );
        }

        return citiesObservable;
      })
    );
  }

  matchValues(matchTo: string): ValidatorFn {
    return (control: AbstractControl) => {
      return control?.value === control?.parent?.controls[matchTo].value
        ? null
        : { isMatching: true };
    };
  }

  register() {
    this.accountService.register(this.registerForm.value).subscribe(
      () => {
        this.router.navigateByUrl('/members');
      },
      (error) => {
        this.validationErrors = error;
      }
    );
  }

  cancel() {
    this.cancelRegister.emit(false);
  }

  getCityDisplayName(city: PlaceSummary) {
    if (!city) {
      return null;
    }

    let name = city.name;

    if (city.region) {
      name += ', ' + city.region;
    }

    name += ', ' + city.country;

    return name;
  }

  onCitySelected(city: PlaceSummary) {
    //this.geoDbService
    // .findPlaces({
    //  placeId: city.id,
    // })
    //.subscribe((response: GeoResponse<PlaceDetails>) => {
    //this.registerForm.controls.city = city.name;
    console.log(city);
    //});
  }
}
