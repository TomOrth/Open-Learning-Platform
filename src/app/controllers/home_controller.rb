class HomeController < ApplicationController
  def index
    @search = home_permitted_params[:search]
    if @search
        @lesson_plans = LessonPlan.where("name LIKE ?", "%#{@search}%").all
    else
      @lesson_plans = []
    end
  end

  private
  def home_permitted_params
    params.permit(:search, :commit)
  end
end
