class MembersController < ApplicationController
  helper_method :current_user, :logout


  def index
    logged_in?
  end

  def show
    @member = User.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def logged_in?

      if !session[:user_id]
        redirect_to new_sessions_path
      elsif !current_user.nil?
        ap "redirection"
        redirect_to member_path(id: session[:user_id])
      end
    end

    def current_user
      @current_user ||= User.find_by_id(session[:user_id])
    end

    def logout
      redirect_to session_path, method: :destroy
    end
end
