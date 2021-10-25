class JourneysController < ApplicationController
  # before_action :check_for_login

  def index
  @journeys = Journey.all
  end

  def show
  @journey = Journey.find params[:id]
  end

  def new
    @journey = Journey.new
  end

  def create
    journey = Journey.create journey_params
   @current_user.journeys << journey
    redirect_to root_path
  end

def edit
  @journey = Journey.find params[:id]
end

def update
  journey = Journey.find params[:id]
journey.update journey_params
  redirect_to journey
end


 def destroy
journey = Journey.find params[:id]
  journey.destroy
   redirect_to journey_path
end

  private
  def journey_params
    params.require(:journey).permit(:name, :countries, :departure_date, :return_date, :user_id, :image)

  end
end
