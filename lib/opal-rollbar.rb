# rubocop:disable Naming/FileName

# frozen_string_literal: true

require_relative "opal-rollbar/version"

if RUBY_ENGINE == "opal"
  require_relative "opal-rollbar/rollbar"
  require_relative "opal-rollbar/rollbar/rollbar_wrapper.rb"

  raise "No Rollbar available" if `Opal.global.Rollbar === undefined`
else
  require "opal"

  Opal.append_path File.expand_path("../", __FILE__).untaint
end
