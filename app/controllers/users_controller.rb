class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    #debugger
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.create!(user_params) #change new to create!
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
  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end  
end
