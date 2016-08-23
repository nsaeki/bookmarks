class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_back_or_to(:users, success: 'Login successful')
    else
      flash.now[:warning] = 'Invalid email/password combination'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(login_path, success: 'Logged out!')
  end
end
