import { WebPlugin } from '@capacitor/core';

import type { AzureNotificationsPlugin } from './definitions';

export class AzureNotificationsWeb
  extends WebPlugin
  implements AzureNotificationsPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
