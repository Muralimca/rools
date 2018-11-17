# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rools/version'

Gem::Specification.new do |spec|
  spec.name          = "rools"
  spec.version       = Rools::ROOLS_VERSION
  spec.authors = 'Sam Smoot', 'Scott Bauer', 'Pat Cappelaere'
  spec.email = 'ssmoot@gmail.com; bauer.mail@gmail.com cappelaere@gmail.com'
  spec.summary = "A Rules Engine written in Ruby"
  spec.description = "Can be used for program-flow, ideally suited to processing applications"
  spec.homepage      = ""


  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
