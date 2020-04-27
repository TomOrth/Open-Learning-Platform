# Project Name: Open Learning Platform
# Descriptin: Platform for K-12 educators to upload lesson plans
# Filename: home_controller.rb
# Description: A controller for the homepage
# Last date modified: 4/18/2020

# Code added by Thomas Orth. Source of where the "like" statement was found is given

# This controller is the main page controller
# This will route to the main page of the application
class HomeController < ApplicationController
  # Route: GET /
  # This will display the main page
  # This will also allow for educators to search for lesson plans
  def index
    @topics = Topic.names + ["All"]
    @topics = @topics.map{|topic| [topic, topic]}
    @search = home_permitted_params[:search]
    @topic = home_permitted_params[:topic]
    if @search
        if @topic == "All"
          # https://stackoverflow.com/questions/9708409/rails-how-to-find-by-a-field-containing-a-certain-string
          @lesson_plans = LessonPlan.where("name LIKE ?", "%#{@search}%").all
        else
          @lesson_plans = LessonPlan.where("name LIKE ?", "%#{@search}%").where(topic: @topic).all
        end
    else
      @lesson_plans = []
    end
  end

  private
  # This will allow trusted params for the home controller
  # @return [Hash] The parameters that can be sent to the controller
  def home_permitted_params
    params.permit(:search, :commit, :topic)
  end
end
