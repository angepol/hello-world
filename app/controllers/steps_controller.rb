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
    step = Step.create work_params
    redirect_to step
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
    redirect_to steps_path
  end

  private
  def step_params
    params.require(:step).permit(:title, :year, :medium, :style, :image, :journey_id)
  end
end
