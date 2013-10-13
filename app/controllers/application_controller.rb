require 'awesome_print'
require 'navgate'
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :make_menu
 def make_menu
  @navgate = NAVGATE
  @selected ||= @navgate.select(params)
 end
end
