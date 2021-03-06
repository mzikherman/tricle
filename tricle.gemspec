# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tricle/version'

Gem::Specification.new do |spec|
  spec.name          = "tricle"
  spec.version       = Tricle::VERSION
  spec.authors       = ["Aidan Feldman"]
  spec.email         = ["aidan.feldman@gmail.com"]
  spec.description   = %q{Automated metrics reporting via email}
  spec.summary       = %q{A datastore-agnostic mailer where you can define custom metrics, where you can query SQL, MongoDB, external APIs, etc. to generate the stats you need.  It can be used within a larger project (e.g. Rails), or standalone.}
  spec.homepage      = "https://github.com/artsy/tricle"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "actionmailer", ">= 3.2"
  spec.add_dependency "activesupport", ">= 3.2"
  spec.add_dependency "mail_view", "~> 2.0"
  spec.add_dependency "nokogiri", "~> 1.6"
  spec.add_dependency "premailer", "~> 1.7"
  spec.add_dependency "rack", "~> 1.1"
end
