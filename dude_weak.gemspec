# -*- encoding: utf-8 -*-
require File.expand_path('../lib/dude_weak/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Joe Sak"]
  gem.email         = ["joe@joesak.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "dude_weak"
  gem.require_paths = ["lib"]
  gem.version       = DudeWeak::VERSION

  gem.add_dependency 'activesupport'

  gem.add_development_dependency 'rspec'
end
