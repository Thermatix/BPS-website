require 'awesome_print'
class ApplicationController < ActionController::Base
  include NavGateHelpers
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :render_navigation, :flash_type ,:ap
  before_filter :make_menu


  def flash_type
    if flash[:error]
      "error"
    elsif flash[:notice]
      "notice"
    elsif flash[:alert]
      "alert"
    end
  end

end
