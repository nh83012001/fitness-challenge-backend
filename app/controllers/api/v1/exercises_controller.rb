class Api::V1::ExercisesController < ActionController::API

  def index
    # byebug
    @exercises = Exercise.all
    # byebug
    render json: @exercises
  end

  # def show
    # @exercise = @user.exercises.find(:exercise_id)
    # render json: @exercise
  # end

  def create
    @exercise = Exercise.create(name: params[:name])
    # byebug
    render json: @user.exercises
  end

  # def update
    # @user = User.find(params[:user_id])
    # @exercise = @user.exercises.find(params[:exercise_id])
    # @user.update(exercise_params)
  # end

  private

  def user_params
    params.require(:exercise).permit(:name)
  end
end
