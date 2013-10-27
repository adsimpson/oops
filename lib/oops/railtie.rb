require "rails/railtie"

module Oops
  class Railtie < ::Rails::Railtie
    config.after_initialize do |app|
      # Any other routes are handled here (as ActionDispatch prevents RoutingError from hitting ApplicationController::rescue_action).
      app.routes.append { match "*unmatched_route", :to => "application#routing_error!", :via => :all }
    end
  end
end