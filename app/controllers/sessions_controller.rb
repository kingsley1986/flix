class SessionsController < ApplicationController
  def new
  end

  def create
    if user = User.authenticate(params[:email
    ], params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Welcome back, #{user.name}!"
      redirect_to(session[:intended_url] || user)
    else
      flash.now[:alert] = "Invalid email/password combination!"
      render :new
    end
  end
    
    def destroy
      session[:user_id] = nil
      redirect_to root_url, notice: "you're now signed out!"
    end
end
