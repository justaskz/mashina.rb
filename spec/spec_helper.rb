require 'bundler/setup'
Bundler.require(:test)

require 'mashina'

RSpec.configure do |config|
  config.around do |example|
    ClimateControl.modify(XDG_CONFIG_HOME: 'spec/fixtures/config') do
      example.run
    end
  end

  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    FactoryBot.find_definitions
  end

  config.mock_with :rspec do |c|
    c.verify_partial_doubles = true
  end
end
