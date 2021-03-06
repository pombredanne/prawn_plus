$:.push File.expand_path("../lib", __FILE__)
require "prawn_plus/version"

Gem::Specification.new do |spec|
  spec.name                  = "prawn_plus"
  spec.version               = PrawnPlus::VERSION
  spec.platform              = Gem::Platform::RUBY
  spec.authors               = ["Brooke Kuhlmann"]
  spec.email                 = ["brooke@alchemists.io"]
  spec.homepage              = "https://github.com/bkuhlmann/prawn_plus"
  spec.summary               = "Enhances default Prawn PDF functionality."
  spec.description           = "Enhances default Prawn PDF functionality (which includes PDF template handling/rendering)."
  spec.license               = "MIT"

  if ENV["RUBY_GEM_SECURITY"] == "enabled"
    spec.signing_key = File.expand_path("~/.ssh/gem-private.pem")
    spec.cert_chain = [File.expand_path("~/.ssh/gem-public.pem")]
  end

  case Gem.ruby_engine
    when "ruby"
      spec.add_development_dependency "sqlite3"
      spec.add_development_dependency "pry-byebug"
      spec.add_development_dependency "pry-stack_explorer"
    when "jruby"
      spec.add_development_dependency "activerecord-jdbcsqlite3-adapter"
      spec.add_development_dependency "pry-nav"
    else
      raise RuntimeError.new("Unsupported Ruby Engine!")
  end

  spec.add_dependency "rails", "~> 4.1"
  spec.add_dependency "prawn", "~> 1.2"
  spec.add_dependency "prawn-table", "~> 0.1"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-remote"
  spec.add_development_dependency "pry-rescue"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "rb-fsevent" # Guard file events for OSX.
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "terminal-notifier"
  spec.add_development_dependency "terminal-notifier-guard"
  spec.add_development_dependency "codeclimate-test-reporter"

  spec.files            = Dir["lib/**/*", "vendor/**/*"]
  spec.extra_rdoc_files = Dir["README*", "LICENSE*"]
  spec.require_paths    = ["lib"]
end
