module Oops

  require 'oops/base_error'
  require 'oops/registry'
  
  class InvalidResource < Oops::BaseError
    http_status :unprocessable_entity
    error_name  :invalid_resource
    
    # Errors are ActiveModel Errors
    attr_reader :errors
    
    def initialize(errors, *args)
      @errors = errors
      super *args
    end
    
    def context
      super.tap do |ctx|
        extras            = (ctx[:metadata] ||= {})
        extras[:messages] = errors.to_hash if errors
      end
    end
    
    Registry.add self
    
  end
end
