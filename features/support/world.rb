module DomainWorld
  def people
    @people ||= {}
  end

  def messages_shouted_by
    @messages_shouted_by ||= {}
  end

  def messages_heard_by(name)
    people[name].messages_heard
  end

  def sean_shout(message)
    people['Sean'].shout(message)
    messages_shouted_by['Sean'] ||= []
    messages_shouted_by['Sean'] << message
  end
end

module WebWorld

end

if ENV['shouty_test_depth'] == "web"
  require 'capybara/cucumber'
  Capybara.default_driver = :selenium
  # Before do
  #   Capybara.app = WebApp.new(nil)
  # end
  # World(WebWorld)
else
  # World(DomainWorld)
end
