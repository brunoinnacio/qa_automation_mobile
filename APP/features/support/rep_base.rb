require "appium_lib"
require "em/pure_ruby"

def caps
  desired_caps = {
    :caps => {
      :sessionName => 'Automation test session',
      :sessionDescription => '',
      :deviceOrientation => 'portrait',
      :captureScreenshots => true,
      :app => (File.join(File.dirname(__FILE__), "Fleury.apk")),
      :deviceName => 'ee9f6822',
      :platformName => 'Android',
      :platformVersion => '8'
    },
    :appium_lib => {
      
        :server_url => 'http://127.0.0.1:4723/wd/hub'
    }
  }
  end

Appium::Driver.new(caps, true )
Appium.promote_appium_methods Object
