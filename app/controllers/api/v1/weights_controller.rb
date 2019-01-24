class Api::V1::WeightsController < ActionController::API

  def index
    # byebug
    @user= User.find(params[:user_id])
    @weights = @user.weights
    # byebug
    render json: @weights
  end

  def show
    @user= User.find(params[:user_id])
    @weight = @user.weights.find(:weight_id)
    render json: @weight
  end

  def create
    @user= User.find(params[:user_id])
    @weight = Weight.create(weight: params[:weight], date: params[:date], user_id: params[:user_id])
    # byebug
    render json: @user.weights
  end

  def update
    @user = User.find(params[:user_id])
    @weight = @user.weights.find(params[:weight_id])
    @user.update(weight_params)
  end

  private

  def user_params
    params.require(:weight).permit(:weight, :date, :user_id)
  end
end
