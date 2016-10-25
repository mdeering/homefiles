require 'phillumeny'

RSpec.configure do |config|
  config.include Phillumeny::FactoryGirl, type: :model
end
