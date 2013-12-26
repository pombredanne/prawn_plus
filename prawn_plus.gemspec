$:.push File.expand_path("../lib", __FILE__)
require "prawn_plus/version"

Gem::Specification.new do |s|
  s.name									= "prawn_plus"
  s.version								= PrawnPlus::VERSION
  s.platform							= Gem::Platform::RUBY
  s.author								= "Brooke Kuhlmann"
  s.email									= "brooke@redalchemist.com"
  s.homepage							= "http://www.redalchemist.com"
  s.summary								= "Enhances default Prawn PDF functionality."
  s.description						= "Enhances default Prawn PDF functionality (which includes PDF template handling/rendering)."
	s.license								= "MIT"

  unless ENV["TRAVIS"]
    s.signing_key = File.expand_path("~/.ssh/gem-private.pem")
    s.cert_chain  = ["gem-public.pem"]
  end

	s.required_ruby_version = "~> 2.0"
	s.add_dependency "rails", "~> 4.0"
	s.add_dependency "prawn", "~> 0.12"
  s.add_development_dependency "rake"
  s.add_development_dependency "pry"
  s.add_development_dependency "pry-byebug"
  s.add_development_dependency "pry-rescue"
  s.add_development_dependency "pry-stack_explorer"
  s.add_development_dependency "pry-vterm_aliases"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "rb-fsevent" # Guard file events for OSX.
  s.add_development_dependency "rb-inotify" # Guard file events for Linux.
  s.add_development_dependency "guard-rspec"

  s.files            = Dir["lib/**/*", "vendor/**/*"]
  s.extra_rdoc_files = Dir["README*", "LICENSE*"]
  s.require_paths    = ["lib"]
end
