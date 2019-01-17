class Api::V1::UsersController < ActionController::API

  def index
    @challenges = Challenge.all
    # byebug
    render json: @challenges
  end

  def show
    
    @challenge= Challenge.find(params[:id])
    render json: @challenge
  end

  def create
    @challenge = Challenge.create(name: params[:name], stare_date: params[:start_date], end_date: params[:end_date], close_date: params[:close_date], owner_id: params[:owner_id])
    render json: @challenge
  end

  def update
    @challenge = Challenge.find(params[:id])
    @challenge.update(challenge_params)
  end

  private

  def challenge_params
    params.require(:challenge).permit(:name, :start_date, :end_date, :close_date, :owner_id)
  end
end
