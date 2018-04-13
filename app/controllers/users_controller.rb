class UsersController < ApplicationController
  include Devise::Controllers::Helpers
  before_action :authenticate_user!
  before_action :admin_only, :except => :show
  def show
    @user = User.find(params[:id])
    # unless current_user.admin?
      # unless @user == current_user
        redirect_to root_path, :alert => "Access denied."
      # end
    #end
  end
  
  def index
    @users = User.all
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(secure_params)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params) #change new to create!
    if @user.save
      # Handle a successful save.
      log_in @user
      flash[:success] = "Welcome to the Self Evaluation System!"
      redirect_to @user
      # We can also redirect to home page with a success message
    else
      render 'new'
    end
  end
  
  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path, :notice => "User deleted."
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end  
    
    def admin_only
      # unless current_user.admin?
        redirect_to root_path, :alert => "Access denied."
      # end
    end
    
    def secure_params
      params.require(:user).permit(:role)
    end
end
