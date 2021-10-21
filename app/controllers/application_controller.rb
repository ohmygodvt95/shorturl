class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ApplicationHelper
  a = 5
end
