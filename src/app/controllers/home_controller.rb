# This controller is the main page controller
# This will route to the main page of the application
class HomeController < ApplicationController
  # Route: GET /
  # This will display the main page
  # This will also allow for educators to search for lesson plans
  def index
    @search = home_permitted_params[:search]
    if @search
        @lesson_plans = LessonPlan.where("name LIKE ?", "%#{@search}%").all
    else
      @lesson_plans = []
    end
  end

  private
  # This will allow trusted params for the home controller
  def home_permitted_params
    params.permit(:search, :commit)
  end
end
