export interface AzureNotificationsPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
