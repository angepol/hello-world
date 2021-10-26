class StepsController < ApplicationController
  def index
    @steps = Step.all
  end
  def show
    @step = Step.find params[:id]
  end
  def new
    @step = Step.new
  end

  def create
    step = Step.create step_params
    Journey.find_by(id: step.journey_id).steps << step
     # params[:id], :location => params[:location], :story => params[:story], :date => params[:date], :image => params[:image]
    redirect_to journey_path(step.journey_id)
  end

  def edit
    @step = Step.find params[:id]
  end

  def update
    step = Step.find params[:id]
    step.update step_params
    redirect_to step
  end

  def destroy
    step = Step.find params[:id]
    step.destroy
    redirect_to step.journey
  end

  private
  def step_params
    params.require(:step).permit(:location, :user_id, :journey_id, :story, :date, :image)
  end
end
