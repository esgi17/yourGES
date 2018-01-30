class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #self.abstract_class = true
end
