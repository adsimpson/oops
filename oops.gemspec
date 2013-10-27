lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'oops/version'

Gem::Specification.new do |gem|
  gem.name        = 'oops'
  gem.version     = Oops::VERSION
  gem.date        = '2013-10-01'
  gem.summary     = "Error handling for REST /JSON APIs"
  gem.description = "Blah Blah Blah"
  gem.authors     = ["Adam Simpson"]
  gem.email       = 'ad_simpson@somewhere.com'
  gem.files       = Dir.glob("{lib}/**/*")
  gem.require_path = 'lib'
  gem.homepage    =
    'http://rubygems.org/gems/oops'
  gem.license       = 'MIT'
  
end