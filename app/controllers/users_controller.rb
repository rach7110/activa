class UsersController < ApplicationController
  def new
	@user = User.new
  end

  def show
	  @user = User.find(params[:id])
  end

  def create
	  @user = User.new(params[:user])
	  # @user[:email].downcase!
    # @user.email.downcase!
    if @user.save
		  flash[:success] = "Welcome to my awesome app!"
		  redirect_to @user
	  else
		  render 'new'
	  end
  end

  def index
	@users = User.all
  end
end
