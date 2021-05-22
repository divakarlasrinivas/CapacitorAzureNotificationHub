import { registerPlugin } from '@capacitor/core';

import type { AzureNotificationsPlugin } from './definitions';

const AzureNotifications = registerPlugin<AzureNotificationsPlugin>(
  'AzureNotifications',
  {
    web: () => import('./web').then(m => new m.AzureNotificationsWeb()),
  },
);

export * from './definitions';
export { AzureNotifications };
