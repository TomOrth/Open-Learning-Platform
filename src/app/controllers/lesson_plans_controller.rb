# Project Name: Open Learning Platform
# Descriptin: Platform for K-12 educators to upload lesson plans
# Filename: lesson_plans_controller.rb
# Description: A controller for the lesson plans of the site
# Last date modified: 4/18/2020 

# Majority of code added by rails scaffold
# before_action, educator_id (Line 34), and permitted params implemented/changed by Thomas Orth

# This controller will handle different actions for a +LessonPlan+
class LessonPlansController < ApplicationController
  before_action :set_lesson_plan, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_educator!
  # GET /lesson_plans/:id where :id is the lesson plan id
  # This will allow to view the individiual lesson plan
  def show
  end

  # GET /lesson_plans/new
  # This will create a new lesson plan with a title, description, and files
  def new
    @lesson_plan = LessonPlan.new
  end

  # GET /lesson_plans/1/edit
  # This will allow educators to edit their lesson plan
  def edit
  end

  # POST /lesson_plans
  # This will create a new lesson plan
  def create
    @lesson_plan = LessonPlan.new(lesson_plan_params)
    @lesson_plan.educator_id = current_educator.id
    respond_to do |format|
      if @lesson_plan.save
        format.html { redirect_to current_educator, notice: 'Lesson plan was successfully created.' }
        format.json { render :show, status: :created, location: @lesson_plan }
      else
        format.html { render :new }
        format.json { render json: @lesson_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_plans/:id where :id is the lesson plan id
  # This will update a lesson plan
  def update
    respond_to do |format|
      if @lesson_plan.update(lesson_plan_params)
        format.html { redirect_to current_educator, notice: 'Lesson plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson_plan }
      else
        format.html { render :edit }
        format.json { render json: @lesson_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_plans/:id where :id is the lesson plan id
  # This will delete a lesson plan
  def destroy
    @lesson_plan.destroy
    respond_to do |format|
      format.html { redirect_to current_educator, notice: 'Lesson plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_plan
      @lesson_plan = LessonPlan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    # @return [Hash] The param hash that is allowed to be sent to the controller
    def lesson_plan_params
      params.require(:lesson_plan).permit(:name, :description, :topic, contents: [])
    end
end
