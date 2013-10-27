module Oops
  
  module ActiveRecordErrors
    
    extend ActiveSupport::Concern
    
    included do 
      map_error! ActiveRecord::SerializationTypeMismatch, Oops::BadRequest
      map_error! ActiveRecord::RecordNotFound, Oops::NotFound
      map_error! ActiveRecord::RecordNotUnique, Oops::Conflict
      map_error!(ActiveRecord::RecordNotSaved) { Oops::InvalidResource.new nil }
      map_error! ActiveRecord::RecordInvalid do |exception|
        Oops::InvalidResource.new exception.record.errors
      end
    end
    
  end

end