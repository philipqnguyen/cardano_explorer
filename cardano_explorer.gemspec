lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cardano_explorer/version'

Gem::Specification.new do |s|
  s.name        = 'cardano_explorer'
  s.version     = CardanoExplorer::VERSION
  s.summary     = 'A Ruby API wrapper to query the Cardano SL Explorer'
  s.description = 'A Ruby API wrapper to query the Cardano SL Explorer'
  s.license     = 'MIT'
  s.authors     = ['Philip Nguyen']
  s.email       = 'supertaru@gmail.com'
  s.files       = `git ls-files lib README.md CHANGELOG.md LICENSE`.split("\n")
  s.homepage    = 'https://github.com/philipqnguyen/cardano_explorer'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 2.2.2'

  s.add_runtime_dependency 'httparty', '~> 0.15.0'

  s.add_development_dependency 'pry'
  s.add_development_dependency 'rake', '~> 12.3'
  s.add_development_dependency 'rspec', '~> 3.7'
  s.add_development_dependency 'webmock', '~> 3.2'
end
