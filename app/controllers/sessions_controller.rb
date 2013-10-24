class SessionsController < ApplicationController
  def new
    session[:user_id] = ""
    redirect_to login_path
  end

  def create
    user = User.find_by_email(params[:user_email])
    if !user
      redirect_to login_path, flash: { error: "Incorrect Member name or password" }
    else
      if user.password == params[:password]
        session[:user_id] = user.id
        redirect_to login_path
      else
        redirect_to login_path, flash: { error: "Incorrect Member name or password" }
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root, flash: { notice: 'You have been logged out' }
  end
end
