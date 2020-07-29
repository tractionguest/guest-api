export * from './auditLogs.service';
import { AuditLogsService } from './auditLogs.service';
export * from './capacities.service';
import { CapacitiesService } from './capacities.service';
export * from './emailTemplates.service';
import { EmailTemplatesService } from './emailTemplates.service';
export * from './guestAlerts.service';
import { GuestAlertsService } from './guestAlerts.service';
export * from './hosts.service';
import { HostsService } from './hosts.service';
export * from './invites.service';
import { InvitesService } from './invites.service';
export * from './locations.service';
import { LocationsService } from './locations.service';
export * from './registration.service';
import { RegistrationService } from './registration.service';
export * from './signins.service';
import { SigninsService } from './signins.service';
export * from './users.service';
import { UsersService } from './users.service';
export * from './watchlists.service';
import { WatchlistsService } from './watchlists.service';
export const APIS = [AuditLogsService, CapacitiesService, EmailTemplatesService, GuestAlertsService, HostsService, InvitesService, LocationsService, RegistrationService, SigninsService, UsersService, WatchlistsService];
