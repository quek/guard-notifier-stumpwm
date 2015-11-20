# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/notifier/stumpwm'

Gem::Specification.new do |spec|
  spec.name          = "guard-notifier-stumpwm"
  spec.version       = Guard::Notifier::Stumpwm::VERSION
  spec.authors       = ["TAHARA Yoshinori"]
  spec.email         = ["read.eval.print@gmail.com"]
  spec.summary       = 'Send User Notifications on StumpWM'
  spec.homepage      = 'https://github.com/quek/guard-notifier-stumpwm'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'guard'

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
