# This is the controller for the +Educator+ user
# This is where actions related to the controller will be
class EducatorsController < ApplicationController
  # A group of before_actions
  # These will set the educator for routes and authenticate for the proper routes
  before_action :set_educator, only: [:update, :show]
  before_action :authenticate_educator!, skip: [:verify]
  before_action :authenticate_admin!, only: [:verify]

  # Route: GET /educator/:id where :id is the educator id
  # This will show certain UIs for the educator to do actions such upload verification paperwork, perform lesson plan operations
  def show
    @lesson_plans = LessonPlan.where(educator_id: current_educator.id).all
  end

  def update
    respond_to do |format|
      if @educator.update(educator_params)
        format.html { redirect_to @educator, notice: 'Paperwork successfully updated.' }
        format.json { render :show, status: :ok, location: @educator }
      else
        format.html { render :edit }
        format.json { render json: @educator.errors, status: :unprocessable_entity }
      end
    end
  end

  # Route: POST /educator/:id/verify
  # This route will make an educator verified now to perform operations
  def verify
    @educator = Educator.find(params[:id])
    respond_to do |format|
      if @educator.update(verified: true)
        format.html { redirect_to current_admin, notice: 'Educator successfully verified.' }
        format.json { render current_admin, status: :ok, location: @educator }
      else
        format.html { redirect_to current_admin }
        format.json { render json: @educator.errors, status: :unprocessable_entity }
      end
    end
  end
  private
  # This will set the educator for the relevant routes
  def set_educator
    @educator = current_educator
  end
  #This will allow certain params to work for this controller
  def educator_params
    params.require(:educator).permit(:paperwork)
  end
end
