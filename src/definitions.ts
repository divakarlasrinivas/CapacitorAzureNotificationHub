export interface AzureNotificationsPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  initialize(options: any): Promise<boolean>;
}
