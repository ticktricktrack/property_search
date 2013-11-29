require 'homeflow/api'

Homeflow::API.configure do |config|
  config.source = 'http://index1.homeflow.co.uk'
  config.api_key = "7ea9bbb0771dd16679d20c9b27a0e97c"
end

HF_IMAGE_SERVER = "http://mr0.homeflow.co.uk/"