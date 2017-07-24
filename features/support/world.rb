if ENV['env'] == "web"
  require 'capybara/cucumber'
  Capybara.default_driver = :selenium
end
