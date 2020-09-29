# frozen_string_literal: true

require 'appium_lib'
require 'cucumber'
require 'selenium-webdriver'

$wait = Selenium::WebDriver::Wait.new(timeout: 60)


def load_appium_configuration(platform)
  #dir = "#{Dir.pwd}/config/#{platform}/appium.txt"
  dir = "#{Dir.pwd}/config/#{platform}/appium.txt"
  puts "### PLATAFORM #{platform}"
  puts "### CARREGANDO DIR #{dir}"
  Appium.load_appium_txt file: File.expand_path(dir, __FILE__), verbose: true
end

#env = ENV['PLATFORM_NAME'].downcase
env = 'android'

case env
when 'android'
  caps = load_appium_configuration(env)
  caps[:appium_lib][:export_session] = true
when 'ios'
  puts '### RUN IOS'
  caps = load_appium_configuration(env)
  puts caps
  caps[:appium_lib][:export_session] = true
else
  raise("Plataforma não suportada #{ENV['PLATFORM_NAME']}")
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
