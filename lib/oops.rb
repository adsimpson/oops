require 'oops/version'
require 'oops/configuration'
require 'oops/railtie'
require 'oops/base_error'
require 'oops/invalid_resource'
require 'oops/registry'
require 'oops/active_record'
require 'oops/action_controller'
require 'oops/controller_additions'

module Oops
  
   mattr_accessor :config
   @@config = Configuration.new

   def self.configure
     yield @@config
   end
  
end

