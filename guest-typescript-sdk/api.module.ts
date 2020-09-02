import { NgModule, ModuleWithProviders, SkipSelf, Optional } from '@angular/core';
import { Configuration } from './configuration';
import { HttpClient } from '@angular/common/http';


import { AuditLogsService } from './api/auditLogs.service';
import { CapacitiesService } from './api/capacities.service';
import { EmailTemplatesService } from './api/emailTemplates.service';
import { GuestAlertsService } from './api/guestAlerts.service';
import { HostsService } from './api/hosts.service';
import { InvitesService } from './api/invites.service';
import { LocationsService } from './api/locations.service';
import { PackagesService } from './api/packages.service';
import { RegistrationsService } from './api/registrations.service';
import { SigninsService } from './api/signins.service';
import { UsersService } from './api/users.service';
import { WatchlistsService } from './api/watchlists.service';

@NgModule({
  imports:      [],
  declarations: [],
  exports:      [],
  providers: [
    AuditLogsService,
    CapacitiesService,
    EmailTemplatesService,
    GuestAlertsService,
    HostsService,
    InvitesService,
    LocationsService,
    PackagesService,
    RegistrationsService,
    SigninsService,
    UsersService,
    WatchlistsService ]
})
export class ApiModule {
    public static forRoot(configurationFactory: () => Configuration): ModuleWithProviders {
        return {
            ngModule: ApiModule,
            providers: [ { provide: Configuration, useFactory: configurationFactory } ]
        };
    }

    constructor( @Optional() @SkipSelf() parentModule: ApiModule,
                 @Optional() http: HttpClient) {
        if (parentModule) {
            throw new Error('ApiModule is already loaded. Import in your base AppModule only.');
        }
        if (!http) {
            throw new Error('You need to import the HttpClientModule in your AppModule! \n' +
            'See also https://github.com/angular/angular/issues/20575');
        }
    }
}
