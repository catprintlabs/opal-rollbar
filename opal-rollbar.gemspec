
# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("../lib/", __FILE__)

require "opal-rollbar/version"

Gem::Specification.new do |spec|
  spec.name          = "opal-rollbar"
  spec.version       = OpalRollbar::VERSION
  spec.authors       = %w[jmenaguale22 adamcreekroad]
  spec.email         = %w[jasonm@catprint.com adam@adam-george.com]

  spec.summary       = "Allows for Opal client-side Rollbar"
  spec.homepage      = "https://github.com/catprintlabs/opal-rollbar"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "opal", ">= 1.0.0"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rubocop", "~> 0.51.0"
end
