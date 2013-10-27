module Oops
  
  module ActionControllerErrors
    extend ActiveSupport::Concern
    
    included do 
      map_error! ActionController::ParameterMissing, Oops::BadRequest
      map_error! ActionController::RoutingError, Oops::NotFound
    end
    
  end

end