import { TestBed } from '@angular/core/testing';

import { SpotServiceTs } from './spot.service.ts';

describe('SpotServiceTs', () => {
  let service: SpotServiceTs;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(SpotServiceTs);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
