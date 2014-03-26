$:.push File.expand_path("../lib", __FILE__)
require "orderbot/version"

Gem::Specification.new do |s|
  s.name        = "orderbot"
  s.version     = OrderBot::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Roman Lupiychuk"]
  s.email       = ["roman@slatestudio.com"]
  s.homepage    = "https://github.com/slate-studio/salt-payment"
  s.summary     = ""

  s.files = %w(README.md LICENSE) + Dir["lib/**/*", "app/**/*"]
  s.license = 'MIT'

  s.require_paths = ["lib"]

  s.add_dependency "railties", [">= 3.1"]
  s.add_dependency "sprockets-rails"
  s.add_dependency "savon", ["~> 2.3.0"]

  s.add_development_dependency "uglifier"
end
