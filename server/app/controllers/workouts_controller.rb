class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.pluck(:plan)
    render json: {programs: @workouts}, status: :ok
  end
end