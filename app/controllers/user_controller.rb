class UserController < ApplicationController

  def new
     @user = User.new
  end

  def create
     @user = User.new(user_params)

     if @user.save
       flash[:notice] = "Welcome to ToDo List #{@user.username}!"
       redirect_to root_path
     else
       flash.now[:alert] = "There was an error creating your account. Please try again."
       render :new
     end
   end


  private

   def user_params
    params.require(:user).permit(:username, :email, :password)
   end
end
