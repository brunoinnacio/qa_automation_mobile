Before do
  $driver.start_driver
end

After do
  sleep 3
  $driver.driver_quit
  $logger.info('Teste finalizado')
end