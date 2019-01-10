class Api::V1::UsersController < ActionController::API

  def index
    @users = User.all
    # byebug
    render json: @users
  end

  def show
    @user= User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.create(firstname: params[:firstname], lastname: params[:lastname], password: params[:password], email: params[:email], telephone: params[:telephone])
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :password, :email, :telephone)
  end
end
